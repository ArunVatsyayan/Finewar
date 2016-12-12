<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultLayout.Master" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="Finewar.Create" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CSS" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-content-wrapper">
        <div class="page-content">
            <div class="container">
                <div class="page-content-inner">
                    <div class="row">
                        <div class="col-md-offset-2 col-md-8">
                            <div class="portlet light ">


                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="FineTitle">
                                            <span class="FineTitle LinkColor">Create a New List</span>
                                        </div>
                                    </div>
                                    <div class="col-md-offset-7 col-xs-1"><a href="javascript:;" onclick="openModal();"><i class="fa fa-info-circle FineTitle"></i></a></div>
                                </div>

                                <div class="row PaddingTop">
                                    <div class="col-md-offset-1 col-md-10">

                                        <div class="form-group">
                                            <input class="form-control placeholder-no-fix text-center LinkColor FineTitle" type="text" placeholder="List Title" name="title" />
                                        </div>


                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-md-offset-1 col-md-10">

                                        <div class="form-group">
                                            <textarea class="form-control placeholder-no-fix text-center" cols="4" placeholder="Description" name="description"></textarea>
                                        </div>


                                    </div>

                                </div>

                                <div class="row PaddingTop">
                                    <div class="col-md-4">
                                        <div class="FineTitle">
                                            <span class="FineTitle LinkColor">OPTIONS</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="row PaddingTop">
                                    <div class="col-md-offset-1 col-md-1">
                                        <div class="label label-sm label-success LabelForProfile pull-left">
                                            1
                                        </div>

                                    </div>
                                    <div class="col-md-9">

                                        <div class="form-group">
                                            <input class="form-control placeholder-no-fix FineTitle" type="text" placeholder="Option 1" name="op1" />
                                        </div>


                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-md-offset-1 col-md-1">
                                        <div class="label label-sm label-success LabelForProfile pull-left">
                                            2
                                        </div>

                                    </div>
                                    <div class="col-md-9">

                                        <div class="form-group">
                                            <input class="form-control placeholder-no-fix FineTitle" type="text" placeholder="Option 2" name="op2" />
                                        </div>


                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-md-offset-1 col-md-1">
                                        <div class="label label-sm label-success LabelForProfile pull-left">
                                            3
                                        </div>

                                    </div>
                                    <div class="col-md-9">

                                        <div class="form-group">
                                            <input class="form-control placeholder-no-fix FineTitle" type="text" placeholder="Option 3" name="op3" />
                                        </div>


                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col-md-offset-1 col-md-1">
                                        <div class="label label-sm label-info LabelForProfile pull-left">
                                            4
                                        </div>

                                    </div>
                                    <div class="col-md-9">

                                        <div class="form-group">
                                            <input class="form-control placeholder-no-fix FineTitle" type="text" placeholder="Option 4" name="op4" />
                                        </div>


                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col-md-offset-1 col-md-1">
                                        <div class="label label-sm label-info LabelForProfile pull-left">
                                            5
                                        </div>

                                    </div>
                                    <div class="col-md-9">

                                        <div class="form-group">
                                            <input class="form-control placeholder-no-fix FineTitle" type="text" placeholder="Option 5" name="op5" />
                                        </div>


                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col-md-offset-1 col-md-1">
                                        <div class="label label-sm label-warning LabelForProfile pull-left">
                                            6
                                        </div>

                                    </div>
                                    <div class="col-md-9">

                                        <div class="form-group">
                                            <input class="form-control placeholder-no-fix FineTitle" type="text" placeholder="Option 6" name="op6" />
                                        </div>


                                    </div>

                                </div>


                                <div class="row">
                                    <div class="col-md-offset-1 col-md-1">
                                        <div class="label label-sm label-warning LabelForProfile pull-left">
                                            7
                                        </div>

                                    </div>
                                    <div class="col-md-9">

                                        <div class="form-group">
                                            <input class="form-control placeholder-no-fix FineTitle" type="text" placeholder="Option 7" name="op7" />
                                        </div>


                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col-md-offset-1 col-md-1">
                                        <div class="label label-sm label-danger LabelForProfile pull-left">
                                            8
                                        </div>

                                    </div>
                                    <div class="col-md-9">

                                        <div class="form-group">
                                            <input class="form-control placeholder-no-fix FineTitle" type="text" placeholder="Option 8" name="op8" />
                                        </div>


                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-md-offset-1 col-md-1">
                                        <div class="label label-sm label-danger LabelForProfile pull-left">
                                            9
                                        </div>

                                    </div>
                                    <div class="col-md-9">

                                        <div class="form-group">
                                            <input class="form-control placeholder-no-fix FineTitle" type="text" placeholder="Option 9" name="op9" />
                                        </div>


                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-md-offset-1 col-md-1">
                                        <div class="label label-sm label-danger LabelForProfile pull-left">
                                            10
                                        </div>

                                    </div>
                                    <div class="col-md-9">

                                        <div class="form-group">
                                            <input class="form-control placeholder-no-fix FineTitle" type="text" placeholder="Option 10" name="op10" />
                                        </div>


                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col-md-offset-5 col-md-2">
                                        <button id="submitList" type="button" class="btn btn-primary mt-ladda-btn ladda-button" data-style="expand-right">
                                            <span id="BtnTxt">Submit</span>
                                            <i id="spinnerSubmit" class="fa fa-bug fa-spin" style="display:none"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>


    <%-- FULL MODAL --%>
    <div class="full-screen-nav" style="display: none;">
        <span class="full-screen-nav-close" onclick="closeModal();"></span>
        <div class="full-screen-nav-content">
            <div class="row">
                <div class="col-md-offset-3 col-md-6 LinkColor FineTitleFinePage">
                    Before Creating a New List...
                </div>
            </div>
            <div class="row FineTitle PaddingTop">

                <div class="col-md-offset-3 col-md-6">
                    <i class="fa fa-circle-o"></i>- Your List should be original, Please check before posting otherwise your list will not be approved.
                </div>
            </div>

            <div class="row FineTitle PaddingXXS">

                <div class="col-md-offset-3 col-md-6">
                    <i class="fa fa-circle-o"></i>- Your List should not be contained any offensive material.
                </div>
            </div>

            <div class="row FineTitle PaddingXXS">

                <div class="col-md-offset-3 col-md-6">
                    <i class="fa fa-circle-o"></i>- Your List should not be personal. For example - MyTop10 etc.
                </div>
            </div>

            <div class="row FineTitle PaddingXXS">

                <div class="col-md-offset-3 col-md-6">
                    <i class="fa fa-circle-o"></i>- Your List should not be contained any copyright material.
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Scripts" runat="server">
    <script src="/Assets/Customized/Scripts/Create.js"></script>
</asp:Content>
