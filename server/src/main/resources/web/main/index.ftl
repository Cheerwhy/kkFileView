<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, user-scalable=yes, initial-scale=1.0"/>
    <title>kkFileView演示首页</title>
    <link rel="icon" href="./favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="css/viewer.min.css"/>
    <link rel="stylesheet" href="css/loading.css"/>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css"/>
    <link rel="stylesheet" href="bootstrap-table/bootstrap-table.min.css"/>
    <link rel="stylesheet" href="css/theme.css"/>
    <script type="text/javascript" src="js/jquery-3.6.1.min.js"></script>
    <script type="text/javascript" src="js/jquery.form.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="bootstrap-table/bootstrap-table.min.js"></script>
    <script type="text/javascript" src="js/base64.min.js"></script>
    <style>
        .alert {
            width: 50%;
        }
        #size{
            float:left;

        }
    </style>
    <#--  删除吗CSS样式 -->
    <#if deleteCaptcha >
        <style>
            .code{
                position: fixed;
                width: 300px;
                height: 200px;
                top: 50%;
                left: 50%;
                transform: translate(-50%,-50%);
                background-color: #F0FFF0;
                text-align: center;
                padding: 20px;
                z-index: 100002;
            }
            .close{
                margin-top: 20px;
            }
            .code-input{
                border: 1px solid #ccc;
                border-radius: 3px;
                width: 110px;
                height: 40px;
            }
            .code-input:focus{
                border-color: #66afe9;
                outline: 0;
                -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);
                box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6)
            }

        </style>
    </#if>
</head>

<body>

<!-- Fixed navbar -->
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="https://kkview.cn" target='_blank'>kkFileView</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="./index">首页</a></li>
                <li><a href="./integrated">接入说明</a></li>
                <li><a href="./record">版本发布记录</a></li>
                <li><a href="./sponsor">赞助开源</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container theme-showcase" role="main">
    <#--  接入说明  -->
    <div class="page-header">
        <h1>支持的文件类型</h1>
        我们一直在扩展支持的文件类型，不断优化预览的效果，如果您有什么建议，欢迎在kk开源社区留意反馈：<a target='_blank' href="https://t.zsxq.com/09ZHSXbsQ">https://t.zsxq.com/09ZHSXbsQ</a>。
    </div>
    <div >
        <ol>
            <li>支持 doc, docx, xls, xlsx, xlsm, ppt, pptx, csv, tsv, dotm, xlt, xltm, dot, dotx, xlam, xla, pages 等 Office 办公文档</li>
            <li>支持 wps, dps, et, ett, wpt 等国产 WPS Office 办公文档</li>
            <li>支持 odt, ods, ots, odp, otp, six, ott, fodt, fods 等OpenOffice、LibreOffice 办公文档</li>
            <li>支持 vsd, vsdx 等 Visio 流程图文件</li>
            <li>支持 wmf, emf 等 Windows 系统图像文件</li>
            <li>支持 psd, eps 等 Photoshop 软件模型文件</li>
            <li>支持 pdf ,ofd, rtf 等文档</li>
            <li>支持 xmind 软件模型文件</li>
            <li>支持 bpmn 工作流文件</li>
            <li>支持 eml 邮件文件</li>
            <li>支持 epub 图书文档</li>
            <li>支持 obj, 3ds, stl, ply, gltf, glb, off, 3dm, fbx, dae, wrl, 3mf, ifc, brep, step, iges, fcstd, bim 等 3D 模型文件</li>
            <li>支持 dwg, dxf, dwf, iges , igs, dwt, dng, ifc, dwfx, stl, cf2, plt  等 CAD 模型文件</li>
            <li>支持 txt, xml(渲染), md(渲染), java, php, py, js, css 等所有纯文本</li>
            <li>支持 zip, rar, jar, tar, gzip, 7z 等压缩包</li>
            <li>支持 jpg, jpeg, png, gif, bmp, ico, jfif, webp 等图片预览（翻转，缩放，镜像）</li>
            <li>支持 tif, tiff 图信息模型文件</li>
            <li>支持 tga 图像格式文件</li>
            <li>支持 svg 矢量图像格式文件</li>
            <li>支持 mp3,wav,mp4,flv 等音视频格式文件</li>
            <li>支持 avi,mov,rm,webm,ts,rm,mkv,mpeg,ogg,mpg,rmvb,wmv,3gp,ts,swf 等视频格式转码预览</li>
            <li>支持 dcm 等医疗数位影像预览</li>
            <li>支持 drawio 绘图预览</li>
        </ol>
    </div>
    <#--  输入下载地址预览文件  -->
    <div class="panel panel-success">
        <div class="panel-heading">
            <h3 class="panel-title">输入下载地址预览</h3>
        </div>
        <div class="panel-body">
            <form>
                <div class="row">
                    <div class="col-md-10">
                        <div class="form-group">
                            <input type="url" class="form-control" id="_url" placeholder="请输入预览文件 url">
                        </div>
                    </div>
                    <div class="col-md-2">
                        <button id="previewByUrl" type="button" class="btn btn-success">预览</button>
                    </div>
                </div>

                <div class="alert alert-danger alert-dismissable hide" role="alert" id="previewCheckAlert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <strong>请输入正确的url</strong>
                </div>

            </form>
        </div>
    </div>
