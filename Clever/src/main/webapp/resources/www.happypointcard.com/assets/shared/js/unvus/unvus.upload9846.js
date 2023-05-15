(function($) {

    unvus.upload = unvus.Class(/** @lends unvus.upload */{
        $init : function (settings) {
            this.settings = settings;
            this.infoList = [];
        },
        createUploader : function() {
            var $infoList = this.infoList;
            var $settings = this.settings;
            var max = this.settings.max;
            var formData = {
                refTarget: $settings.refTarget,
                refTargetType: $settings.refTargetType
            };
            if($settings.filters) {
                formData['filters'] = $settings.filters
            }
            $settings.target.fileupload({
                url: $settings.url,
                dataType: 'json',
                replaceFileInput: false,
                formData: formData,
                done: function (e, data) {
                    var bag = JSON.parse($settings.bagField.val());
                    console.log('js bag ', bag);
                    if($settings.keep === false || !bag[$settings.refTargetType]) {
                        bag[$settings.refTargetType] = [];
                    }


                    $.each(data.result.files, function (idx, file) {
                        console.log('$.each idx', idx);
                        console.log('____________');
                        console.log('data.result.files', data.result.files);
                        var index = bag[$settings.refTargetType].length;

                        if(file.error) {
                            $settings.target.val('');
                            // _.remove($infoList, {
                            //     subTopicId: stToDelete
                            // });
                            // $infoList.splice(-1, 1);
                            if(!!$settings.errorCallback) {
                                unvus.util.callFunctionByName($settings.errorCallback, file, data);
                            }else {
                                unvus.util.alert(file.error);
                            }
                        }else {

                            bag[$settings.refTargetType].push(
                                {
                                    savedName: file.name,
                                    displayName: $infoList[index].name,
                                    fileSize: $infoList[index].size,
                                    fileType: $infoList[index].type
                                }
                            );

                            $settings.bagField.val(JSON.stringify(bag));

                            if(!!$settings.doneCallback) {
                                unvus.util.callFunctionByName($settings.doneCallback, data);
                            }
                        }
                    });

                },
                fail: function (e, data) {
                    $infoList.splice(-1, 1);
                    unvus.util.alert('파일 업로드 중에 에러가 발생했습니다.');
                },
                change: function (e, data) {
                    if($settings.keep === false) {
                        $infoList = [];
                    }

                    console.log('change data.files', data.files);
                    if(data.files.length === 0) {
                        return;
                    }

                    // check file size
                    var hasDeleted = false;
                    if($settings.sizeLimit > 0) {
                        _.remove(data.files, function(file) {
                            var exceed = file.size > $settings.sizeLimit;
                            if(exceed) {
                                hasDeleted = true;
                            }
                            return exceed;
                        });
                    }

                    if(hasDeleted) {
                        var file = {
                            error: 'max size exceeded'
                        };
                        unvus.util.callFunctionByName($settings.errorCallback, file, data);
                    }

                    // check max qty
                    if(max > 0 && data.files.length + $infoList.length > max) {
                        data.files.splice(max - $infoList.length, (data.files.length + $infoList.length) - max);
                    }


                    if(!hasDeleted && data.files.length === 0) {
                        var file = {
                            error: 'max length'
                        };
                        unvus.util.callFunctionByName($settings.errorCallback, file, data);
                        return true;
                    }

                    $.each(data.files, function (index, file) {
                        console.log('file ' + index, data.files);
                        $infoList.push({
                            name: file.name,
                            size: file.size,
                            type: file.type
                        });
                    });

                    if(!!$settings.changeCallback) {
                        unvus.util.callFunctionByName($settings.changeCallback, formData, $infoList);
                    }
                }
            });
        },
        remove: function(index) {
            var bagField = this.settings.bagField;
            var bag = JSON.parse(bagField.val());
            bag[this.settings.refTargetType].splice(index, 1);

            bagField.val(JSON.stringify(bag));

            this.infoList.splice(index, 1);
        },
        getInfoList: function() {
            return this.infoList;
        }
    });


    $.fn.imcUpload = function(url) {
        var uploaders = [];
        $(this).each(function(idx, item) {

            var $this = $(item);


            var settings = {
                url: url,
                refTarget: $this.data('refTarget'),
                refTargetType: $this.data('refTargetType'),
                filters: $this.data('filters'),
                form: $this.closest('form'),
                changeCallback: $this.data('change-callback'),
                doneCallback: $this.data('done-callback'),
                errorCallback: $this.data('error-callback'),
                target: $this,
                max: 0,
                keep: false
            };

            if($this.data('keep') == true) {
                settings.keep = true;
            }

            if($this.data('max')) {
                settings.max = parseInt($this.data('max'), 10);
            }

            if($this.data('size-limit')) {
                settings.sizeLimit = parseInt($this.data('size-limit'), 10) * 1024 * 1024;
            }else {
                settings.sizeLimit = 0;
            }


            if(!!!settings.refTargetType) {
                settings.refTargetType = 'default';
            }

            if(!$('input[name=attachBag]', settings.form).exists()) {
                $('<input type="hidden"/>')
                    .attr('name', 'attachBag')
                    .attr('value', '{}').appendTo(settings.form);
            }
            settings.bagField = $('input[name=attachBag]', settings.form);

            var upload = new unvus.upload(settings);

            upload.createUploader();
            uploaders.push(upload);
        });

        return uploaders;
    };

})(jQuery);
