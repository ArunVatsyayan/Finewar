<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultLayout.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="Finewar.List" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="page-content">
        <div class="container">
            <div class="page-content-inner">
                <div class="row LinkColor">
                    <div class="col-md-9 col-sm-9">
                        <div class="portlet light ">
                            <div class="row">
                                <div class="col-xs-9 FineTitleFinePage">Top 10 Books of all time</div>

                                <div class="col-xs-3"><span class="pull-right BugLogoLarge"><i class="fa fa-bug"></i></span><span class="pull-right BugsNumberLarge">500 </span></div>
                            </div>
                            <div class="row FineDescription">
                                <div class="col-xs-12">This is a list of the best Pixar movies of the 21st century which means Toy Story, A Bug's Life, and Toy Story 2 are not allowed on this list.</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-3">
                        <div class="portlet light text-center">
                            <a href="javascript:;" id="addOption" class="FineTitle LinkColor">Add a new Option
                            </a>
                            <div id="newOptionDiv" style="display: none">
                                <textarea id="newOptionTB" cols="2" class="form-control FineTitle" placeholder="Add a new Option"></textarea>
                                <button id="submitList" type="button" class="btn btn-primary btn-block" data-style="expand-right">
                                    <span id="BtnTxt">Submit</span>
                                    <i id="spinnerSubmit" class="fa fa-bug fa-spin" style="display: none"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-9 col-sm-9">
                        <div class="label label-sm label-success" style="font-size: 25px;">
                            1                                       
                        </div>
                        <div class="portlet light ">
                            <div class="row">
                                <div class="col-xs-9 FineOptionFinePage">Harry Potter</div>
                                <div class="col-xs-3" style="display: block"><a href="javascript:;"><i class="fa fa-arrow-up pull-right FineUpvote"></i></a></div>
                                <div class="col-xs-3" style="display: none"><span class="pull-right BugLogo"><i class="fa fa-bug"></i></span><span class="pull-right BugsNumber LinkColor">500 </span></div>
                            </div>
                            <div class="row PaddingTop">
                                <div class="row">
                                    <div class="col-md-offset-1 col-md-10">
                                        <div class="form-group">
                                            <textarea class="form-control" placeholder="Post a comment..." cols="4"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-offset-1 col-md-10">
                                        <div class="form-group">
                                            <input type="button" value="Post" class="btn btn-primary pull-right" />
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row PaddingTop">
                                <div class="col-md-12">
                                    <div id="comments">
                                        <div class="row PaddingTopXS">
                                            <div class="row">
                                                <div class="col-md-2 hidden-sm hidden-xs"><a href="javascript:;" class="pull-right">gefryxuyt</a></div>
                                                <div class="col-md-2 hidden-md hidden-lg"><a href="javascript:;">gefryxuyt</a></div>
                                                <div class="col-md-9 col-xs-9 Comment">
                                                    <i class="fa fa-quote-left"></i>
                                                    <i class="fa fa-quote-left"></i>
                                                    <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras id turpis vitae mi tempus tempus eu vel erat. In ut quam at lectus tincidunt facilisis sit amet eget turpis. Proin elementum nec mauris a imperdiet. Nunc sit amet magna quis dolor venenatis varius. Quisque pharetra nulla eu nulla porttitor condimentum. Proin ac felis volutpat, convallis mauris sed, volutpat nisl. Praesent leo nibh, lacinia vitae libero vitae, tempor aliquet libero. Aenean euismod sem eu ipsum gravida, et sollicitudin nisi molestie. Duis nec bibendum sem, vitae suscipit neque.</span>
                                                    <i class="fa fa-quote-right"></i>
                                                </div>
                                                <div class="col-md-1 col-xs-1"><span class="BugsNumber LinkColor">500</span><span class="BugLogo"><i class="fa fa-bug"></i></span></div>
                                            </div>

                                            <div class="row">
                                                <div class="col-xs-2"></div>
                                                <div class="col-xs-10 PaddingXXS">
                                                    <div class="label UpDownReport label-success">
                                                        <a href="javascript:;"><i class="fa fa-thumbs-up WhiteColor"></i></a>
                                                    </div>
                                                    <div class="label UpDownReport label-success">
                                                        <a href="javascript:;"><i class="fa fa-thumbs-down WhiteColor"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row PaddingTopXS">
                                            <div class="row">
                                                <div class="col-md-2 hidden-sm hidden-xs"><a href="javascript:;" class="pull-right">gefryxuyt</a></div>
                                                <div class="col-md-2 hidden-md hidden-lg"><a href="javascript:;">gefryxuyt</a></div>
                                                <div class="col-md-9 col-xs-9 Comment">
                                                    <i class="fa fa-quote-left"></i>
                                                    <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras id turpis vitae mi tempus tempus eu vel erat. In ut quam at lectus tincidunt facilisis sit amet eget turpis. Proin elementum nec mauris a imperdiet. Nunc sit amet magna quis dolor venenatis varius. Quisque pharetra nulla eu nulla porttitor condimentum. Proin ac felis volutpat, convallis mauris sed, volutpat nisl. Praesent leo nibh, lacinia vitae libero vitae, tempor aliquet libero. Aenean euismod sem eu ipsum gravida, et sollicitudin nisi molestie. Duis nec bibendum sem, vitae suscipit neque.</span>
                                                    <i class="fa fa-quote-right"></i>
                                                </div>
                                                <div class="col-md-1 col-xs-1"><span class="BugsNumber LinkColor">500</span><span class="BugLogo"><i class="fa fa-bug"></i></span></div>
                                            </div>

                                            <div class="row">
                                                <div class="col-xs-2"></div>
                                                <div class="col-xs-10 PaddingXXS">
                                                    <div class="label UpDownReport label-success">
                                                        <a href="javascript:;"><i class="fa fa-thumbs-up WhiteColor"></i></a>
                                                    </div>
                                                    <div class="label UpDownReport label-success">
                                                        <a href="javascript:;"><i class="fa fa-thumbs-down WhiteColor"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row PaddingTopXS">
                                            <div class="row">
                                                <div class="col-md-2 hidden-sm hidden-xs"><a href="javascript:;" class="pull-right">gefryxuyt</a></div>
                                                <div class="col-md-2 hidden-md hidden-lg"><a href="javascript:;">gefryxuyt</a></div>
                                                <div class="col-md-9 col-xs-9 Comment">
                                                    <i class="fa fa-quote-left"></i>
                                                    <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras id turpis vitae mi tempus tempus eu vel erat. In ut quam at lectus tincidunt facilisis sit amet eget turpis. Proin elementum nec mauris a imperdiet. Nunc sit amet magna quis dolor venenatis varius. Quisque pharetra nulla eu nulla porttitor condimentum. Proin ac felis volutpat, convallis mauris sed, volutpat nisl. Praesent leo nibh, lacinia vitae libero vitae, tempor aliquet libero. Aenean euismod sem eu ipsum gravida, et sollicitudin nisi molestie. Duis nec bibendum sem, vitae suscipit neque.</span>
                                                    <i class="fa fa-quote-right"></i>
                                                </div>
                                                <div class="col-md-1 col-xs-1"><span class="BugsNumber LinkColor">500</span><span class="BugLogo"><i class="fa fa-bug"></i></span></div>
                                            </div>

                                            <div class="row">
                                                <div class="col-xs-2"></div>
                                                <div class="col-xs-10 PaddingXXS">
                                                    <div class="label UpDownReport label-success">
                                                        <a href="javascript:;"><i class="fa fa-thumbs-up WhiteColor"></i></a>
                                                    </div>
                                                    <div class="label UpDownReport label-success">
                                                        <a href="javascript:;"><i class="fa fa-thumbs-down WhiteColor"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row PaddingTopXS">
                                            <div class="row">
                                                <div class="col-md-2 hidden-sm hidden-xs"><a href="javascript:;" class="pull-right">gefryxuyt</a></div>
                                                <div class="col-md-2 hidden-md hidden-lg"><a href="javascript:;">gefryxuyt</a></div>
                                                <div class="col-md-9 col-xs-9 Comment">
                                                    <i class="fa fa-quote-left"></i>
                                                    <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras id turpis vitae mi tempus tempus eu vel erat. In ut quam at lectus tincidunt facilisis sit amet eget turpis. Proin elementum nec mauris a imperdiet. Nunc sit amet magna quis dolor venenatis varius. Quisque pharetra nulla eu nulla porttitor condimentum. Proin ac felis volutpat, convallis mauris sed, volutpat nisl. Praesent leo nibh, lacinia vitae libero vitae, tempor aliquet libero. Aenean euismod sem eu ipsum gravida, et sollicitudin nisi molestie. Duis nec bibendum sem, vitae suscipit neque.</span>
                                                    <i class="fa fa-quote-right"></i>
                                                </div>
                                                <div class="col-md-1 col-xs-1"><span class="BugsNumber LinkColor">500</span><span class="BugLogo"><i class="fa fa-bug"></i></span></div>
                                            </div>

                                            <div class="row">
                                                <div class="col-xs-2"></div>
                                                <div class="col-xs-10 PaddingXXS">
                                                    <div class="label UpDownReport label-success">
                                                        <a href="javascript:;"><i class="fa fa-thumbs-up WhiteColor"></i></a>
                                                    </div>
                                                    <div class="label UpDownReport label-success">
                                                        <a href="javascript:;"><i class="fa fa-thumbs-down WhiteColor"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row PaddingTopXS">
                                            <div class="row">
                                                <div class="col-md-2 hidden-sm hidden-xs"><a href="javascript:;" class="pull-right">gefryxuyt</a></div>
                                                <div class="col-md-2 hidden-md hidden-lg"><a href="javascript:;">gefryxuyt</a></div>
                                                <div class="col-md-9 col-xs-9 Comment">
                                                    <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras id turpis vitae mi tempus tempus eu vel erat. In ut quam at lectus tincidunt facilisis sit amet eget turpis. Proin elementum nec mauris a imperdiet. Nunc sit amet magna quis dolor venenatis varius. Quisque pharetra nulla eu nulla porttitor condimentum. Proin ac felis volutpat, convallis mauris sed, volutpat nisl. Praesent leo nibh, lacinia vitae libero vitae, tempor aliquet libero. Aenean euismod sem eu ipsum gravida, et sollicitudin nisi molestie. Duis nec bibendum sem, vitae suscipit neque.</span>
                                                    <i class="fa fa-quote-right"></i>
                                                </div>
                                                <div class="col-md-1 col-xs-1"><span class="BugsNumber LinkColor">500</span><span class="BugLogo"><i class="fa fa-bug"></i></span></div>
                                            </div>

                                            <div class="row">
                                                <div class="col-xs-2"></div>
                                                <div class="col-xs-10 PaddingXXS">
                                                    <div class="label UpDownReport label-success">
                                                        <a href="javascript:;"><i class="fa fa-thumbs-up WhiteColor"></i></a>
                                                    </div>
                                                    <div class="label UpDownReport label-success">
                                                        <a href="javascript:;"><i class="fa fa-thumbs-down WhiteColor"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row PaddingTop">
                                <div class="col-xs-2"></div>
                                <div class="col-xs-10"><a href="javascript:;"><i class="fa fa-th-list"></i>135 Comments</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-3"></div>
                </div>


                <%--Option 2--%>
                <div class="row">
                    <div class="col-md-9 col-sm-9">
                        <div class="label label-sm label-success" style="font-size: 25px;">
                            2                                       
                        </div>
                        <div class="portlet light ">
                            <div class="row">
                                <div class="col-xs-9 FineOptionFinePage">Harry Potter</div>
                                <div class="col-xs-3" style="display: block"><a href="javascript:;"><i class="fa fa-arrow-up pull-right FineUpvote"></i></a></div>
                                <div class="col-xs-3" style="display: none"><span class="pull-right BugLogo"><i class="fa fa-bug"></i></span><span class="pull-right BugsNumber LinkColor">500 </span></div>
                            </div>
                            <div class="row PaddingTop">
                                <div class="row">
                                    <div class="col-md-offset-1 col-md-10">
                                        <textarea class="form-control" placeholder="Post a comment..." cols="4"></textarea>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-offset-1 col-md-10">
                                        <div class="form-group">
                                            <input type="button" value="Post" class="btn btn-primary pull-right" />
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row PaddingTop">
                                <div class="col-md-12">
                                    <div id="comments">
                                        <div class="row PaddingTopXS">
                                            <div class="row">
                                                <div class="col-md-2 hidden-sm hidden-xs"><a href="javascript:;" class="pull-right">gefryxuyt</a></div>
                                                <div class="col-md-2 hidden-md hidden-lg"><a href="javascript:;">gefryxuyt</a></div>
                                                <div class="col-md-9 col-xs-9 Comment">
                                                    <i class="fa fa-quote-left"></i>
                                                    <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras id turpis vitae mi tempus tempus eu vel erat. In ut quam at lectus tincidunt facilisis sit amet eget turpis. Proin elementum nec mauris a imperdiet. Nunc sit amet magna quis dolor venenatis varius. Quisque pharetra nulla eu nulla porttitor condimentum. Proin ac felis volutpat, convallis mauris sed, volutpat nisl. Praesent leo nibh, lacinia vitae libero vitae, tempor aliquet libero. Aenean euismod sem eu ipsum gravida, et sollicitudin nisi molestie. Duis nec bibendum sem, vitae suscipit neque.</span>
                                                    <i class="fa fa-quote-right"></i>
                                                </div>
                                                <div class="col-md-1 col-xs-1"><span class="BugsNumber LinkColor">500</span><span class="BugLogo"><i class="fa fa-bug"></i></span></div>
                                            </div>

                                            <div class="row">
                                                <div class="col-xs-2"></div>
                                                <div class="col-xs-10 PaddingXXS">
                                                    <div class="label UpDownReport label-success">
                                                        <a href="javascript:;"><i class="fa fa-thumbs-up WhiteColor"></i></a>
                                                    </div>
                                                    <div class="label UpDownReport label-success">
                                                        <a href="javascript:;"><i class="fa fa-thumbs-down WhiteColor"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row PaddingTopXS">
                                            <div class="row">
                                                <div class="col-md-2 hidden-sm hidden-xs"><a href="javascript:;" class="pull-right">gefryxuyt</a></div>
                                                <div class="col-md-2 hidden-md hidden-lg"><a href="javascript:;">gefryxuyt</a></div>
                                                <div class="col-md-9 col-xs-9 Comment">
                                                    <i class="fa fa-quote-left"></i>
                                                    <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras id turpis vitae mi tempus tempus eu vel erat. In ut quam at lectus tincidunt facilisis sit amet eget turpis. Proin elementum nec mauris a imperdiet. Nunc sit amet magna quis dolor venenatis varius. Quisque pharetra nulla eu nulla porttitor condimentum. Proin ac felis volutpat, convallis mauris sed, volutpat nisl. Praesent leo nibh, lacinia vitae libero vitae, tempor aliquet libero. Aenean euismod sem eu ipsum gravida, et sollicitudin nisi molestie. Duis nec bibendum sem, vitae suscipit neque.</span>
                                                    <i class="fa fa-quote-right"></i>
                                                </div>
                                                <div class="col-md-1 col-xs-1"><span class="BugsNumber LinkColor">500</span><span class="BugLogo"><i class="fa fa-bug"></i></span></div>
                                            </div>

                                            <div class="row">
                                                <div class="col-xs-2"></div>
                                                <div class="col-xs-10 PaddingXXS">
                                                    <div class="label UpDownReport label-success">
                                                        <a href="javascript:;"><i class="fa fa-thumbs-up WhiteColor"></i></a>
                                                    </div>
                                                    <div class="label UpDownReport label-success">
                                                        <a href="javascript:;"><i class="fa fa-thumbs-down WhiteColor"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row PaddingTopXS">
                                            <div class="row">
                                                <div class="col-md-2 hidden-sm hidden-xs"><a href="javascript:;" class="pull-right">gefryxuyt</a></div>
                                                <div class="col-md-2 hidden-md hidden-lg"><a href="javascript:;">gefryxuyt</a></div>
                                                <div class="col-md-9 col-xs-9 Comment">
                                                    <i class="fa fa-quote-left"></i>
                                                    <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras id turpis vitae mi tempus tempus eu vel erat. In ut quam at lectus tincidunt facilisis sit amet eget turpis. Proin elementum nec mauris a imperdiet. Nunc sit amet magna quis dolor venenatis varius. Quisque pharetra nulla eu nulla porttitor condimentum. Proin ac felis volutpat, convallis mauris sed, volutpat nisl. Praesent leo nibh, lacinia vitae libero vitae, tempor aliquet libero. Aenean euismod sem eu ipsum gravida, et sollicitudin nisi molestie. Duis nec bibendum sem, vitae suscipit neque.</span>
                                                    <i class="fa fa-quote-right"></i>
                                                </div>
                                                <div class="col-md-1 col-xs-1"><span class="BugsNumber LinkColor">500</span><span class="BugLogo"><i class="fa fa-bug"></i></span></div>
                                            </div>

                                            <div class="row">
                                                <div class="col-xs-2"></div>
                                                <div class="col-xs-10 PaddingXXS">
                                                    <div class="label UpDownReport label-success">
                                                        <a href="javascript:;"><i class="fa fa-thumbs-up WhiteColor"></i></a>
                                                    </div>
                                                    <div class="label UpDownReport label-success">
                                                        <a href="javascript:;"><i class="fa fa-thumbs-down WhiteColor"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row PaddingTopXS">
                                            <div class="row">
                                                <div class="col-md-2 hidden-sm hidden-xs"><a href="javascript:;" class="pull-right">gefryxuyt</a></div>
                                                <div class="col-md-2 hidden-md hidden-lg"><a href="javascript:;">gefryxuyt</a></div>
                                                <div class="col-md-9 col-xs-9 Comment">
                                                    <i class="fa fa-quote-left"></i>
                                                    <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras id turpis vitae mi tempus tempus eu vel erat. In ut quam at lectus tincidunt facilisis sit amet eget turpis. Proin elementum nec mauris a imperdiet. Nunc sit amet magna quis dolor venenatis varius. Quisque pharetra nulla eu nulla porttitor condimentum. Proin ac felis volutpat, convallis mauris sed, volutpat nisl. Praesent leo nibh, lacinia vitae libero vitae, tempor aliquet libero. Aenean euismod sem eu ipsum gravida, et sollicitudin nisi molestie. Duis nec bibendum sem, vitae suscipit neque.</span>
                                                    <i class="fa fa-quote-right"></i>
                                                </div>
                                                <div class="col-md-1 col-xs-1"><span class="BugsNumber LinkColor">500</span><span class="BugLogo"><i class="fa fa-bug"></i></span></div>
                                            </div>

                                            <div class="row">
                                                <div class="col-xs-2"></div>
                                                <div class="col-xs-10 PaddingXXS">
                                                    <div class="label UpDownReport label-success">
                                                        <a href="javascript:;"><i class="fa fa-thumbs-up WhiteColor"></i></a>
                                                    </div>
                                                    <div class="label UpDownReport label-success">
                                                        <a href="javascript:;"><i class="fa fa-thumbs-down WhiteColor"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row PaddingTopXS">
                                            <div class="row">
                                                <div class="col-md-2 hidden-sm hidden-xs"><a href="javascript:;" class="pull-right">gefryxuyt</a></div>
                                                <div class="col-md-2 hidden-md hidden-lg"><a href="javascript:;">gefryxuyt</a></div>
                                                <div class="col-md-9 col-xs-9 Comment">
                                                    <i class="fa fa-quote-left"></i>
                                                    <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras id turpis vitae mi tempus tempus eu vel erat. In ut quam at lectus tincidunt facilisis sit amet eget turpis. Proin elementum nec mauris a imperdiet. Nunc sit amet magna quis dolor venenatis varius. Quisque pharetra nulla eu nulla porttitor condimentum. Proin ac felis volutpat, convallis mauris sed, volutpat nisl. Praesent leo nibh, lacinia vitae libero vitae, tempor aliquet libero. Aenean euismod sem eu ipsum gravida, et sollicitudin nisi molestie. Duis nec bibendum sem, vitae suscipit neque.</span>
                                                    <i class="fa fa-quote-right"></i>
                                                </div>
                                                <div class="col-md-1 col-xs-1"><span class="BugsNumber LinkColor">500</span><span class="BugLogo"><i class="fa fa-bug"></i></span></div>
                                            </div>

                                            <div class="row">
                                                <div class="col-xs-2"></div>
                                                <div class="col-xs-10 PaddingXXS">
                                                    <div class="label UpDownReport label-success">
                                                        <a href="javascript:;"><i class="fa fa-thumbs-up WhiteColor"></i></a>
                                                    </div>
                                                    <div class="label UpDownReport label-success">
                                                        <a href="javascript:;"><i class="fa fa-thumbs-down WhiteColor"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row PaddingTop">
                                <div class="col-xs-2"></div>
                                <div class="col-xs-10"><a href="javascript:;"><i class="fa fa-th-list"></i>135 Comments</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-3"></div>
                </div>

                <%--Option 3--%>

                <div class="row">
                    <div class="col-md-9 col-sm-9">
                        <div class="label label-sm label-success" style="font-size: 25px;">
                            3                                       
                        </div>
                        <div class="portlet light ">
                            <div class="row">
                                <div class="col-xs-9 FineOptionFinePage">Harry Potter</div>
                                <div class="col-xs-3" style="display: block"><a href="javascript:;"><i class="fa fa-arrow-up pull-right FineUpvote"></i></a></div>
                                <div class="col-xs-3" style="display: none"><span class="pull-right BugLogo"><i class="fa fa-bug"></i></span><span class="pull-right BugsNumber LinkColor">500 </span></div>
                            </div>
                            <div class="row PaddingTop">
                                <div class="row">
                                    <div class="col-md-offset-1 col-md-10">
                                        <textarea class="form-control" placeholder="Post a comment..." cols="4"></textarea>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-offset-1 col-md-10">
                                        <div class="form-group">
                                            <input type="button" value="Post" class="btn btn-primary pull-right" />
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row PaddingTop">
                                <div class="col-md-12">
                                    <div id="comments">
                                        <div class="row PaddingTopXS">
                                            <div class="row">
                                                <div class="col-md-2 hidden-sm hidden-xs"><a href="javascript:;" class="pull-right">gefryxuyt</a></div>
                                                <div class="col-md-2 hidden-md hidden-lg"><a href="javascript:;">gefryxuyt</a></div>
                                                <div class="col-md-9 col-xs-9 Comment">
                                                    <i class="fa fa-quote-left"></i>
                                                    <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras id turpis vitae mi tempus tempus eu vel erat. In ut quam at lectus tincidunt facilisis sit amet eget turpis. Proin elementum nec mauris a imperdiet. Nunc sit amet magna quis dolor venenatis varius. Quisque pharetra nulla eu nulla porttitor condimentum. Proin ac felis volutpat, convallis mauris sed, volutpat nisl. Praesent leo nibh, lacinia vitae libero vitae, tempor aliquet libero. Aenean euismod sem eu ipsum gravida, et sollicitudin nisi molestie. Duis nec bibendum sem, vitae suscipit neque.</span>
                                                    <i class="fa fa-quote-right"></i>
                                                </div>
                                                <div class="col-md-1 col-xs-1"><span class="BugsNumber LinkColor">500</span><span class="BugLogo"><i class="fa fa-bug"></i></span></div>
                                            </div>

                                            <div class="row">
                                                <div class="col-xs-2"></div>
                                                <div class="col-xs-10 PaddingXXS">
                                                    <div class="label UpDownReport label-success">
                                                        <a href="javascript:;"><i class="fa fa-thumbs-up WhiteColor"></i></a>
                                                    </div>
                                                    <div class="label UpDownReport label-success">
                                                        <a href="javascript:;"><i class="fa fa-thumbs-down WhiteColor"></i></a>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>

                                        <div class="row PaddingTopXS">
                                            <div class="row">
                                                <div class="col-md-2 hidden-sm hidden-xs"><a href="javascript:;" class="pull-right">gefryxuyt</a></div>
                                                <div class="col-md-2 hidden-md hidden-lg"><a href="javascript:;">gefryxuyt</a></div>
                                                <div class="col-md-9 col-xs-9 Comment">
                                                    <i class="fa fa-quote-left"></i>
                                                    <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras id turpis vitae mi tempus tempus eu vel erat. In ut quam at lectus tincidunt facilisis sit amet eget turpis. Proin elementum nec mauris a imperdiet. Nunc sit amet magna quis dolor venenatis varius. Quisque pharetra nulla eu nulla porttitor condimentum. Proin ac felis volutpat, convallis mauris sed, volutpat nisl. Praesent leo nibh, lacinia vitae libero vitae, tempor aliquet libero. Aenean euismod sem eu ipsum gravida, et sollicitudin nisi molestie. Duis nec bibendum sem, vitae suscipit neque.</span>
                                                    <i class="fa fa-quote-right"></i>
                                                </div>
                                                <div class="col-md-1 col-xs-1"><span class="BugsNumber LinkColor">500</span><span class="BugLogo"><i class="fa fa-bug"></i></span></div>
                                            </div>

                                            <div class="row">
                                                <div class="col-xs-2"></div>
                                                <div class="col-xs-10 PaddingXXS">
                                                    <div class="label UpDownReport label-success">
                                                        <a href="javascript:;"><i class="fa fa-thumbs-up WhiteColor"></i></a>
                                                    </div>
                                                    <div class="label UpDownReport label-success">
                                                        <a href="javascript:;"><i class="fa fa-thumbs-down WhiteColor"></i></a>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>

                                        <div class="row PaddingTopXS">
                                            <div class="row">
                                                <div class="col-md-2 hidden-sm hidden-xs"><a href="javascript:;" class="pull-right">gefryxuyt</a></div>
                                                <div class="col-md-2 hidden-md hidden-lg"><a href="javascript:;">gefryxuyt</a></div>
                                                <div class="col-md-9 col-xs-9 Comment">
                                                    <i class="fa fa-quote-left"></i>
                                                    <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras id turpis vitae mi tempus tempus eu vel erat. In ut quam at lectus tincidunt facilisis sit amet eget turpis. Proin elementum nec mauris a imperdiet. Nunc sit amet magna quis dolor venenatis varius. Quisque pharetra nulla eu nulla porttitor condimentum. Proin ac felis volutpat, convallis mauris sed, volutpat nisl. Praesent leo nibh, lacinia vitae libero vitae, tempor aliquet libero. Aenean euismod sem eu ipsum gravida, et sollicitudin nisi molestie. Duis nec bibendum sem, vitae suscipit neque.</span>
                                                    <i class="fa fa-quote-right"></i>
                                                </div>
                                                <div class="col-md-1 col-xs-1"><span class="BugsNumber LinkColor">500</span><span class="BugLogo"><i class="fa fa-bug"></i></span></div>
                                            </div>

                                            <div class="row">
                                                <div class="col-xs-2"></div>
                                                <div class="col-xs-10 PaddingXXS">
                                                    <div class="label UpDownReport label-success">
                                                        <a href="javascript:;"><i class="fa fa-thumbs-up WhiteColor"></i></a>
                                                    </div>
                                                    <div class="label UpDownReport label-success">
                                                        <a href="javascript:;"><i class="fa fa-thumbs-down WhiteColor"></i></a>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>

                                        <div class="row PaddingTopXS">
                                            <div class="row">
                                                <div class="col-md-2 hidden-sm hidden-xs"><a href="javascript:;" class="pull-right">gefryxuyt</a></div>
                                                <div class="col-md-2 hidden-md hidden-lg"><a href="javascript:;">gefryxuyt</a></div>
                                                <div class="col-md-9 col-xs-9 Comment">
                                                    <i class="fa fa-quote-left"></i>
                                                    <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras id turpis vitae mi tempus tempus eu vel erat. In ut quam at lectus tincidunt facilisis sit amet eget turpis. Proin elementum nec mauris a imperdiet. Nunc sit amet magna quis dolor venenatis varius. Quisque pharetra nulla eu nulla porttitor condimentum. Proin ac felis volutpat, convallis mauris sed, volutpat nisl. Praesent leo nibh, lacinia vitae libero vitae, tempor aliquet libero. Aenean euismod sem eu ipsum gravida, et sollicitudin nisi molestie. Duis nec bibendum sem, vitae suscipit neque.</span>
                                                    <i class="fa fa-quote-right"></i>
                                                </div>
                                                <div class="col-md-1 col-xs-1"><span class="BugsNumber LinkColor">500</span><span class="BugLogo"><i class="fa fa-bug"></i></span></div>
                                            </div>

                                            <div class="row">
                                                <div class="col-xs-2"></div>
                                                <div class="col-xs-10 PaddingXXS">
                                                    <div class="label UpDownReport label-success">
                                                        <a href="javascript:;"><i class="fa fa-thumbs-up WhiteColor"></i></a>
                                                    </div>
                                                    <div class="label UpDownReport label-success">
                                                        <a href="javascript:;"><i class="fa fa-thumbs-down WhiteColor"></i></a>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>

                                        <div class="row PaddingTopXS">
                                            <div class="row">
                                                <div class="col-md-2 hidden-sm hidden-xs"><a href="javascript:;" class="pull-right">gefryxuyt</a></div>
                                                <div class="col-md-2 hidden-md hidden-lg"><a href="javascript:;">gefryxuyt</a></div>
                                                <div class="col-md-9 col-xs-9 Comment">
                                                    <i class="fa fa-quote-left"></i>
                                                    <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras id turpis vitae mi tempus tempus eu vel erat. In ut quam at lectus tincidunt facilisis sit amet eget turpis. Proin elementum nec mauris a imperdiet. Nunc sit amet magna quis dolor venenatis varius. Quisque pharetra nulla eu nulla porttitor condimentum. Proin ac felis volutpat, convallis mauris sed, volutpat nisl. Praesent leo nibh, lacinia vitae libero vitae, tempor aliquet libero. Aenean euismod sem eu ipsum gravida, et sollicitudin nisi molestie. Duis nec bibendum sem, vitae suscipit neque.</span>
                                                    <i class="fa fa-quote-right"></i>
                                                </div>
                                                <div class="col-md-1 col-xs-1"><span class="BugsNumber LinkColor">500</span><span class="BugLogo"><i class="fa fa-bug"></i></span></div>
                                            </div>

                                            <div class="row">
                                                <div class="col-xs-2"></div>
                                                <div class="col-xs-10 PaddingXXS">
                                                    <div class="label UpDownReport label-success">
                                                        <a href="javascript:;"><i class="fa fa-thumbs-up WhiteColor"></i></a>
                                                    </div>
                                                    <div class="label UpDownReport label-success">
                                                        <a href="javascript:;"><i class="fa fa-thumbs-down WhiteColor"></i></a>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row PaddingTop">
                                <div class="col-xs-2"></div>
                                <div class="col-xs-10"><a href="javascript:;"><i class="fa fa-th-list"></i>135 Comments</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-3"></div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Scripts" runat="server">
    <script src="/Assets/Customized/Scripts/List.js"></script>
</asp:Content>