</div>

<div class="loading_container">
    <div class="spinner">
        <div class="spinner-container container1">
            <div class="circle1"></div>
            <div class="circle2"></div>
            <div class="circle3"></div>
            <div class="circle4"></div>
        </div>
        <div class="spinner-container container2">
            <div class="circle1"></div>
            <div class="circle2"></div>
            <div class="circle3"></div>
            <div class="circle4"></div>
        </div>
        <div class="spinner-container container3">
            <div class="circle1"></div>
            <div class="circle2"></div>
            <div class="circle3"></div>
            <div class="circle4"></div>
        </div>
    </div>
</div>
<script>
    function showLoadingDiv() {
        var height = window.document.documentElement.clientHeight - 1;
        $(".loading_container").css("height", height).show();
    }

    function checkUrl(url) {
        //url= 协议://(ftp的登录信息)[IP|域名](:端口号)(/或?请求参数)
        var strRegex = '^((https|http|ftp)://)'//(https或http或ftp)
            + '(([\\w_!~*\'()\\.&=+$%-]+: )?[\\w_!~*\'()\\.&=+$%-]+@)?' //ftp的user@  可有可无
            + '(([0-9]{1,3}\\.){3}[0-9]{1,3}' // IP形式的URL- 3位数字.3位数字.3位数字.3位数字
            + '|' // 允许IP和DOMAIN（域名）
            + '(localhost)|'	//匹配localhost
            + '([\\w_!~*\'()-]+\\.)*' // 域名- 至少一个[英文或数字_!~*\'()-]加上.
            + '\\w+\\.' // 一级域名 -英文或数字  加上.
            + '[a-zA-Z]{1,6})' // 顶级域名- 1-6位英文
            + '(:[0-9]{1,5})?' // 端口- :80 ,1-5位数字
            + '((/?)|' // url无参数结尾 - 斜杆或这没有
            + '(/[\\w_!~*\'()\\.;?:@&=+$,%#-]+)+/?)$';//请求参数结尾- 英文或数字和[]内的各种字符
        var re = new RegExp(strRegex, 'i');//i不区分大小写
        //将url做uri转码后再匹配，解除请求参数中的中文和空字符影响
        return re.test(encodeURI(url));
    }

    $(function () {
        $('#previewByUrl').on('click', function () {
            var _url = $("#_url").val();
            if (!checkUrl(_url)) {
                $("#previewCheckAlert").addClass("show");
                window.setTimeout(function () {
                    $("#previewCheckAlert").removeClass("show");
                }, 3000);//显示的时间
                return false;
            }

            var b64Encoded = Base64.encode(_url);

            window.open('${baseUrl}onlinePreview?url=' + encodeURIComponent(b64Encoded));
        });
    });
</script>
</body>
</html>
