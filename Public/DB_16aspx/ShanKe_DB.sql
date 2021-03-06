use [ShanKe_DB]
go
/****** Object:  ForeignKey [FK_DT_ARTIC_REFERENCE_DT_ARTIC]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DT_ARTIC_REFERENCE_DT_ARTIC]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_value]'))
ALTER TABLE [dbo].[ax_article_attribute_value] DROP CONSTRAINT [FK_DT_ARTIC_REFERENCE_DT_ARTIC]
GO
/****** Object:  ForeignKey [FK_DT_CHANN_REFERENCE_DT_CATEGORY]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DT_CHANN_REFERENCE_DT_CATEGORY]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_channel]'))
ALTER TABLE [dbo].[ax_channel] DROP CONSTRAINT [FK_DT_CHANN_REFERENCE_DT_CATEGORY]
GO
/****** Object:  ForeignKey [FK_DT_CHANN_REFERENCE_DT_CHANN_FIELD]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DT_CHANN_REFERENCE_DT_CHANN_FIELD]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_channel_field]'))
ALTER TABLE [dbo].[ax_channel_field] DROP CONSTRAINT [FK_DT_CHANN_REFERENCE_DT_CHANN_FIELD]
GO
/****** Object:  ForeignKey [FK_DT_MANAG_REFERENCE_DT_MANAG_ROLE]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DT_MANAG_REFERENCE_DT_MANAG_ROLE]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_manager]'))
ALTER TABLE [dbo].[ax_manager] DROP CONSTRAINT [FK_DT_MANAG_REFERENCE_DT_MANAG_ROLE]
GO
/****** Object:  ForeignKey [FK_DT_MANAG_REFERENCE_DT_MANAG]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DT_MANAG_REFERENCE_DT_MANAG]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_manager_role_value]'))
ALTER TABLE [dbo].[ax_manager_role_value] DROP CONSTRAINT [FK_DT_MANAG_REFERENCE_DT_MANAG]
GO
/****** Object:  ForeignKey [FK_DT_ORDER_REFERENCE_DT_ORDER]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DT_ORDER_REFERENCE_DT_ORDER]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_order_goods]'))
ALTER TABLE [dbo].[ax_order_goods] DROP CONSTRAINT [FK_DT_ORDER_REFERENCE_DT_ORDER]
GO
/****** Object:  ForeignKey [FK_DT_USER__REFERENCE_DT_USERS_CODE]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DT_USER__REFERENCE_DT_USERS_CODE]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_code]'))
ALTER TABLE [dbo].[ax_user_code] DROP CONSTRAINT [FK_DT_USER__REFERENCE_DT_USERS_CODE]
GO
/****** Object:  ForeignKey [FK_DT_USER__REFERENCE_DT_USERS_LOG]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DT_USER__REFERENCE_DT_USERS_LOG]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_login_log]'))
ALTER TABLE [dbo].[ax_user_login_log] DROP CONSTRAINT [FK_DT_USER__REFERENCE_DT_USERS_LOG]
GO
/****** Object:  ForeignKey [FK_DT_USERS_REFERENCE_DT_USER_]    Script Date: 05/18/2015 14:58:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DT_USERS_REFERENCE_DT_USER_]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_users]'))
ALTER TABLE [dbo].[ax_users] DROP CONSTRAINT [FK_DT_USERS_REFERENCE_DT_USER_]
GO
/****** Object:  Table [dbo].[ax_channel_field]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_channel_field]') AND type in (N'U'))
DROP TABLE [dbo].[ax_channel_field]
GO
/****** Object:  Table [dbo].[ax_user_code]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_user_code]') AND type in (N'U'))
DROP TABLE [dbo].[ax_user_code]
GO
/****** Object:  Table [dbo].[ax_user_login_log]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_user_login_log]') AND type in (N'U'))
DROP TABLE [dbo].[ax_user_login_log]
GO
/****** Object:  View [dbo].[view_channel_content]    Script Date: 05/18/2015 14:58:57 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[view_channel_content]'))
DROP VIEW [dbo].[view_channel_content]
GO
/****** Object:  View [dbo].[view_channel_down]    Script Date: 05/18/2015 14:58:57 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[view_channel_down]'))
DROP VIEW [dbo].[view_channel_down]
GO
/****** Object:  View [dbo].[view_channel_goods]    Script Date: 05/18/2015 14:58:57 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[view_channel_goods]'))
DROP VIEW [dbo].[view_channel_goods]
GO
/****** Object:  View [dbo].[view_channel_news]    Script Date: 05/18/2015 14:58:57 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[view_channel_news]'))
DROP VIEW [dbo].[view_channel_news]
GO
/****** Object:  View [dbo].[view_channel_photo]    Script Date: 05/18/2015 14:58:57 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[view_channel_photo]'))
DROP VIEW [dbo].[view_channel_photo]
GO
/****** Object:  Table [dbo].[ax_users]    Script Date: 05/18/2015 14:58:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_users]') AND type in (N'U'))
DROP TABLE [dbo].[ax_users]
GO
/****** Object:  Table [dbo].[ax_manager_role_value]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_manager_role_value]') AND type in (N'U'))
DROP TABLE [dbo].[ax_manager_role_value]
GO
/****** Object:  Table [dbo].[ax_channel]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_channel]') AND type in (N'U'))
DROP TABLE [dbo].[ax_channel]
GO
/****** Object:  Table [dbo].[ax_manager]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_manager]') AND type in (N'U'))
DROP TABLE [dbo].[ax_manager]
GO
/****** Object:  Table [dbo].[ax_order_goods]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_order_goods]') AND type in (N'U'))
DROP TABLE [dbo].[ax_order_goods]
GO
/****** Object:  Table [dbo].[ax_article_attribute_value]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_value]') AND type in (N'U'))
DROP TABLE [dbo].[ax_article_attribute_value]
GO
/****** Object:  Table [dbo].[ax_article_category]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_article_category]') AND type in (N'U'))
DROP TABLE [dbo].[ax_article_category]
GO
/****** Object:  Table [dbo].[ax_article_comment]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_article_comment]') AND type in (N'U'))
DROP TABLE [dbo].[ax_article_comment]
GO
/****** Object:  Table [dbo].[ax_article]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_article]') AND type in (N'U'))
DROP TABLE [dbo].[ax_article]
GO
/****** Object:  Table [dbo].[ax_article_albums]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_article_albums]') AND type in (N'U'))
DROP TABLE [dbo].[ax_article_albums]
GO
/****** Object:  Table [dbo].[ax_article_attach]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_article_attach]') AND type in (N'U'))
DROP TABLE [dbo].[ax_article_attach]
GO
/****** Object:  Table [dbo].[ax_article_attribute_field]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_field]') AND type in (N'U'))
DROP TABLE [dbo].[ax_article_attribute_field]
GO
/****** Object:  Table [dbo].[ax_orders]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_orders]') AND type in (N'U'))
DROP TABLE [dbo].[ax_orders]
GO
/****** Object:  Table [dbo].[ax_payment]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_payment]') AND type in (N'U'))
DROP TABLE [dbo].[ax_payment]
GO
/****** Object:  Table [dbo].[ax_sms_template]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_sms_template]') AND type in (N'U'))
DROP TABLE [dbo].[ax_sms_template]
GO
/****** Object:  Table [dbo].[ax_user_amount_log]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_user_amount_log]') AND type in (N'U'))
DROP TABLE [dbo].[ax_user_amount_log]
GO
/****** Object:  Table [dbo].[ax_manager_log]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_manager_log]') AND type in (N'U'))
DROP TABLE [dbo].[ax_manager_log]
GO
/****** Object:  Table [dbo].[ax_manager_role]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_manager_role]') AND type in (N'U'))
DROP TABLE [dbo].[ax_manager_role]
GO
/****** Object:  Table [dbo].[ax_channel_category]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_channel_category]') AND type in (N'U'))
DROP TABLE [dbo].[ax_channel_category]
GO
/****** Object:  Table [dbo].[ax_express]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_express]') AND type in (N'U'))
DROP TABLE [dbo].[ax_express]
GO
/****** Object:  Table [dbo].[ax_feedback]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_feedback]') AND type in (N'U'))
DROP TABLE [dbo].[ax_feedback]
GO
/****** Object:  Table [dbo].[ax_link]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_link]') AND type in (N'U'))
DROP TABLE [dbo].[ax_link]
GO
/****** Object:  Table [dbo].[ax_mail_template]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_mail_template]') AND type in (N'U'))
DROP TABLE [dbo].[ax_mail_template]
GO
/****** Object:  Table [dbo].[ax_navigation]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_navigation]') AND type in (N'U'))
DROP TABLE [dbo].[ax_navigation]
GO
/****** Object:  Table [dbo].[ax_user_message]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_user_message]') AND type in (N'U'))
DROP TABLE [dbo].[ax_user_message]
GO
/****** Object:  Table [dbo].[ax_user_oauth]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_user_oauth]') AND type in (N'U'))
DROP TABLE [dbo].[ax_user_oauth]
GO
/****** Object:  Table [dbo].[ax_user_oauth_app]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_user_oauth_app]') AND type in (N'U'))
DROP TABLE [dbo].[ax_user_oauth_app]
GO
/****** Object:  Table [dbo].[ax_user_point_log]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_user_point_log]') AND type in (N'U'))
DROP TABLE [dbo].[ax_user_point_log]
GO
/****** Object:  Table [dbo].[ax_user_group_price]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_user_group_price]') AND type in (N'U'))
DROP TABLE [dbo].[ax_user_group_price]
GO
/****** Object:  Table [dbo].[ax_user_groups]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_user_groups]') AND type in (N'U'))
DROP TABLE [dbo].[ax_user_groups]
GO
/****** Object:  Default [DF__dt_articl__chann__0697FACD]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__chann__0697FACD]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__chann__0697FACD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] DROP CONSTRAINT [DF__dt_articl__chann__0697FACD]
END


End
GO
/****** Object:  Default [DF__dt_articl__categ__078C1F06]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__categ__078C1F06]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__categ__078C1F06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] DROP CONSTRAINT [DF__dt_articl__categ__078C1F06]
END


End
GO
/****** Object:  Default [DF__dt_articl__call___0880433F]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__call___0880433F]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__call___0880433F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] DROP CONSTRAINT [DF__dt_articl__call___0880433F]
END


End
GO
/****** Object:  Default [DF__dt_articl__link___09746778]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__link___09746778]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__link___09746778]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] DROP CONSTRAINT [DF__dt_articl__link___09746778]
END


End
GO
/****** Object:  Default [DF__dt_articl__img_u__0A688BB1]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__img_u__0A688BB1]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__img_u__0A688BB1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] DROP CONSTRAINT [DF__dt_articl__img_u__0A688BB1]
END


End
GO
/****** Object:  Default [DF__dt_articl__seo_t__0B5CAFEA]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__seo_t__0B5CAFEA]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__seo_t__0B5CAFEA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] DROP CONSTRAINT [DF__dt_articl__seo_t__0B5CAFEA]
END


End
GO
/****** Object:  Default [DF__dt_articl__seo_k__0C50D423]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__seo_k__0C50D423]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__seo_k__0C50D423]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] DROP CONSTRAINT [DF__dt_articl__seo_k__0C50D423]
END


End
GO
/****** Object:  Default [DF__dt_articl__seo_d__0D44F85C]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__seo_d__0D44F85C]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__seo_d__0D44F85C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] DROP CONSTRAINT [DF__dt_articl__seo_d__0D44F85C]
END


End
GO
/****** Object:  Default [DF__dt_articl__zhaiy__0E391C95]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__zhaiy__0E391C95]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__zhaiy__0E391C95]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] DROP CONSTRAINT [DF__dt_articl__zhaiy__0E391C95]
END


End
GO
/****** Object:  Default [DF__dt_articl__sort___0F2D40CE]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__sort___0F2D40CE]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__sort___0F2D40CE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] DROP CONSTRAINT [DF__dt_articl__sort___0F2D40CE]
END


End
GO
/****** Object:  Default [DF__dt_articl__click__10216507]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__click__10216507]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__click__10216507]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] DROP CONSTRAINT [DF__dt_articl__click__10216507]
END


End
GO
/****** Object:  Default [DF__dt_articl__statu__11158940]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__statu__11158940]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__statu__11158940]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] DROP CONSTRAINT [DF__dt_articl__statu__11158940]
END


End
GO
/****** Object:  Default [DF__dt_articl__group__1209AD79]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__group__1209AD79]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__group__1209AD79]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] DROP CONSTRAINT [DF__dt_articl__group__1209AD79]
END


End
GO
/****** Object:  Default [DF__dt_articl__vote___12FDD1B2]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__vote___12FDD1B2]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__vote___12FDD1B2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] DROP CONSTRAINT [DF__dt_articl__vote___12FDD1B2]
END


End
GO
/****** Object:  Default [DF__dt_articl__is_ms__13F1F5EB]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__is_ms__13F1F5EB]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__is_ms__13F1F5EB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] DROP CONSTRAINT [DF__dt_articl__is_ms__13F1F5EB]
END


End
GO
/****** Object:  Default [DF__dt_articl__is_to__14E61A24]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__is_to__14E61A24]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__is_to__14E61A24]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] DROP CONSTRAINT [DF__dt_articl__is_to__14E61A24]
END


End
GO
/****** Object:  Default [DF__dt_articl__is_re__15DA3E5D]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__is_re__15DA3E5D]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__is_re__15DA3E5D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] DROP CONSTRAINT [DF__dt_articl__is_re__15DA3E5D]
END


End
GO
/****** Object:  Default [DF__dt_articl__is_ho__16CE6296]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__is_ho__16CE6296]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__is_ho__16CE6296]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] DROP CONSTRAINT [DF__dt_articl__is_ho__16CE6296]
END


End
GO
/****** Object:  Default [DF__dt_articl__is_sl__17C286CF]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__is_sl__17C286CF]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__is_sl__17C286CF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] DROP CONSTRAINT [DF__dt_articl__is_sl__17C286CF]
END


End
GO
/****** Object:  Default [DF__dt_articl__is_sy__18B6AB08]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__is_sy__18B6AB08]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__is_sy__18B6AB08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] DROP CONSTRAINT [DF__dt_articl__is_sy__18B6AB08]
END


End
GO
/****** Object:  Default [DF__dt_articl__add_t__19AACF41]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__add_t__19AACF41]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__add_t__19AACF41]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] DROP CONSTRAINT [DF__dt_articl__add_t__19AACF41]
END


End
GO
/****** Object:  Default [DF__dt_articl__artic__1C873BEC]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__artic__1C873BEC]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_albums]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__artic__1C873BEC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_albums] DROP CONSTRAINT [DF__dt_articl__artic__1C873BEC]
END


End
GO
/****** Object:  Default [DF__dt_articl__thumb__1D7B6025]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__thumb__1D7B6025]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_albums]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__thumb__1D7B6025]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_albums] DROP CONSTRAINT [DF__dt_articl__thumb__1D7B6025]
END


End
GO
/****** Object:  Default [DF__dt_articl__origi__1E6F845E]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__origi__1E6F845E]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_albums]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__origi__1E6F845E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_albums] DROP CONSTRAINT [DF__dt_articl__origi__1E6F845E]
END


End
GO
/****** Object:  Default [DF__dt_articl__remar__1F63A897]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__remar__1F63A897]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_albums]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__remar__1F63A897]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_albums] DROP CONSTRAINT [DF__dt_articl__remar__1F63A897]
END


End
GO
/****** Object:  Default [DF__dt_articl__add_t__2057CCD0]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__add_t__2057CCD0]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_albums]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__add_t__2057CCD0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_albums] DROP CONSTRAINT [DF__dt_articl__add_t__2057CCD0]
END


End
GO
/****** Object:  Default [DF__dt_articl__artic__2334397B]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__artic__2334397B]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attach]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__artic__2334397B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attach] DROP CONSTRAINT [DF__dt_articl__artic__2334397B]
END


End
GO
/****** Object:  Default [DF__dt_articl__file___24285DB4]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__file___24285DB4]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attach]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__file___24285DB4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attach] DROP CONSTRAINT [DF__dt_articl__file___24285DB4]
END


End
GO
/****** Object:  Default [DF__dt_articl__file___251C81ED]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__file___251C81ED]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attach]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__file___251C81ED]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attach] DROP CONSTRAINT [DF__dt_articl__file___251C81ED]
END


End
GO
/****** Object:  Default [DF__dt_articl__file___2610A626]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__file___2610A626]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attach]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__file___2610A626]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attach] DROP CONSTRAINT [DF__dt_articl__file___2610A626]
END


End
GO
/****** Object:  Default [DF__dt_articl__file___2704CA5F]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__file___2704CA5F]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attach]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__file___2704CA5F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attach] DROP CONSTRAINT [DF__dt_articl__file___2704CA5F]
END


End
GO
/****** Object:  Default [DF__dt_articl__down___27F8EE98]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__down___27F8EE98]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attach]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__down___27F8EE98]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attach] DROP CONSTRAINT [DF__dt_articl__down___27F8EE98]
END


End
GO
/****** Object:  Default [DF__dt_articl__point__28ED12D1]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__point__28ED12D1]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attach]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__point__28ED12D1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attach] DROP CONSTRAINT [DF__dt_articl__point__28ED12D1]
END


End
GO
/****** Object:  Default [DF__dt_articl__add_t__29E1370A]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__add_t__29E1370A]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attach]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__add_t__29E1370A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attach] DROP CONSTRAINT [DF__dt_articl__add_t__29E1370A]
END


End
GO
/****** Object:  Default [DF__dt_articl__title__1EF99443]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__title__1EF99443]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_field]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__title__1EF99443]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_field] DROP CONSTRAINT [DF__dt_articl__title__1EF99443]
END


End
GO
/****** Object:  Default [DF__dt_articl__data___1FEDB87C]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__data___1FEDB87C]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_field]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__data___1FEDB87C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_field] DROP CONSTRAINT [DF__dt_articl__data___1FEDB87C]
END


End
GO
/****** Object:  Default [DF__dt_articl__data___20E1DCB5]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__data___20E1DCB5]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_field]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__data___20E1DCB5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_field] DROP CONSTRAINT [DF__dt_articl__data___20E1DCB5]
END


End
GO
/****** Object:  Default [DF__dt_articl__item___21D600EE]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__item___21D600EE]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_field]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__item___21D600EE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_field] DROP CONSTRAINT [DF__dt_articl__item___21D600EE]
END


End
GO
/****** Object:  Default [DF__dt_articl__defau__22CA2527]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__defau__22CA2527]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_field]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__defau__22CA2527]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_field] DROP CONSTRAINT [DF__dt_articl__defau__22CA2527]
END


End
GO
/****** Object:  Default [DF__dt_articl__is_re__23BE4960]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__is_re__23BE4960]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_field]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__is_re__23BE4960]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_field] DROP CONSTRAINT [DF__dt_articl__is_re__23BE4960]
END


End
GO
/****** Object:  Default [DF__dt_articl__is_pa__24B26D99]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__is_pa__24B26D99]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_field]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__is_pa__24B26D99]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_field] DROP CONSTRAINT [DF__dt_articl__is_pa__24B26D99]
END


End
GO
/****** Object:  Default [DF__dt_articl__is_ht__25A691D2]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__is_ht__25A691D2]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_field]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__is_ht__25A691D2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_field] DROP CONSTRAINT [DF__dt_articl__is_ht__25A691D2]
END


End
GO
/****** Object:  Default [DF__dt_articl__edito__269AB60B]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__edito__269AB60B]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_field]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__edito__269AB60B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_field] DROP CONSTRAINT [DF__dt_articl__edito__269AB60B]
END


End
GO
/****** Object:  Default [DF__dt_articl__valid__278EDA44]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__valid__278EDA44]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_field]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__valid__278EDA44]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_field] DROP CONSTRAINT [DF__dt_articl__valid__278EDA44]
END


End
GO
/****** Object:  Default [DF__dt_articl__valid__2882FE7D]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__valid__2882FE7D]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_field]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__valid__2882FE7D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_field] DROP CONSTRAINT [DF__dt_articl__valid__2882FE7D]
END


End
GO
/****** Object:  Default [DF__dt_articl__valid__297722B6]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__valid__297722B6]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_field]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__valid__297722B6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_field] DROP CONSTRAINT [DF__dt_articl__valid__297722B6]
END


End
GO
/****** Object:  Default [DF__dt_articl__sort___2A6B46EF]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__sort___2A6B46EF]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_field]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__sort___2A6B46EF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_field] DROP CONSTRAINT [DF__dt_articl__sort___2A6B46EF]
END


End
GO
/****** Object:  Default [DF__dt_articl__is_sy__2B5F6B28]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__is_sy__2B5F6B28]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_field]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__is_sy__2B5F6B28]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_field] DROP CONSTRAINT [DF__dt_articl__is_sy__2B5F6B28]
END


End
GO
/****** Object:  Default [DF__dt_articl__sourc__3BFFE745]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__sourc__3BFFE745]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_value]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__sourc__3BFFE745]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_value] DROP CONSTRAINT [DF__dt_articl__sourc__3BFFE745]
END


End
GO
/****** Object:  Default [DF__dt_articl__autho__3CF40B7E]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__autho__3CF40B7E]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_value]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__autho__3CF40B7E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_value] DROP CONSTRAINT [DF__dt_articl__autho__3CF40B7E]
END


End
GO
/****** Object:  Default [DF__dt_articl__goods__3DE82FB7]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__goods__3DE82FB7]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_value]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__goods__3DE82FB7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_value] DROP CONSTRAINT [DF__dt_articl__goods__3DE82FB7]
END


End
GO
/****** Object:  Default [DF__dt_articl__stock__3EDC53F0]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__stock__3EDC53F0]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_value]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__stock__3EDC53F0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_value] DROP CONSTRAINT [DF__dt_articl__stock__3EDC53F0]
END


End
GO
/****** Object:  Default [DF__dt_articl__marke__3FD07829]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__marke__3FD07829]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_value]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__marke__3FD07829]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_value] DROP CONSTRAINT [DF__dt_articl__marke__3FD07829]
END


End
GO
/****** Object:  Default [DF__dt_articl__sell___40C49C62]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__sell___40C49C62]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_value]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__sell___40C49C62]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_value] DROP CONSTRAINT [DF__dt_articl__sell___40C49C62]
END


End
GO
/****** Object:  Default [DF__dt_articl__point__41B8C09B]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__point__41B8C09B]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_value]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__point__41B8C09B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_value] DROP CONSTRAINT [DF__dt_articl__point__41B8C09B]
END


End
GO
/****** Object:  Default [DF__dt_articl__call___4589517F]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__call___4589517F]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_category]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__call___4589517F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_category] DROP CONSTRAINT [DF__dt_articl__call___4589517F]
END


End
GO
/****** Object:  Default [DF__dt_articl__paren__467D75B8]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__paren__467D75B8]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_category]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__paren__467D75B8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_category] DROP CONSTRAINT [DF__dt_articl__paren__467D75B8]
END


End
GO
/****** Object:  Default [DF__dt_articl__class__477199F1]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__class__477199F1]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_category]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__class__477199F1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_category] DROP CONSTRAINT [DF__dt_articl__class__477199F1]
END


End
GO
/****** Object:  Default [DF__dt_articl__sort___4865BE2A]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__sort___4865BE2A]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_category]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__sort___4865BE2A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_category] DROP CONSTRAINT [DF__dt_articl__sort___4865BE2A]
END


End
GO
/****** Object:  Default [DF__dt_articl__link___4959E263]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__link___4959E263]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_category]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__link___4959E263]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_category] DROP CONSTRAINT [DF__dt_articl__link___4959E263]
END


End
GO
/****** Object:  Default [DF__dt_articl__img_u__4A4E069C]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__img_u__4A4E069C]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_category]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__img_u__4A4E069C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_category] DROP CONSTRAINT [DF__dt_articl__img_u__4A4E069C]
END


End
GO
/****** Object:  Default [DF__dt_articl__seo_t__4B422AD5]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__seo_t__4B422AD5]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_category]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__seo_t__4B422AD5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_category] DROP CONSTRAINT [DF__dt_articl__seo_t__4B422AD5]
END


End
GO
/****** Object:  Default [DF__dt_articl__seo_k__4C364F0E]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__seo_k__4C364F0E]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_category]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__seo_k__4C364F0E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_category] DROP CONSTRAINT [DF__dt_articl__seo_k__4C364F0E]
END


End
GO
/****** Object:  Default [DF__dt_articl__seo_d__4D2A7347]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__seo_d__4D2A7347]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_category]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__seo_d__4D2A7347]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_category] DROP CONSTRAINT [DF__dt_articl__seo_d__4D2A7347]
END


End
GO
/****** Object:  Default [DF__dt_articl__chann__5006DFF2]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__chann__5006DFF2]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_comment]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__chann__5006DFF2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_comment] DROP CONSTRAINT [DF__dt_articl__chann__5006DFF2]
END


End
GO
/****** Object:  Default [DF__dt_articl__artic__50FB042B]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__artic__50FB042B]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_comment]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__artic__50FB042B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_comment] DROP CONSTRAINT [DF__dt_articl__artic__50FB042B]
END


End
GO
/****** Object:  Default [DF__dt_articl__paren__51EF2864]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__paren__51EF2864]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_comment]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__paren__51EF2864]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_comment] DROP CONSTRAINT [DF__dt_articl__paren__51EF2864]
END


End
GO
/****** Object:  Default [DF__dt_articl__user___52E34C9D]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__user___52E34C9D]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_comment]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__user___52E34C9D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_comment] DROP CONSTRAINT [DF__dt_articl__user___52E34C9D]
END


End
GO
/****** Object:  Default [DF__dt_articl__user___53D770D6]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__user___53D770D6]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_comment]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__user___53D770D6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_comment] DROP CONSTRAINT [DF__dt_articl__user___53D770D6]
END


End
GO
/****** Object:  Default [DF__dt_articl__is_lo__54CB950F]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__is_lo__54CB950F]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_comment]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__is_lo__54CB950F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_comment] DROP CONSTRAINT [DF__dt_articl__is_lo__54CB950F]
END


End
GO
/****** Object:  Default [DF__dt_articl__add_t__55BFB948]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__add_t__55BFB948]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_comment]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__add_t__55BFB948]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_comment] DROP CONSTRAINT [DF__dt_articl__add_t__55BFB948]
END


End
GO
/****** Object:  Default [DF__dt_articl__is_re__56B3DD81]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__is_re__56B3DD81]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_comment]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__is_re__56B3DD81]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_comment] DROP CONSTRAINT [DF__dt_articl__is_re__56B3DD81]
END


End
GO
/****** Object:  Default [DF__dt_channe__categ__59904A2C]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_channe__categ__59904A2C]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_channel]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_channe__categ__59904A2C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_channel] DROP CONSTRAINT [DF__dt_channe__categ__59904A2C]
END


End
GO
/****** Object:  Default [DF__dt_channel__name__5A846E65]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_channel__name__5A846E65]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_channel]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_channel__name__5A846E65]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_channel] DROP CONSTRAINT [DF__dt_channel__name__5A846E65]
END


End
GO
/****** Object:  Default [DF__dt_channe__title__5B78929E]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_channe__title__5B78929E]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_channel]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_channe__title__5B78929E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_channel] DROP CONSTRAINT [DF__dt_channe__title__5B78929E]
END


End
GO
/****** Object:  Default [DF__dt_channe__is_al__5C6CB6D7]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_channe__is_al__5C6CB6D7]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_channel]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_channe__is_al__5C6CB6D7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_channel] DROP CONSTRAINT [DF__dt_channe__is_al__5C6CB6D7]
END


End
GO
/****** Object:  Default [DF__dt_channe__is_at__5D60DB10]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_channe__is_at__5D60DB10]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_channel]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_channe__is_at__5D60DB10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_channel] DROP CONSTRAINT [DF__dt_channe__is_at__5D60DB10]
END


End
GO
/****** Object:  Default [DF__dt_channe__is_gr__5E54FF49]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_channe__is_gr__5E54FF49]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_channel]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_channe__is_gr__5E54FF49]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_channel] DROP CONSTRAINT [DF__dt_channe__is_gr__5E54FF49]
END


End
GO
/****** Object:  Default [DF__dt_channe__page___5F492382]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_channe__page___5F492382]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_channel]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_channe__page___5F492382]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_channel] DROP CONSTRAINT [DF__dt_channe__page___5F492382]
END


End
GO
/****** Object:  Default [DF__dt_channe__sort___603D47BB]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_channe__sort___603D47BB]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_channel]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_channe__sort___603D47BB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_channel] DROP CONSTRAINT [DF__dt_channe__sort___603D47BB]
END


End
GO
/****** Object:  Default [DF__dt_channe__title__6319B466]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_channe__title__6319B466]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_channel_category]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_channe__title__6319B466]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_channel_category] DROP CONSTRAINT [DF__dt_channe__title__6319B466]
END


End
GO
/****** Object:  Default [DF__dt_channe__build__640DD89F]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_channe__build__640DD89F]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_channel_category]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_channe__build__640DD89F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_channel_category] DROP CONSTRAINT [DF__dt_channe__build__640DD89F]
END


End
GO
/****** Object:  Default [DF__dt_channe__templ__6501FCD8]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_channe__templ__6501FCD8]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_channel_category]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_channe__templ__6501FCD8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_channel_category] DROP CONSTRAINT [DF__dt_channe__templ__6501FCD8]
END


End
GO
/****** Object:  Default [DF__dt_channe__domai__65F62111]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_channe__domai__65F62111]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_channel_category]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_channe__domai__65F62111]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_channel_category] DROP CONSTRAINT [DF__dt_channe__domai__65F62111]
END


End
GO
/****** Object:  Default [DF__dt_channe__is_de__66EA454A]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_channe__is_de__66EA454A]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_channel_category]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_channe__is_de__66EA454A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_channel_category] DROP CONSTRAINT [DF__dt_channe__is_de__66EA454A]
END


End
GO
/****** Object:  Default [DF__dt_channe__sort___67DE6983]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_channe__sort___67DE6983]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_channel_category]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_channe__sort___67DE6983]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_channel_category] DROP CONSTRAINT [DF__dt_channe__sort___67DE6983]
END


End
GO
/****** Object:  Default [DF__dt_expres__expre__6CA31EA0]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_expres__expre__6CA31EA0]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_express]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_expres__expre__6CA31EA0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_express] DROP CONSTRAINT [DF__dt_expres__expre__6CA31EA0]
END


End
GO
/****** Object:  Default [DF__dt_expres__expre__6D9742D9]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_expres__expre__6D9742D9]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_express]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_expres__expre__6D9742D9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_express] DROP CONSTRAINT [DF__dt_expres__expre__6D9742D9]
END


End
GO
/****** Object:  Default [DF__dt_expres__websi__6E8B6712]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_expres__websi__6E8B6712]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_express]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_expres__websi__6E8B6712]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_express] DROP CONSTRAINT [DF__dt_expres__websi__6E8B6712]
END


End
GO
/****** Object:  Default [DF__dt_expres__remar__6F7F8B4B]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_expres__remar__6F7F8B4B]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_express]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_expres__remar__6F7F8B4B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_express] DROP CONSTRAINT [DF__dt_expres__remar__6F7F8B4B]
END


End
GO
/****** Object:  Default [DF__dt_expres__sort___7073AF84]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_expres__sort___7073AF84]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_express]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_expres__sort___7073AF84]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_express] DROP CONSTRAINT [DF__dt_expres__sort___7073AF84]
END


End
GO
/****** Object:  Default [DF__dt_expres__is_lo__7167D3BD]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_expres__is_lo__7167D3BD]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_express]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_expres__is_lo__7167D3BD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_express] DROP CONSTRAINT [DF__dt_expres__is_lo__7167D3BD]
END


End
GO
/****** Object:  Default [DF__dt_feedba__add_t__405A880E]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_feedba__add_t__405A880E]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_feedback]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_feedba__add_t__405A880E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_feedback] DROP CONSTRAINT [DF__dt_feedba__add_t__405A880E]
END


End
GO
/****** Object:  Default [DF__dt_feedba__reply__414EAC47]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_feedba__reply__414EAC47]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_feedback]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_feedba__reply__414EAC47]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_feedback] DROP CONSTRAINT [DF__dt_feedba__reply__414EAC47]
END


End
GO
/****** Object:  Default [DF__dt_feedba__is_lo__4242D080]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_feedba__is_lo__4242D080]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_feedback]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_feedba__is_lo__4242D080]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_feedback] DROP CONSTRAINT [DF__dt_feedba__is_lo__4242D080]
END


End
GO
/****** Object:  Default [DF__dt_link__is_imag__35DCF99B]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_link__is_imag__35DCF99B]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_link]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_link__is_imag__35DCF99B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_link] DROP CONSTRAINT [DF__dt_link__is_imag__35DCF99B]
END


End
GO
/****** Object:  Default [DF__dt_link__sort_id__36D11DD4]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_link__sort_id__36D11DD4]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_link]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_link__sort_id__36D11DD4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_link] DROP CONSTRAINT [DF__dt_link__sort_id__36D11DD4]
END


End
GO
/****** Object:  Default [DF__dt_link__is_red__37C5420D]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_link__is_red__37C5420D]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_link]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_link__is_red__37C5420D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_link] DROP CONSTRAINT [DF__dt_link__is_red__37C5420D]
END


End
GO
/****** Object:  Default [DF__dt_link__add_tim__38B96646]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_link__add_tim__38B96646]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_link]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_link__add_tim__38B96646]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_link] DROP CONSTRAINT [DF__dt_link__add_tim__38B96646]
END


End
GO
/****** Object:  Default [DF__dt_mail_t__is_sy__74444068]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_mail_t__is_sy__74444068]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_mail_template]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_mail_t__is_sy__74444068]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_mail_template] DROP CONSTRAINT [DF__dt_mail_t__is_sy__74444068]
END


End
GO
/****** Object:  Default [DF__dt_manage__role___7720AD13]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_manage__role___7720AD13]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_manager]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_manage__role___7720AD13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_manager] DROP CONSTRAINT [DF__dt_manage__role___7720AD13]
END


End
GO
/****** Object:  Default [DF__dt_manage__real___7814D14C]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_manage__real___7814D14C]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_manager]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_manage__real___7814D14C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_manager] DROP CONSTRAINT [DF__dt_manage__real___7814D14C]
END


End
GO
/****** Object:  Default [DF__dt_manage__telep__7908F585]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_manage__telep__7908F585]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_manager]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_manage__telep__7908F585]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_manager] DROP CONSTRAINT [DF__dt_manage__telep__7908F585]
END


End
GO
/****** Object:  Default [DF__dt_manage__email__79FD19BE]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_manage__email__79FD19BE]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_manager]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_manage__email__79FD19BE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_manager] DROP CONSTRAINT [DF__dt_manage__email__79FD19BE]
END


End
GO
/****** Object:  Default [DF__dt_manage__is_lo__7AF13DF7]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_manage__is_lo__7AF13DF7]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_manager]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_manage__is_lo__7AF13DF7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_manager] DROP CONSTRAINT [DF__dt_manage__is_lo__7AF13DF7]
END


End
GO
/****** Object:  Default [DF__dt_manage__add_t__7BE56230]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_manage__add_t__7BE56230]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_manager]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_manage__add_t__7BE56230]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_manager] DROP CONSTRAINT [DF__dt_manage__add_t__7BE56230]
END


End
GO
/****** Object:  Default [DF__dt_manage__add_t__451F3D2B]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_manage__add_t__451F3D2B]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_manager_log]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_manage__add_t__451F3D2B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_manager_log] DROP CONSTRAINT [DF__dt_manage__add_t__451F3D2B]
END


End
GO
/****** Object:  Default [DF__dt_manage__is_sy__019E3B86]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_manage__is_sy__019E3B86]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_manager_role]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_manage__is_sy__019E3B86]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_manager_role] DROP CONSTRAINT [DF__dt_manage__is_sy__019E3B86]
END


End
GO
/****** Object:  Default [DF__dt_naviga__nav_t__0FB750B3]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_naviga__nav_t__0FB750B3]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_navigation]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_naviga__nav_t__0FB750B3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_navigation] DROP CONSTRAINT [DF__dt_naviga__nav_t__0FB750B3]
END


End
GO
/****** Object:  Default [DF__dt_navigat__name__10AB74EC]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_navigat__name__10AB74EC]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_navigation]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_navigat__name__10AB74EC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_navigation] DROP CONSTRAINT [DF__dt_navigat__name__10AB74EC]
END


End
GO
/****** Object:  Default [DF__dt_naviga__title__119F9925]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_naviga__title__119F9925]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_navigation]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_naviga__title__119F9925]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_navigation] DROP CONSTRAINT [DF__dt_naviga__title__119F9925]
END


End
GO
/****** Object:  Default [DF__dt_naviga__sub_t__1293BD5E]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_naviga__sub_t__1293BD5E]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_navigation]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_naviga__sub_t__1293BD5E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_navigation] DROP CONSTRAINT [DF__dt_naviga__sub_t__1293BD5E]
END


End
GO
/****** Object:  Default [DF__dt_naviga__link___1387E197]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_naviga__link___1387E197]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_navigation]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_naviga__link___1387E197]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_navigation] DROP CONSTRAINT [DF__dt_naviga__link___1387E197]
END


End
GO
/****** Object:  Default [DF__dt_naviga__sort___147C05D0]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_naviga__sort___147C05D0]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_navigation]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_naviga__sort___147C05D0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_navigation] DROP CONSTRAINT [DF__dt_naviga__sort___147C05D0]
END


End
GO
/****** Object:  Default [DF__dt_naviga__is_lo__15702A09]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_naviga__is_lo__15702A09]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_navigation]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_naviga__is_lo__15702A09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_navigation] DROP CONSTRAINT [DF__dt_naviga__is_lo__15702A09]
END


End
GO
/****** Object:  Default [DF__dt_naviga__remar__16644E42]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_naviga__remar__16644E42]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_navigation]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_naviga__remar__16644E42]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_navigation] DROP CONSTRAINT [DF__dt_naviga__remar__16644E42]
END


End
GO
/****** Object:  Default [DF__dt_naviga__paren__1758727B]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_naviga__paren__1758727B]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_navigation]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_naviga__paren__1758727B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_navigation] DROP CONSTRAINT [DF__dt_naviga__paren__1758727B]
END


End
GO
/****** Object:  Default [DF__dt_naviga__class__184C96B4]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_naviga__class__184C96B4]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_navigation]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_naviga__class__184C96B4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_navigation] DROP CONSTRAINT [DF__dt_naviga__class__184C96B4]
END


End
GO
/****** Object:  Default [DF__dt_naviga__class__1940BAED]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_naviga__class__1940BAED]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_navigation]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_naviga__class__1940BAED]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_navigation] DROP CONSTRAINT [DF__dt_naviga__class__1940BAED]
END


End
GO
/****** Object:  Default [DF__dt_naviga__chann__1A34DF26]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_naviga__chann__1A34DF26]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_navigation]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_naviga__chann__1A34DF26]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_navigation] DROP CONSTRAINT [DF__dt_naviga__chann__1A34DF26]
END


End
GO
/****** Object:  Default [DF__dt_naviga__actio__1B29035F]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_naviga__actio__1B29035F]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_navigation]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_naviga__actio__1B29035F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_navigation] DROP CONSTRAINT [DF__dt_naviga__actio__1B29035F]
END


End
GO
/****** Object:  Default [DF__dt_naviga__is_sy__1C1D2798]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_naviga__is_sy__1C1D2798]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_navigation]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_naviga__is_sy__1C1D2798]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_navigation] DROP CONSTRAINT [DF__dt_naviga__is_sy__1C1D2798]
END


End
GO
/****** Object:  Default [DF__dt_order___goods__15A53433]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_order___goods__15A53433]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_order_goods]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_order___goods__15A53433]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_order_goods] DROP CONSTRAINT [DF__dt_order___goods__15A53433]
END


End
GO
/****** Object:  Default [DF__dt_order___real___1699586C]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_order___real___1699586C]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_order_goods]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_order___real___1699586C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_order_goods] DROP CONSTRAINT [DF__dt_order___real___1699586C]
END


End
GO
/****** Object:  Default [DF__dt_order___quant__178D7CA5]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_order___quant__178D7CA5]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_order_goods]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_order___quant__178D7CA5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_order_goods] DROP CONSTRAINT [DF__dt_order___quant__178D7CA5]
END


End
GO
/****** Object:  Default [DF__dt_order___point__1881A0DE]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_order___point__1881A0DE]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_order_goods]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_order___point__1881A0DE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_order_goods] DROP CONSTRAINT [DF__dt_order___point__1881A0DE]
END


End
GO
/****** Object:  Default [DF__dt_orders__order__1B5E0D89]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__order__1B5E0D89]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__order__1B5E0D89]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] DROP CONSTRAINT [DF__dt_orders__order__1B5E0D89]
END


End
GO
/****** Object:  Default [DF__dt_orders__trade__1C5231C2]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__trade__1C5231C2]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__trade__1C5231C2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] DROP CONSTRAINT [DF__dt_orders__trade__1C5231C2]
END


End
GO
/****** Object:  Default [DF__dt_orders__user___1D4655FB]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__user___1D4655FB]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__user___1D4655FB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] DROP CONSTRAINT [DF__dt_orders__user___1D4655FB]
END


End
GO
/****** Object:  Default [DF__dt_orders__user___1E3A7A34]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__user___1E3A7A34]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__user___1E3A7A34]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] DROP CONSTRAINT [DF__dt_orders__user___1E3A7A34]
END


End
GO
/****** Object:  Default [DF__dt_orders__payme__1F2E9E6D]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__payme__1F2E9E6D]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__payme__1F2E9E6D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] DROP CONSTRAINT [DF__dt_orders__payme__1F2E9E6D]
END


End
GO
/****** Object:  Default [DF__dt_orders__payme__2022C2A6]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__payme__2022C2A6]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__payme__2022C2A6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] DROP CONSTRAINT [DF__dt_orders__payme__2022C2A6]
END


End
GO
/****** Object:  Default [DF__dt_orders__payme__2116E6DF]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__payme__2116E6DF]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__payme__2116E6DF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] DROP CONSTRAINT [DF__dt_orders__payme__2116E6DF]
END


End
GO
/****** Object:  Default [DF__dt_orders__expre__220B0B18]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__expre__220B0B18]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__expre__220B0B18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] DROP CONSTRAINT [DF__dt_orders__expre__220B0B18]
END


End
GO
/****** Object:  Default [DF__dt_orders__expre__22FF2F51]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__expre__22FF2F51]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__expre__22FF2F51]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] DROP CONSTRAINT [DF__dt_orders__expre__22FF2F51]
END


End
GO
/****** Object:  Default [DF__dt_orders__expre__23F3538A]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__expre__23F3538A]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__expre__23F3538A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] DROP CONSTRAINT [DF__dt_orders__expre__23F3538A]
END


End
GO
/****** Object:  Default [DF__dt_orders__expre__24E777C3]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__expre__24E777C3]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__expre__24E777C3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] DROP CONSTRAINT [DF__dt_orders__expre__24E777C3]
END


End
GO
/****** Object:  Default [DF__dt_orders__accep__25DB9BFC]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__accep__25DB9BFC]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__accep__25DB9BFC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] DROP CONSTRAINT [DF__dt_orders__accep__25DB9BFC]
END


End
GO
/****** Object:  Default [DF__dt_orders__post___26CFC035]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__post___26CFC035]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__post___26CFC035]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] DROP CONSTRAINT [DF__dt_orders__post___26CFC035]
END


End
GO
/****** Object:  Default [DF__dt_orders__telph__27C3E46E]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__telph__27C3E46E]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__telph__27C3E46E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] DROP CONSTRAINT [DF__dt_orders__telph__27C3E46E]
END


End
GO
/****** Object:  Default [DF__dt_orders__mobil__28B808A7]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__mobil__28B808A7]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__mobil__28B808A7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] DROP CONSTRAINT [DF__dt_orders__mobil__28B808A7]
END


End
GO
/****** Object:  Default [DF__dt_orders__area__29AC2CE0]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__area__29AC2CE0]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__area__29AC2CE0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] DROP CONSTRAINT [DF__dt_orders__area__29AC2CE0]
END


End
GO
/****** Object:  Default [DF__dt_orders__addre__2AA05119]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__addre__2AA05119]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__addre__2AA05119]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] DROP CONSTRAINT [DF__dt_orders__addre__2AA05119]
END


End
GO
/****** Object:  Default [DF__dt_orders__messa__2B947552]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__messa__2B947552]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__messa__2B947552]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] DROP CONSTRAINT [DF__dt_orders__messa__2B947552]
END


End
GO
/****** Object:  Default [DF__dt_orders__remar__2C88998B]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__remar__2C88998B]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__remar__2C88998B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] DROP CONSTRAINT [DF__dt_orders__remar__2C88998B]
END


End
GO
/****** Object:  Default [DF__dt_orders__payab__2D7CBDC4]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__payab__2D7CBDC4]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__payab__2D7CBDC4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] DROP CONSTRAINT [DF__dt_orders__payab__2D7CBDC4]
END


End
GO
/****** Object:  Default [DF__dt_orders__real___2E70E1FD]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__real___2E70E1FD]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__real___2E70E1FD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] DROP CONSTRAINT [DF__dt_orders__real___2E70E1FD]
END


End
GO
/****** Object:  Default [DF__dt_orders__order__2F650636]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__order__2F650636]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__order__2F650636]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] DROP CONSTRAINT [DF__dt_orders__order__2F650636]
END


End
GO
/****** Object:  Default [DF__dt_orders__point__30592A6F]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__point__30592A6F]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__point__30592A6F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] DROP CONSTRAINT [DF__dt_orders__point__30592A6F]
END


End
GO
/****** Object:  Default [DF__dt_orders__statu__314D4EA8]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__statu__314D4EA8]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__statu__314D4EA8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] DROP CONSTRAINT [DF__dt_orders__statu__314D4EA8]
END


End
GO
/****** Object:  Default [DF__dt_orders__add_t__324172E1]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__add_t__324172E1]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__add_t__324172E1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] DROP CONSTRAINT [DF__dt_orders__add_t__324172E1]
END


End
GO
/****** Object:  Default [DF__dt_paymen__img_u__351DDF8C]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_paymen__img_u__351DDF8C]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_payment]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_paymen__img_u__351DDF8C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_payment] DROP CONSTRAINT [DF__dt_paymen__img_u__351DDF8C]
END


End
GO
/****** Object:  Default [DF__dt_payment__type__361203C5]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_payment__type__361203C5]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_payment]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_payment__type__361203C5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_payment] DROP CONSTRAINT [DF__dt_payment__type__361203C5]
END


End
GO
/****** Object:  Default [DF__dt_paymen__pound__370627FE]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_paymen__pound__370627FE]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_payment]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_paymen__pound__370627FE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_payment] DROP CONSTRAINT [DF__dt_paymen__pound__370627FE]
END


End
GO
/****** Object:  Default [DF__dt_paymen__pound__37FA4C37]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_paymen__pound__37FA4C37]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_payment]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_paymen__pound__37FA4C37]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_payment] DROP CONSTRAINT [DF__dt_paymen__pound__37FA4C37]
END


End
GO
/****** Object:  Default [DF__dt_paymen__sort___38EE7070]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_paymen__sort___38EE7070]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_payment]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_paymen__sort___38EE7070]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_payment] DROP CONSTRAINT [DF__dt_paymen__sort___38EE7070]
END


End
GO
/****** Object:  Default [DF__dt_paymen__is_lo__39E294A9]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_paymen__is_lo__39E294A9]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_payment]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_paymen__is_lo__39E294A9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_payment] DROP CONSTRAINT [DF__dt_paymen__is_lo__39E294A9]
END


End
GO
/****** Object:  Default [DF__dt_sms_te__title__3CBF0154]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_sms_te__title__3CBF0154]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_sms_template]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_sms_te__title__3CBF0154]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_sms_template] DROP CONSTRAINT [DF__dt_sms_te__title__3CBF0154]
END


End
GO
/****** Object:  Default [DF__dt_sms_te__call___3DB3258D]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_sms_te__call___3DB3258D]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_sms_template]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_sms_te__call___3DB3258D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_sms_template] DROP CONSTRAINT [DF__dt_sms_te__call___3DB3258D]
END


End
GO
/****** Object:  Default [DF__dt_sms_te__conte__3EA749C6]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_sms_te__conte__3EA749C6]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_sms_template]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_sms_te__conte__3EA749C6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_sms_template] DROP CONSTRAINT [DF__dt_sms_te__conte__3EA749C6]
END


End
GO
/****** Object:  Default [DF__dt_sms_te__is_sy__3F9B6DFF]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_sms_te__is_sy__3F9B6DFF]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_sms_template]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_sms_te__is_sy__3F9B6DFF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_sms_template] DROP CONSTRAINT [DF__dt_sms_te__is_sy__3F9B6DFF]
END


End
GO
/****** Object:  Default [DF__dt_user_a__order__4277DAAA]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_a__order__4277DAAA]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_amount_log]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_a__order__4277DAAA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_amount_log] DROP CONSTRAINT [DF__dt_user_a__order__4277DAAA]
END


End
GO
/****** Object:  Default [DF__dt_user_a__payme__436BFEE3]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_a__payme__436BFEE3]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_amount_log]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_a__payme__436BFEE3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_amount_log] DROP CONSTRAINT [DF__dt_user_a__payme__436BFEE3]
END


End
GO
/****** Object:  Default [DF__dt_user_a__value__4460231C]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_a__value__4460231C]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_amount_log]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_a__value__4460231C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_amount_log] DROP CONSTRAINT [DF__dt_user_a__value__4460231C]
END


End
GO
/****** Object:  Default [DF__dt_user_a__remar__45544755]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_a__remar__45544755]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_amount_log]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_a__remar__45544755]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_amount_log] DROP CONSTRAINT [DF__dt_user_a__remar__45544755]
END


End
GO
/****** Object:  Default [DF__dt_user_a__statu__46486B8E]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_a__statu__46486B8E]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_amount_log]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_a__statu__46486B8E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_amount_log] DROP CONSTRAINT [DF__dt_user_a__statu__46486B8E]
END


End
GO
/****** Object:  Default [DF__dt_user_a__add_t__473C8FC7]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_a__add_t__473C8FC7]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_amount_log]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_a__add_t__473C8FC7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_amount_log] DROP CONSTRAINT [DF__dt_user_a__add_t__473C8FC7]
END


End
GO
/****** Object:  Default [DF__dt_user_c__count__4A18FC72]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_c__count__4A18FC72]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_code]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_c__count__4A18FC72]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_code] DROP CONSTRAINT [DF__dt_user_c__count__4A18FC72]
END


End
GO
/****** Object:  Default [DF__dt_user_c__statu__4B0D20AB]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_c__statu__4B0D20AB]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_code]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_c__statu__4B0D20AB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_code] DROP CONSTRAINT [DF__dt_user_c__statu__4B0D20AB]
END


End
GO
/****** Object:  Default [DF__dt_user_c__add_t__4C0144E4]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_c__add_t__4C0144E4]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_code]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_c__add_t__4C0144E4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_code] DROP CONSTRAINT [DF__dt_user_c__add_t__4C0144E4]
END


End
GO
/****** Object:  Default [DF__dt_user_g__artic__4EDDB18F]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_g__artic__4EDDB18F]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_group_price]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_g__artic__4EDDB18F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_group_price] DROP CONSTRAINT [DF__dt_user_g__artic__4EDDB18F]
END


End
GO
/****** Object:  Default [DF__dt_user_g__group__4FD1D5C8]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_g__group__4FD1D5C8]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_group_price]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_g__group__4FD1D5C8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_group_price] DROP CONSTRAINT [DF__dt_user_g__group__4FD1D5C8]
END


End
GO
/****** Object:  Default [DF__dt_user_g__price__50C5FA01]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_g__price__50C5FA01]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_group_price]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_g__price__50C5FA01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_group_price] DROP CONSTRAINT [DF__dt_user_g__price__50C5FA01]
END


End
GO
/****** Object:  Default [DF__dt_user_g__title__53A266AC]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_g__title__53A266AC]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_groups]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_g__title__53A266AC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_groups] DROP CONSTRAINT [DF__dt_user_g__title__53A266AC]
END


End
GO
/****** Object:  Default [DF__dt_user_g__grade__54968AE5]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_g__grade__54968AE5]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_groups]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_g__grade__54968AE5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_groups] DROP CONSTRAINT [DF__dt_user_g__grade__54968AE5]
END


End
GO
/****** Object:  Default [DF__dt_user_g__upgra__558AAF1E]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_g__upgra__558AAF1E]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_groups]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_g__upgra__558AAF1E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_groups] DROP CONSTRAINT [DF__dt_user_g__upgra__558AAF1E]
END


End
GO
/****** Object:  Default [DF__dt_user_g__amoun__567ED357]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_g__amoun__567ED357]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_groups]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_g__amoun__567ED357]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_groups] DROP CONSTRAINT [DF__dt_user_g__amoun__567ED357]
END


End
GO
/****** Object:  Default [DF__dt_user_g__point__5772F790]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_g__point__5772F790]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_groups]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_g__point__5772F790]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_groups] DROP CONSTRAINT [DF__dt_user_g__point__5772F790]
END


End
GO
/****** Object:  Default [DF__dt_user_g__is_de__58671BC9]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_g__is_de__58671BC9]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_groups]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_g__is_de__58671BC9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_groups] DROP CONSTRAINT [DF__dt_user_g__is_de__58671BC9]
END


End
GO
/****** Object:  Default [DF__dt_user_g__is_up__595B4002]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_g__is_up__595B4002]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_groups]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_g__is_up__595B4002]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_groups] DROP CONSTRAINT [DF__dt_user_g__is_up__595B4002]
END


End
GO
/****** Object:  Default [DF__dt_user_g__is_lo__5A4F643B]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_g__is_lo__5A4F643B]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_groups]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_g__is_lo__5A4F643B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_groups] DROP CONSTRAINT [DF__dt_user_g__is_lo__5A4F643B]
END


End
GO
/****** Object:  Default [DF__dt_user_l__user___5D2BD0E6]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_l__user___5D2BD0E6]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_login_log]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_l__user___5D2BD0E6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_login_log] DROP CONSTRAINT [DF__dt_user_l__user___5D2BD0E6]
END


End
GO
/****** Object:  Default [DF__dt_user_l__remar__5E1FF51F]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_l__remar__5E1FF51F]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_login_log]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_l__remar__5E1FF51F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_login_log] DROP CONSTRAINT [DF__dt_user_l__remar__5E1FF51F]
END


End
GO
/****** Object:  Default [DF__dt_user_l__login__5F141958]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_l__login__5F141958]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_login_log]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_l__login__5F141958]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_login_log] DROP CONSTRAINT [DF__dt_user_l__login__5F141958]
END


End
GO
/****** Object:  Default [DF__dt_user_l__login__60083D91]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_l__login__60083D91]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_login_log]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_l__login__60083D91]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_login_log] DROP CONSTRAINT [DF__dt_user_l__login__60083D91]
END


End
GO
/****** Object:  Default [DF__dt_user_me__type__62E4AA3C]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_me__type__62E4AA3C]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_message]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_me__type__62E4AA3C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_message] DROP CONSTRAINT [DF__dt_user_me__type__62E4AA3C]
END


End
GO
/****** Object:  Default [DF__dt_user_m__is_re__63D8CE75]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_m__is_re__63D8CE75]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_message]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_m__is_re__63D8CE75]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_message] DROP CONSTRAINT [DF__dt_user_m__is_re__63D8CE75]
END


End
GO
/****** Object:  Default [DF__dt_user_m__post___64CCF2AE]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_m__post___64CCF2AE]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_message]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_m__post___64CCF2AE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_message] DROP CONSTRAINT [DF__dt_user_m__post___64CCF2AE]
END


End
GO
/****** Object:  Default [DF__dt_user_o__oauth__67A95F59]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_o__oauth__67A95F59]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_oauth]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_o__oauth__67A95F59]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_oauth] DROP CONSTRAINT [DF__dt_user_o__oauth__67A95F59]
END


End
GO
/****** Object:  Default [DF__dt_user_o__add_t__689D8392]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_o__add_t__689D8392]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_oauth]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_o__add_t__689D8392]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_oauth] DROP CONSTRAINT [DF__dt_user_o__add_t__689D8392]
END


End
GO
/****** Object:  Default [DF__dt_user_o__title__6B79F03D]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_o__title__6B79F03D]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_oauth_app]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_o__title__6B79F03D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_oauth_app] DROP CONSTRAINT [DF__dt_user_o__title__6B79F03D]
END


End
GO
/****** Object:  Default [DF__dt_user_o__img_u__6C6E1476]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_o__img_u__6C6E1476]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_oauth_app]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_o__img_u__6C6E1476]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_oauth_app] DROP CONSTRAINT [DF__dt_user_o__img_u__6C6E1476]
END


End
GO
/****** Object:  Default [DF__dt_user_o__remar__6D6238AF]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_o__remar__6D6238AF]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_oauth_app]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_o__remar__6D6238AF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_oauth_app] DROP CONSTRAINT [DF__dt_user_o__remar__6D6238AF]
END


End
GO
/****** Object:  Default [DF__dt_user_o__sort___6E565CE8]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_o__sort___6E565CE8]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_oauth_app]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_o__sort___6E565CE8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_oauth_app] DROP CONSTRAINT [DF__dt_user_o__sort___6E565CE8]
END


End
GO
/****** Object:  Default [DF__dt_user_o__is_lo__6F4A8121]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_o__is_lo__6F4A8121]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_oauth_app]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_o__is_lo__6F4A8121]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_oauth_app] DROP CONSTRAINT [DF__dt_user_o__is_lo__6F4A8121]
END


End
GO
/****** Object:  Default [DF__dt_user_o__api_p__703EA55A]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_o__api_p__703EA55A]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_oauth_app]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_o__api_p__703EA55A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_oauth_app] DROP CONSTRAINT [DF__dt_user_o__api_p__703EA55A]
END


End
GO
/****** Object:  Default [DF__dt_user_p__add_t__731B1205]    Script Date: 05/18/2015 14:58:56 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_p__add_t__731B1205]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_point_log]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_p__add_t__731B1205]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_point_log] DROP CONSTRAINT [DF__dt_user_p__add_t__731B1205]
END


End
GO
/****** Object:  Default [DF__dt_users__group___75F77EB0]    Script Date: 05/18/2015 14:58:57 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_users__group___75F77EB0]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_users]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_users__group___75F77EB0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_users] DROP CONSTRAINT [DF__dt_users__group___75F77EB0]
END


End
GO
/****** Object:  Default [DF__dt_users__email__76EBA2E9]    Script Date: 05/18/2015 14:58:57 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_users__email__76EBA2E9]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_users]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_users__email__76EBA2E9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_users] DROP CONSTRAINT [DF__dt_users__email__76EBA2E9]
END


End
GO
/****** Object:  Default [DF__dt_users__nick_n__77DFC722]    Script Date: 05/18/2015 14:58:57 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_users__nick_n__77DFC722]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_users]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_users__nick_n__77DFC722]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_users] DROP CONSTRAINT [DF__dt_users__nick_n__77DFC722]
END


End
GO
/****** Object:  Default [DF__dt_users__avatar__78D3EB5B]    Script Date: 05/18/2015 14:58:57 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_users__avatar__78D3EB5B]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_users]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_users__avatar__78D3EB5B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_users] DROP CONSTRAINT [DF__dt_users__avatar__78D3EB5B]
END


End
GO
/****** Object:  Default [DF__dt_users__sex__79C80F94]    Script Date: 05/18/2015 14:58:57 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_users__sex__79C80F94]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_users]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_users__sex__79C80F94]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_users] DROP CONSTRAINT [DF__dt_users__sex__79C80F94]
END


End
GO
/****** Object:  Default [DF__dt_users__telpho__7ABC33CD]    Script Date: 05/18/2015 14:58:57 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_users__telpho__7ABC33CD]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_users]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_users__telpho__7ABC33CD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_users] DROP CONSTRAINT [DF__dt_users__telpho__7ABC33CD]
END


End
GO
/****** Object:  Default [DF__dt_users__mobile__7BB05806]    Script Date: 05/18/2015 14:58:57 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_users__mobile__7BB05806]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_users]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_users__mobile__7BB05806]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_users] DROP CONSTRAINT [DF__dt_users__mobile__7BB05806]
END


End
GO
/****** Object:  Default [DF__dt_users__qq__7CA47C3F]    Script Date: 05/18/2015 14:58:57 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_users__qq__7CA47C3F]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_users]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_users__qq__7CA47C3F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_users] DROP CONSTRAINT [DF__dt_users__qq__7CA47C3F]
END


End
GO
/****** Object:  Default [DF__dt_users__safe_q__7D98A078]    Script Date: 05/18/2015 14:58:57 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_users__safe_q__7D98A078]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_users]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_users__safe_q__7D98A078]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_users] DROP CONSTRAINT [DF__dt_users__safe_q__7D98A078]
END


End
GO
/****** Object:  Default [DF__dt_users__safe_a__7E8CC4B1]    Script Date: 05/18/2015 14:58:57 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_users__safe_a__7E8CC4B1]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_users]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_users__safe_a__7E8CC4B1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_users] DROP CONSTRAINT [DF__dt_users__safe_a__7E8CC4B1]
END


End
GO
/****** Object:  Default [DF__dt_users__amount__7F80E8EA]    Script Date: 05/18/2015 14:58:57 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_users__amount__7F80E8EA]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_users]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_users__amount__7F80E8EA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_users] DROP CONSTRAINT [DF__dt_users__amount__7F80E8EA]
END


End
GO
/****** Object:  Default [DF__dt_users__point__00750D23]    Script Date: 05/18/2015 14:58:57 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_users__point__00750D23]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_users]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_users__point__00750D23]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_users] DROP CONSTRAINT [DF__dt_users__point__00750D23]
END


End
GO
/****** Object:  Default [DF__dt_users__exp__0169315C]    Script Date: 05/18/2015 14:58:57 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_users__exp__0169315C]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_users]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_users__exp__0169315C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_users] DROP CONSTRAINT [DF__dt_users__exp__0169315C]
END


End
GO
/****** Object:  Default [DF__dt_users__status__025D5595]    Script Date: 05/18/2015 14:58:57 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_users__status__025D5595]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_users]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_users__status__025D5595]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_users] DROP CONSTRAINT [DF__dt_users__status__025D5595]
END


End
GO
/****** Object:  Default [DF__dt_users__reg_ti__035179CE]    Script Date: 05/18/2015 14:58:57 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_users__reg_ti__035179CE]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_users]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_users__reg_ti__035179CE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_users] DROP CONSTRAINT [DF__dt_users__reg_ti__035179CE]
END


End
GO
/****** Object:  Default [DF_dt_users_express_id]    Script Date: 05/18/2015 14:58:57 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_dt_users_express_id]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_users]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_dt_users_express_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_users] DROP CONSTRAINT [DF_dt_users_express_id]
END


End
GO
/****** Object:  Table [dbo].[ax_user_groups]    Script Date: 05/18/2015 14:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_user_groups]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ax_user_groups](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[grade] [int] NULL,
	[upgrade_exp] [int] NULL,
	[amount] [decimal](9, 2) NULL,
	[point] [int] NULL,
	[discount] [int] NULL,
	[is_default] [tinyint] NULL,
	[is_upgrade] [tinyint] NULL,
	[is_lock] [tinyint] NULL,
 CONSTRAINT [PK_DT_USER_GROUPS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[ax_user_groups] ON
INSERT [dbo].[ax_user_groups] ([id], [title], [grade], [upgrade_exp], [amount], [point], [discount], [is_default], [is_upgrade], [is_lock]) VALUES (1, N'普通会员', 1, 0, CAST(0.00 AS Decimal(9, 2)), 10, 100, 1, 1, 0)
INSERT [dbo].[ax_user_groups] ([id], [title], [grade], [upgrade_exp], [amount], [point], [discount], [is_default], [is_upgrade], [is_lock]) VALUES (2, N'VIP会员', 2, 1000, CAST(0.00 AS Decimal(9, 2)), 0, 100, 0, 1, 0)
SET IDENTITY_INSERT [dbo].[ax_user_groups] OFF
/****** Object:  Table [dbo].[ax_user_group_price]    Script Date: 05/18/2015 14:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_user_group_price]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ax_user_group_price](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[article_id] [int] NULL,
	[group_id] [int] NULL,
	[price] [decimal](9, 2) NULL,
 CONSTRAINT [PK_DT_USER_GROUP_PRICE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[ax_user_group_price] ON
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (53, 103, 1, CAST(88.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (54, 103, 2, CAST(87.12 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (55, 104, 1, CAST(158.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (56, 104, 2, CAST(156.42 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (57, 105, 1, CAST(88.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (58, 105, 2, CAST(87.12 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (63, 129, 1, CAST(5.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (64, 129, 2, CAST(5.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (65, 130, 1, CAST(5.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (66, 130, 2, CAST(5.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (67, 131, 1, CAST(3.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (68, 131, 2, CAST(3.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (69, 132, 1, CAST(5.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (70, 132, 2, CAST(5.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (71, 133, 1, CAST(3.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (72, 133, 2, CAST(3.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (73, 134, 1, CAST(5.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (74, 134, 2, CAST(5.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (75, 144, 1, CAST(3.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (76, 144, 2, CAST(3.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (77, 145, 1, CAST(3.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (78, 145, 2, CAST(3.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (79, 146, 1, CAST(3.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (80, 146, 2, CAST(3.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (81, 147, 1, CAST(2.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (82, 147, 2, CAST(2.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (83, 148, 1, CAST(7.90 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (84, 148, 2, CAST(7.90 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (85, 149, 1, CAST(7.90 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (86, 149, 2, CAST(7.90 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (87, 150, 1, CAST(7.90 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (88, 150, 2, CAST(7.90 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (89, 151, 1, CAST(7.90 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (90, 151, 2, CAST(7.90 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (91, 152, 1, CAST(3.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (92, 152, 2, CAST(3.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (93, 153, 1, CAST(4.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (94, 153, 2, CAST(4.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (95, 154, 1, CAST(4.20 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (96, 154, 2, CAST(4.20 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (97, 155, 1, CAST(4.20 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (98, 155, 2, CAST(4.20 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (99, 156, 1, CAST(52.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (100, 156, 2, CAST(52.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (101, 157, 1, CAST(47.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (102, 157, 2, CAST(47.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (103, 158, 1, CAST(45.80 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (104, 158, 2, CAST(45.80 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (105, 159, 1, CAST(57.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (106, 159, 2, CAST(57.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (107, 160, 1, CAST(46.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (108, 160, 2, CAST(46.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (109, 161, 1, CAST(3.80 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (110, 161, 2, CAST(3.80 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (111, 162, 1, CAST(3.80 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (112, 162, 2, CAST(3.80 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (113, 163, 1, CAST(5.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (114, 163, 2, CAST(5.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (115, 164, 1, CAST(5.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (116, 164, 2, CAST(5.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (117, 165, 1, CAST(2.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (118, 165, 2, CAST(2.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (119, 166, 1, CAST(5.30 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (120, 166, 2, CAST(5.30 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (121, 167, 1, CAST(8.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (122, 167, 2, CAST(8.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (123, 168, 1, CAST(4.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (124, 168, 2, CAST(4.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (125, 169, 1, CAST(6.80 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (126, 169, 2, CAST(6.80 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (127, 170, 1, CAST(12.80 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (128, 170, 2, CAST(12.80 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (129, 171, 1, CAST(12.80 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (130, 171, 2, CAST(12.80 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (131, 172, 1, CAST(6.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (132, 172, 2, CAST(6.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (133, 173, 1, CAST(8.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (134, 173, 2, CAST(8.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (135, 174, 1, CAST(8.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (136, 174, 2, CAST(8.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (137, 175, 1, CAST(8.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (138, 175, 2, CAST(8.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (139, 176, 1, CAST(8.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (140, 176, 2, CAST(8.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (141, 177, 1, CAST(34.80 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (142, 177, 2, CAST(34.80 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (143, 178, 1, CAST(6.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (144, 178, 2, CAST(6.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (145, 179, 1, CAST(6.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (146, 179, 2, CAST(6.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (147, 180, 1, CAST(6.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (148, 180, 2, CAST(6.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (149, 181, 1, CAST(2.20 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (150, 181, 2, CAST(2.20 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (151, 182, 1, CAST(2.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (152, 182, 2, CAST(2.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (153, 183, 1, CAST(2.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (154, 183, 2, CAST(2.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (155, 184, 1, CAST(4.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (156, 184, 2, CAST(4.50 AS Decimal(9, 2)))
GO
print 'Processed 100 total records'
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (157, 185, 1, CAST(2.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (158, 185, 2, CAST(2.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (159, 186, 1, CAST(3.80 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (160, 186, 2, CAST(3.80 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (161, 187, 1, CAST(1.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (162, 187, 2, CAST(1.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (163, 188, 1, CAST(2.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (164, 188, 2, CAST(2.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (165, 189, 1, CAST(2.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (166, 189, 2, CAST(2.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (167, 190, 1, CAST(2.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (168, 190, 2, CAST(2.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (169, 191, 1, CAST(3.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (170, 191, 2, CAST(3.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (171, 192, 1, CAST(3.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (172, 192, 2, CAST(3.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (173, 193, 1, CAST(3.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (174, 193, 2, CAST(3.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (175, 194, 1, CAST(3.80 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (176, 194, 2, CAST(3.80 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (177, 195, 1, CAST(2.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (178, 195, 2, CAST(2.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (179, 196, 1, CAST(2.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (180, 196, 2, CAST(2.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (181, 197, 1, CAST(4.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (182, 197, 2, CAST(4.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (183, 198, 1, CAST(3.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (184, 198, 2, CAST(3.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (185, 199, 1, CAST(3.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (186, 199, 2, CAST(3.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (187, 200, 1, CAST(3.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (188, 200, 2, CAST(3.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (189, 201, 1, CAST(4.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (190, 201, 2, CAST(4.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (191, 202, 1, CAST(4.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (192, 202, 2, CAST(4.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (193, 203, 1, CAST(3.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (194, 203, 2, CAST(3.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (195, 204, 1, CAST(5.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (196, 204, 2, CAST(5.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (197, 205, 1, CAST(24.80 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (198, 205, 2, CAST(24.80 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (199, 206, 1, CAST(24.80 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (200, 206, 2, CAST(24.80 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (201, 207, 1, CAST(24.80 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (202, 207, 2, CAST(24.80 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (203, 208, 1, CAST(29.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (204, 208, 2, CAST(29.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (205, 209, 1, CAST(15.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (206, 209, 2, CAST(15.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (207, 210, 1, CAST(15.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (208, 210, 2, CAST(15.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (209, 211, 1, CAST(23.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (210, 211, 2, CAST(23.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (211, 212, 1, CAST(19.80 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (212, 212, 2, CAST(19.80 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (213, 213, 1, CAST(18.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (214, 213, 2, CAST(18.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (215, 214, 1, CAST(18.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (216, 214, 2, CAST(18.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (217, 215, 1, CAST(8.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (218, 215, 2, CAST(8.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (219, 216, 1, CAST(39.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (220, 216, 2, CAST(39.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (221, 217, 1, CAST(22.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (222, 217, 2, CAST(22.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (223, 218, 1, CAST(42.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (224, 218, 2, CAST(42.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (225, 219, 1, CAST(22.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (226, 219, 2, CAST(22.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (227, 220, 1, CAST(19.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (228, 220, 2, CAST(19.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (229, 221, 1, CAST(15.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (230, 221, 2, CAST(15.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (231, 222, 1, CAST(15.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (232, 222, 2, CAST(15.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (233, 223, 1, CAST(15.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (234, 223, 2, CAST(15.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (235, 224, 1, CAST(14.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (236, 224, 2, CAST(14.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (237, 225, 1, CAST(3.80 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (238, 225, 2, CAST(3.80 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (239, 226, 1, CAST(16.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (240, 226, 2, CAST(16.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (241, 227, 1, CAST(3.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (242, 227, 2, CAST(3.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (243, 228, 1, CAST(4.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (244, 228, 2, CAST(4.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (245, 229, 1, CAST(6.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (246, 229, 2, CAST(6.50 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (247, 230, 1, CAST(27.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (248, 230, 2, CAST(27.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (249, 231, 1, CAST(6.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (250, 231, 2, CAST(6.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (251, 232, 1, CAST(398.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (252, 232, 2, CAST(398.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (253, 233, 1, CAST(45.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (254, 233, 2, CAST(45.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (255, 234, 1, CAST(880.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (256, 234, 2, CAST(880.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (257, 235, 1, CAST(48.00 AS Decimal(9, 2)))
GO
print 'Processed 200 total records'
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (258, 235, 2, CAST(48.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (259, 236, 1, CAST(16.00 AS Decimal(9, 2)))
INSERT [dbo].[ax_user_group_price] ([id], [article_id], [group_id], [price]) VALUES (260, 236, 2, CAST(16.00 AS Decimal(9, 2)))
SET IDENTITY_INSERT [dbo].[ax_user_group_price] OFF
/****** Object:  Table [dbo].[ax_user_point_log]    Script Date: 05/18/2015 14:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_user_point_log]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ax_user_point_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[value] [int] NULL,
	[remark] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_USER_POINT_LOG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[ax_user_oauth_app]    Script Date: 05/18/2015 14:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_user_oauth_app]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ax_user_oauth_app](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[img_url] [nvarchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[app_id] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[app_key] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[remark] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[sort_id] [int] NULL,
	[is_lock] [tinyint] NULL,
	[api_path] [nvarchar](255) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_DT_USER_OAUTH_APP] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[ax_user_oauth_app] ON
INSERT [dbo].[ax_user_oauth_app] ([id], [title], [img_url], [app_id], [app_key], [remark], [sort_id], [is_lock], [api_path]) VALUES (1, N'用QQ帐号登录', N'/upload/201301/22/201301222356267017.png', N'API Key', N'Secret Key', N'QQ互联开放平台', 99, 0, N'qq')
INSERT [dbo].[ax_user_oauth_app] ([id], [title], [img_url], [app_id], [app_key], [remark], [sort_id], [is_lock], [api_path]) VALUES (2, N'用新浪微博登录', N'/upload/201301/22/201301222358108990.png', N'API Key', N'Secret Key', N'新浪微博开放平台', 100, 0, N'sina')
INSERT [dbo].[ax_user_oauth_app] ([id], [title], [img_url], [app_id], [app_key], [remark], [sort_id], [is_lock], [api_path]) VALUES (3, N'用淘宝账号登录', N'/upload/201301/22/201301222359116140.png', N'API Key', N'Secret Key', N'淘宝开放平台', 101, 0, N'taobao')
INSERT [dbo].[ax_user_oauth_app] ([id], [title], [img_url], [app_id], [app_key], [remark], [sort_id], [is_lock], [api_path]) VALUES (4, N'用开心网帐号登录', N'/upload/201301/22/201301222359597445.png', N'API Key', N'Secret Key', N'开心网开放平台', 102, 0, N'kaixin')
INSERT [dbo].[ax_user_oauth_app] ([id], [title], [img_url], [app_id], [app_key], [remark], [sort_id], [is_lock], [api_path]) VALUES (5, N'用人人网帐号登录', N'/upload/201301/23/201301230000421311.png', N'API Key', N'Secret Key', N'人人网开放平台', 103, 0, N'renren')
INSERT [dbo].[ax_user_oauth_app] ([id], [title], [img_url], [app_id], [app_key], [remark], [sort_id], [is_lock], [api_path]) VALUES (6, N'用飞信账号登录', N'/upload/201301/23/201301230001220360.png', N'API Key', N'Secret Key', N'中国移动飞信开放平台', 104, 0, N'feixin')
SET IDENTITY_INSERT [dbo].[ax_user_oauth_app] OFF
/****** Object:  Table [dbo].[ax_user_oauth]    Script Date: 05/18/2015 14:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_user_oauth]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ax_user_oauth](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[oauth_name] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[oauth_access_token] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[oauth_openid] [nvarchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_USER_OAUTH] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[ax_user_message]    Script Date: 05/18/2015 14:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_user_message]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ax_user_message](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [tinyint] NULL,
	[post_user_name] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[accept_user_name] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[is_read] [tinyint] NULL,
	[title] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[content] [ntext] COLLATE Chinese_PRC_CI_AS NULL,
	[post_time] [datetime] NOT NULL,
	[read_time] [datetime] NULL,
 CONSTRAINT [PK_DT_USER_MESSAGE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[ax_navigation]    Script Date: 05/18/2015 14:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_navigation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ax_navigation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nav_type] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[name] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[title] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[sub_title] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[link_url] [nvarchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[sort_id] [int] NULL,
	[is_lock] [tinyint] NULL,
	[remark] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[parent_id] [int] NULL,
	[class_list] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[class_layer] [int] NULL,
	[channel_id] [int] NULL,
	[action_type] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[is_sys] [tinyint] NULL,
 CONSTRAINT [PK_DT_NAVIGATION] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[ax_navigation] ON
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (1, N'System', N'sys_contents', N'内容管理', N'内容管理', N'', 1, 0, N'', 0, N',1,', 1, 0, N'Show', 1)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (2, N'System', N'sys_users', N'会员管理', N'会员管理', N'', 2, 0, N'系统默认导航，不可更改导航ID', 0, N',2,', 1, 0, N'Show', 1)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (3, N'System', N'sys_orders', N'订单管理', N'订单管理', N'', 4, 0, N'系统默认导航，不可修改导航ID', 0, N',3,', 1, 0, N'Show', 1)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (4, N'System', N'sys_design', N'界面管理', N'界面设置', N'', 5, 0, N'系统默认导航，不可更改导航ID', 0, N',4,', 1, 0, N'Show', 1)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (5, N'System', N'sys_controller', N'控制面板', N'控制面板', N'', 6, 0, N'系统默认导航，不可修改导航ID', 0, N',5,', 1, 0, N'Show', 1)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (7, N'System', N'user_manage', N'会员管理', N'', N'', 1, 0, N'', 2, N',2,7,', 2, 0, N'Show', 0)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (8, N'System', N'user_log', N'会员日志', N'', N'', 2, 0, N'', 2, N',2,8,', 2, 0, N'Show', 0)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (9, N'System', N'user_settings', N'会员设置', N'', N'', 3, 0, N'', 2, N',2,9,', 2, 0, N'Show', 0)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (10, N'System', N'order_manage', N'订单管理', N'', N'', 1, 0, N'', 3, N',3,10,', 2, 0, N'Show', 0)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (11, N'System', N'order_settings', N'订单设置', N'', N'', 2, 0, N'', 3, N',3,11,', 2, 0, N'Show', 0)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (12, N'System', N'app_manage', N'应用管理', N'', N'', 1, 0, N'', 4, N',4,12,', 2, 0, N'Show', 0)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (13, N'System', N'site_manage', N'系统管理', N'', N'', 1, 0, N'', 5, N',5,13,', 2, 0, N'Show', 0)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (14, N'System', N'sys_manager', N'系统用户', N'', N'', 2, 0, N'', 5, N',5,14,', 2, 0, N'Show', 0)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (15, N'System', N'user_audit', N'审核会员', N'', N'users/user_audit.aspx', 1, 0, N'', 7, N',2,7,15,', 3, 0, N'Show,View,Audit', 0)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (16, N'System', N'user_list', N'所有会员', N'', N'users/user_list.aspx', 2, 0, N'', 7, N',2,7,16,', 3, 0, N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (17, N'System', N'user_group', N'会员组别', N'', N'users/group_list.aspx', 3, 0, N'', 7, N',2,7,17,', 3, 0, N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (18, N'System', N'user_sms', N'发送短信', N'', N'users/user_sms.aspx', 1, 0, N'', 8, N',2,8,18,', 3, 0, N'Show,View,Add', 0)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (19, N'System', N'user_message', N'站内消息', N'', N'users/message_list.aspx', 2, 0, N'', 8, N',2,8,19,', 3, 0, N'Show,View,Add,Delete', 0)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (20, N'System', N'user_point_log', N'积分记录', N'', N'users/point_log.aspx', 3, 0, N'', 8, N',2,8,20,', 3, 0, N'Show,View,Delete', 0)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (21, N'System', N'user_amount_log', N'消费记录', N'', N'users/amount_log.aspx', 4, 0, N'', 8, N',2,8,21,', 3, 0, N'Show,View,Delete', 0)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (22, N'System', N'user_config', N'参数设置', N'', N'users/user_config.aspx', 1, 0, N'', 9, N',2,9,22,', 3, 0, N'Show,View,Edit', 0)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (23, N'System', N'user_sms_template', N'短信模板', N'', N'users/sms_template_list.aspx', 2, 0, N'', 9, N',2,9,23,', 3, 0, N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (24, N'System', N'user_mail_template', N'邮件模板', N'', N'users/mail_template_list.aspx', 3, 0, N'', 9, N',2,9,24,', 3, 0, N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (25, N'System', N'user_oauth', N'OAuth设置', N'', N'users/oauth_app_list.aspx', 4, 0, N'', 9, N',2,9,25,', 3, 0, N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (26, N'System', N'order_confirm', N'待确认订单', N'', N'order/order_confirm.aspx', 1, 0, N'', 10, N',3,10,26,', 3, 0, N'Show,View,Confirm', 0)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (27, N'System', N'order_list', N'全部订单', N'', N'order/order_list.aspx', 2, 0, N'', 10, N',3,10,27,', 3, 0, N'Show,View,Add,Edit,Delete,Confirm,Cancel,Invalid', 0)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (28, N'System', N'order_config', N'订单参数设置', N'', N'order/order_config.aspx', 1, 0, N'', 11, N',3,11,28,', 3, 0, N'Show,View,Edit', 0)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (29, N'System', N'order_payment', N'支付方式设置', N'', N'order/payment_list.aspx', 1, 0, N'', 11, N',3,11,29,', 3, 0, N'Show,View,Edit', 0)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (30, N'System', N'order_express', N'配送小区设置', N'', N'order/express_list.aspx', 3, 0, N'', 11, N',3,11,30,', 3, 0, N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (31, N'System', N'app_templet_list', N'网站模板管理', N'', N'settings/templet_list.aspx', 1, 0, N'', 12, N',4,12,31,', 3, 0, N'Show,View,Add,Edit,Delete,Build', 0)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (33, N'System', N'app_builder_html', N'生成静态页面', N'', N'settings/builder_html.aspx', 3, 0, N'', 12, N',4,12,33,', 3, 0, N'Show,View,Build', 0)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (34, N'System', N'app_navigation_list', N'后台栏目管理', N'', N'settings/nav_list.aspx', 4, 0, N'', 12, N',4,12,34,', 3, 0, N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (35, N'System', N'site_config', N'系统设置', N'', N'settings/sys_config.aspx', 1, 0, N'', 13, N',5,13,35,', 3, 0, N'Show,View,Edit', 0)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (36, N'System', N'site_url_rewrite', N'URL配置', N'', N'settings/url_rewrite_list.aspx', 2, 0, N'', 13, N',5,13,36,', 3, 0, N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (37, N'System', N'site_channel_list', N'频道管理', N'', N'channel/channel_list.aspx', 3, 0, N'', 13, N',5,13,37,', 3, 0, N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (38, N'System', N'site_channel_category', N'频道分类', N'', N'channel/category_list.aspx', 4, 0, N'', 13, N',5,13,38,', 3, 0, N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (39, N'System', N'site_channel_field', N'扩展字段', N'', N'channel/attribute_field_list.aspx', 5, 0, N'', 13, N',5,13,39,', 3, 0, N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (40, N'System', N'manager_list', N'管理员管理', N'', N'manager/manager_list.aspx', 1, 0, N'', 14, N',5,14,40,', 3, 0, N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (41, N'System', N'manager_role', N'角色管理', N'', N'manager/role_list.aspx', 2, 0, N'', 14, N',5,14,41,', 3, 0, N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (42, N'System', N'manager_log', N'管理日志', N'', N'manager/manager_log.aspx', 3, 0, N'', 14, N',5,14,42,', 3, 0, N'Show,View,Delete', 0)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (43, N'System', N'channel_main', N'网上商城', N'', N'', 1, 0, N'', 1, N',1,43,', 2, 0, N'Show', 1)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (44, N'System', N'channel_news', N'新闻资讯', N'', N'', 2, 0, N'', 43, N',1,43,44,', 3, 1, N'Show', 1)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (45, N'System', N'channel_news_list', N'内容管理', N'', N'article/article_list.aspx', 1, 0, N'', 44, N',1,43,44,45,', 4, 1, N'Show,View,Add,Edit,Delete,Audit', 1)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (46, N'System', N'channel_news_category', N'栏目类别', N'', N'article/category_list.aspx', 2, 0, N'', 44, N',1,43,44,46,', 4, 1, N'Show,View,Add,Edit,Delete', 1)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (47, N'System', N'channel_news_comment', N'评论管理', N'', N'article/comment_list.aspx', 3, 0, N'', 44, N',1,43,44,47,', 4, 1, N'Show,View,Delete,Reply', 1)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (48, N'System', N'channel_goods', N'购物商城', N'', N'', 1, 0, N'', 43, N',1,43,48,', 3, 2, N'Show', 1)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (49, N'System', N'channel_goods_list', N'内容管理', N'', N'article/article_list.aspx', 1, 0, N'', 48, N',1,43,48,49,', 4, 2, N'Show,View,Add,Edit,Delete,Audit', 1)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (50, N'System', N'channel_goods_category', N'栏目类别', N'', N'article/category_list.aspx', 3, 0, N'', 48, N',1,43,48,50,', 4, 2, N'Show,View,Add,Edit,Delete', 1)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (51, N'System', N'channel_goods_comment', N'评论管理', N'', N'article/comment_list.aspx', 2, 0, N'', 48, N',1,43,48,51,', 4, 2, N'Show,View,Delete,Reply', 1)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (52, N'System', N'channel_photo', N'广告管理', N'', N'', 3, 0, N'', 43, N',1,43,52,', 3, 3, N'Show', 1)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (53, N'System', N'channel_photo_list', N'内容管理', N'', N'article/article_list.aspx', 1, 0, N'', 52, N',1,43,52,53,', 4, 3, N'Show,View,Add,Edit,Delete,Audit', 1)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (54, N'System', N'channel_photo_category', N'栏目类别', N'', N'article/category_list.aspx', 2, 0, N'', 52, N',1,43,52,54,', 4, 3, N'Show,View,Add,Edit,Delete', 1)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (55, N'System', N'channel_photo_comment', N'评论管理', N'', N'article/comment_list.aspx', 3, 0, N'', 52, N',1,43,52,55,', 4, 3, N'Show,View,Delete,Reply', 1)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (56, N'System', N'channel_down', N'积分商城', N'', N'', 4, 0, N'', 43, N',1,43,56,', 3, 4, N'Show', 1)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (57, N'System', N'channel_down_list', N'内容管理', N'', N'article/article_list.aspx', 1, 0, N'', 56, N',1,43,56,57,', 4, 4, N'Show,View,Add,Edit,Delete,Audit', 1)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (58, N'System', N'channel_down_category', N'栏目类别', N'', N'article/category_list.aspx', 2, 0, N'', 56, N',1,43,56,58,', 4, 4, N'Show,View,Add,Edit,Delete', 1)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (59, N'System', N'channel_down_comment', N'评论管理', N'', N'article/comment_list.aspx', 3, 0, N'', 56, N',1,43,56,59,', 4, 4, N'Show,View,Delete,Reply', 1)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (60, N'System', N'channel_content', N'网店帮助', N'', N'', 5, 0, N'', 43, N',1,43,60,', 3, 5, N'Show', 1)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (61, N'System', N'channel_content_list', N'内容管理', N'', N'article/article_list.aspx', 1, 0, N'', 60, N',1,43,60,61,', 4, 5, N'Show,View,Add,Edit,Delete,Audit', 1)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (62, N'System', N'channel_content_category', N'栏目类别', N'', N'article/category_list.aspx', 2, 0, N'', 60, N',1,43,60,62,', 4, 5, N'Show,View,Add,Edit,Delete', 1)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (63, N'System', N'channel_content_comment', N'评论管理', N'', N'article/comment_list.aspx', 3, 0, N'', 60, N',1,43,60,63,', 4, 5, N'Show,View,Delete,Reply', 1)
INSERT [dbo].[ax_navigation] ([id], [nav_type], [name], [title], [sub_title], [link_url], [sort_id], [is_lock], [remark], [parent_id], [class_list], [class_layer], [channel_id], [action_type], [is_sys]) VALUES (67, N'System', N'shangpingpai', N'商品品牌管理', N'商品品牌管理', N'article/category_list.aspx?channel_id=6', 4, 0, N'', 48, N',1,43,48,67,', 4, 0, N'Show,View,Add,Edit,Delete', 0)
SET IDENTITY_INSERT [dbo].[ax_navigation] OFF
/****** Object:  Table [dbo].[ax_mail_template]    Script Date: 05/18/2015 14:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_mail_template]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ax_mail_template](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[call_index] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[maill_title] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[content] [ntext] COLLATE Chinese_PRC_CI_AS NULL,
	[is_sys] [tinyint] NULL,
 CONSTRAINT [PK_DT_MAIL_TEMPLATE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[ax_mail_template] ON
INSERT [dbo].[ax_mail_template] ([id], [title], [call_index], [maill_title], [content], [is_sys]) VALUES (1, N'会员注册链接邮件', N'registerlink', N'新用户注册链接(请勿回复此邮件)', N'<p>
	欢迎您成为{webname}会员用户，请点击如下的网址继续注册：
</p>
<p>
	<a href="{linkurl}" target="_blank">{linkurl}</a> 
</p>
<hr />
<p>
	此链接有效期为{valid}天，请在{valid}天内点击链接进行注册；如果您从未注册过本站会员，请忽略本邮件；此邮件为系统自动发出，请勿回复。<br />
任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>', 1)
INSERT [dbo].[ax_mail_template] ([id], [title], [call_index], [maill_title], [content], [is_sys]) VALUES (2, N'注册激活账户邮件', N'regverify', N'激活注册账户(请勿回复此邮件)', N'<p>
	<strong>尊敬的{username}，您好：</strong> 
</p>
<p>
	&nbsp;&nbsp;&nbsp; 欢迎您成为{webname}会员用户，请点击如下的网址进行激活您的会员账户：
</p>
<p>
	&nbsp;&nbsp;&nbsp; <a href="{linkurl}" target="_blank">{linkurl}</a> 
</p>
<hr />
<p>
	此链接有效期为{valid}天，请在{valid}天内点击链接进行注册；如果您从未注册过本站会员，请忽略本邮件；此邮件为系统自动发出，请勿回复。<br />
任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>', 1)
INSERT [dbo].[ax_mail_template] ([id], [title], [call_index], [maill_title], [content], [is_sys]) VALUES (3, N'用户取回密码', N'getpassword', N'找回密码提示(请勿回复此邮件)', N'<strong>{username}，您好：</strong><br />
<p>
	您在<span style="color:#FF0000;">{webname}</span>点击了“忘记密码”找回申请，故系统自动为您发送了这封邮件。您可以点击以下链接修改您的密码：<br />
<a href="{linkurl}" target="_blank">{linkurl}</a> 
</p>
<hr />
<p>
	此链接有效期为{valid}天，请在{valid}天内点击链接进行修改。如果您不需要修改密码，或者您从未点击过“忘记密码”按钮，请忽略本邮件。<br />
任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>', 1)
INSERT [dbo].[ax_mail_template] ([id], [title], [call_index], [maill_title], [content], [is_sys]) VALUES (4, N'欢迎新用户邮件', N'welcomemsg', N'欢迎新用户(请勿回复此邮件)', N'<p>
	<strong>尊敬的{username}，您好：</strong> 
</p>
<p>
	&nbsp;&nbsp;&nbsp; 您已成功注册并正式成为{webname}会员用户，请您注意保管好个人账户信息，防止丢失或泄漏。
</p>
<hr />
<p>
	此邮件为系统自动发出，请勿回复本邮件，任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>', 1)
INSERT [dbo].[ax_mail_template] ([id], [title], [call_index], [maill_title], [content], [is_sys]) VALUES (5, N'订单确认通知', N'order_confirm', N'订单确认通知', N'<p>
	<strong>尊敬的{username}，您好：</strong> 
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 您在{webname}的一笔订单已确认，订单号为：{orderno}，共计{amount}元，我们会尽快安排发货，请您耐心等待，祝您购物愉快！
</p>
<hr />
<p>
	此邮件为系统自动发出，请勿回复本邮件，任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>', 1)
INSERT [dbo].[ax_mail_template] ([id], [title], [call_index], [maill_title], [content], [is_sys]) VALUES (6, N'订单发货通知', N'order_express', N'订单发货通知', N'<p>
	<strong>尊敬的{username}，您好：</strong> 
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 您在{webname}的一笔订单已经发货，订单号为：{orderno}，共计{amount}元，请您注意查收，祝您购物愉快！
</p>
<hr />
<p>
	此邮件为系统自动发出，请勿回复本邮件，任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>', 1)
INSERT [dbo].[ax_mail_template] ([id], [title], [call_index], [maill_title], [content], [is_sys]) VALUES (7, N'订单完成通知', N'order_complete', N'订单完成通知', N'<p>
	<strong>尊敬的{username}，您好：</strong> 
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 您在{webname}的一笔订单交易完成，订单号为：{orderno}，共计{amount}元，期待您下次光临，祝您购物愉快！
</p>
<hr />
<p>
	此邮件为系统自动发出，请勿回复本邮件，任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>', 1)
SET IDENTITY_INSERT [dbo].[ax_mail_template] OFF
/****** Object:  Table [dbo].[ax_link]    Script Date: 05/18/2015 14:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_link]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ax_link](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[user_name] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[user_tel] [nvarchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[email] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[site_url] [nvarchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[img_url] [nvarchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[is_image] [int] NOT NULL,
	[sort_id] [int] NOT NULL,
	[is_red] [tinyint] NOT NULL,
	[is_lock] [tinyint] NOT NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK__dt_link__34E8D562] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[ax_feedback]    Script Date: 05/18/2015 14:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_feedback]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ax_feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[content] [ntext] COLLATE Chinese_PRC_CI_AS NULL,
	[user_name] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[user_tel] [nvarchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[user_qq] [nvarchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[user_email] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[add_time] [datetime] NOT NULL,
	[reply_content] [ntext] COLLATE Chinese_PRC_CI_AS NULL,
	[reply_time] [datetime] NULL,
	[is_lock] [tinyint] NOT NULL,
 CONSTRAINT [PK__dt_feedback__3F6663D5] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[ax_express]    Script Date: 05/18/2015 14:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_express]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ax_express](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[express_code] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[express_fee] [decimal](9, 2) NULL,
	[website] [nvarchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[remark] [ntext] COLLATE Chinese_PRC_CI_AS NULL,
	[sort_id] [int] NULL,
	[is_lock] [tinyint] NULL,
 CONSTRAINT [PK_DT_EXPRESS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[ax_express] ON
INSERT [dbo].[ax_express] ([id], [title], [express_code], [express_fee], [website], [remark], [sort_id], [is_lock]) VALUES (1, N'一号小区', N'一号配送点', CAST(0.00 AS Decimal(9, 2)), N'', N'', 1, 0)
INSERT [dbo].[ax_express] ([id], [title], [express_code], [express_fee], [website], [remark], [sort_id], [is_lock]) VALUES (4, N'二号小区', N'三号配送点', CAST(0.00 AS Decimal(9, 2)), N'', N'', 2, 0)
INSERT [dbo].[ax_express] ([id], [title], [express_code], [express_fee], [website], [remark], [sort_id], [is_lock]) VALUES (5, N'三号小区', N'二号配送点', CAST(0.00 AS Decimal(9, 2)), N'', N'', 3, 0)
SET IDENTITY_INSERT [dbo].[ax_express] OFF
/****** Object:  Table [dbo].[ax_channel_category]    Script Date: 05/18/2015 14:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_channel_category]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ax_channel_category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[build_path] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[templet_path] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[domain] [nvarchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[is_default] [tinyint] NULL,
	[sort_id] [int] NULL,
 CONSTRAINT [PK_DT_CHANNEL_CATEGORY] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[ax_channel_category] ON
INSERT [dbo].[ax_channel_category] ([id], [title], [build_path], [templet_path], [domain], [is_default], [sort_id]) VALUES (1, N'网上商城', N'main', N'green', N'', 1, 1)
SET IDENTITY_INSERT [dbo].[ax_channel_category] OFF
/****** Object:  Table [dbo].[ax_manager_role]    Script Date: 05/18/2015 14:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_manager_role]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ax_manager_role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[role_type] [tinyint] NULL,
	[is_sys] [tinyint] NULL,
 CONSTRAINT [PK_DT_MANAGER_ROLE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[ax_manager_role] ON
INSERT [dbo].[ax_manager_role] ([id], [role_name], [role_type], [is_sys]) VALUES (1, N'超级管理组', 1, 1)
INSERT [dbo].[ax_manager_role] ([id], [role_name], [role_type], [is_sys]) VALUES (2, N'系统管理组', 2, 0)
INSERT [dbo].[ax_manager_role] ([id], [role_name], [role_type], [is_sys]) VALUES (3, N'公司配送', 2, 0)
INSERT [dbo].[ax_manager_role] ([id], [role_name], [role_type], [is_sys]) VALUES (4, N'公司客服', 2, 0)
SET IDENTITY_INSERT [dbo].[ax_manager_role] OFF
/****** Object:  Table [dbo].[ax_manager_log]    Script Date: 05/18/2015 14:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_manager_log]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ax_manager_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[action_type] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[remark] [nvarchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[user_ip] [nvarchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_MANAGER_LOG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[ax_manager_log] ON
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (759, 1, N'admin', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A3EE0152790A AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (760, 1, N'admin', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A3EE01584B9C AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (761, 1, N'admin', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A3EE01589EFA AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (762, 1, N'admin', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A3EE017CB9F1 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (763, 1, N'admin', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A3EF013811F5 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (764, 1, N'admin', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A3EF0138FE59 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (765, 1, N'admin', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A3EF013D6545 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (766, 1, N'admin', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A3EF01410E67 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (767, 1, N'admin', N'Add', N'修改导航信息:订单管理', N'127.0.0.1', CAST(0x0000A3EF01527557 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (768, 1, N'admin', N'Add', N'修改导航信息:会员管理', N'127.0.0.1', CAST(0x0000A3EF015289B9 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (769, 1, N'admin', N'Add', N'修改导航信息:内容管理', N'127.0.0.1', CAST(0x0000A3EF0152B502 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (770, 1, N'admin', N'Add', N'修改导航信息:界面管理', N'127.0.0.1', CAST(0x0000A3EF0152CF93 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (771, 1, N'admin', N'Reply', N'回复频道评论ID:16', N'127.0.0.1', CAST(0x0000A3EF0152FE6A AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (772, 1, N'admin', N'Edit', N'修改系统配置信息', N'127.0.0.1', CAST(0x0000A3EF01542F44 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (773, 1, N'admin', N'Build', N'生成模板:green', N'127.0.0.1', CAST(0x0000A3EF01547DC8 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (774, 1, N'admin', N'Edit', N'修改系统配置信息', N'127.0.0.1', CAST(0x0000A3EF01549E48 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (775, 1, N'admin', N'Build', N'生成模板:green', N'127.0.0.1', CAST(0x0000A3EF0154A8CB AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (776, 1, N'admin', N'Edit', N'修改系统配置信息', N'127.0.0.1', CAST(0x0000A3EF0154B1B1 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (777, 1, N'admin', N'Edit', N'修改系统配置信息', N'127.0.0.1', CAST(0x0000A3EF015898CA AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (778, 1, N'admin', N'Delete', N'删除导航信息', N'127.0.0.1', CAST(0x0000A3EF0159A3DE AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (779, 1, N'admin', N'Add', N'修改导航信息:后台栏目管理', N'127.0.0.1', CAST(0x0000A3EF0159C374 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (780, 1, N'admin', N'Edit', N'修改系统配置信息', N'127.0.0.1', CAST(0x0000A3EF015A2B17 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (781, 1, N'admin', N'Add', N'添加content频道内容:走进我们', N'127.0.0.1', CAST(0x0000A3EF015CC3B5 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (782, 1, N'admin', N'Edit', N'删除content频道内容成功1条，失败0条', N'127.0.0.1', CAST(0x0000A3EF015CCB1B AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (783, 1, N'admin', N'Add', N'添加content频道内容:加入我们', N'127.0.0.1', CAST(0x0000A3EF015CD812 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (784, 1, N'admin', N'Add', N'添加content频道内容:如何下单', N'127.0.0.1', CAST(0x0000A3EF015CE4FF AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (785, 1, N'admin', N'Add', N'添加content频道内容:配送时间', N'127.0.0.1', CAST(0x0000A3EF015CF440 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (786, 1, N'admin', N'Add', N'添加content频道内容:货到付款', N'127.0.0.1', CAST(0x0000A3EF015D08F5 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (787, 1, N'admin', N'Add', N'添加content频道内容:在线支付', N'127.0.0.1', CAST(0x0000A3EF015D1A6D AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (788, 1, N'admin', N'Add', N'添加content频道内容:取消订单', N'127.0.0.1', CAST(0x0000A3EF015D2BFD AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (789, 1, N'admin', N'Add', N'添加content频道内容:退货换货', N'127.0.0.1', CAST(0x0000A3EF015D3EAE AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (790, 1, N'admin', N'Add', N'添加content频道内容:商店入驻', N'127.0.0.1', CAST(0x0000A3EF015D71A8 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (791, 1, N'admin', N'Add', N'添加content频道内容:广告服务', N'127.0.0.1', CAST(0x0000A3EF015D801F AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (792, 1, N'admin', N'Add', N'添加content频道内容:注册登录', N'127.0.0.1', CAST(0x0000A3EF015D8E76 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (793, 1, N'admin', N'Add', N'添加content频道内容:找回密码', N'127.0.0.1', CAST(0x0000A3EF015DAAA4 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (794, 1, N'admin', N'Edit', N'修改content频道内容:走进我们', N'127.0.0.1', CAST(0x0000A3EF015E3151 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (795, 1, N'admin', N'Edit', N'修改content频道内容:找回密码', N'127.0.0.1', CAST(0x0000A3EF015E7324 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (796, 1, N'admin', N'Edit', N'修改content频道内容:注册登录', N'127.0.0.1', CAST(0x0000A3EF015E8AD1 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (797, 1, N'admin', N'Edit', N'修改content频道内容:广告服务', N'127.0.0.1', CAST(0x0000A3EF015E9BC5 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (798, 1, N'admin', N'Edit', N'修改content频道内容:商店入驻', N'127.0.0.1', CAST(0x0000A3EF015EAF20 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (799, 1, N'admin', N'Edit', N'修改content频道内容:退货换货', N'127.0.0.1', CAST(0x0000A3EF015EC3E8 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (800, 1, N'admin', N'Edit', N'修改content频道内容:取消订单', N'127.0.0.1', CAST(0x0000A3EF015EF2DB AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (801, 1, N'admin', N'Edit', N'修改content频道内容:在线支付', N'127.0.0.1', CAST(0x0000A3EF015F0588 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (802, 1, N'admin', N'Edit', N'修改content频道内容:货到付款', N'127.0.0.1', CAST(0x0000A3EF015F1771 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (803, 1, N'admin', N'Edit', N'修改content频道内容:配送时间', N'127.0.0.1', CAST(0x0000A3EF015F3C4D AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (804, 1, N'admin', N'Edit', N'修改content频道内容:如何下单', N'127.0.0.1', CAST(0x0000A3EF015F4A79 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (805, 1, N'admin', N'Edit', N'修改content频道内容:加入我们', N'127.0.0.1', CAST(0x0000A3EF015F61F7 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (806, 1, N'admin', N'Edit', N'修改模板文件:_header.html', N'127.0.0.1', CAST(0x0000A3EF01618BFD AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (807, 1, N'admin', N'Add', N'添加content频道栏目分类:联系我们', N'127.0.0.1', CAST(0x0000A3EF0161DC35 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (808, 1, N'admin', N'Edit', N'保存content频道栏目分类排序', N'127.0.0.1', CAST(0x0000A3EF0161E370 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (809, 1, N'admin', N'Add', N'添加content频道内容:联系我们', N'127.0.0.1', CAST(0x0000A3EF0162178D AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (810, 1, N'admin', N'Build', N'生成模板:green', N'127.0.0.1', CAST(0x0000A3EF01629079 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (811, 1, N'admin', N'Add', N'修改导航信息:留言 /链接管理', N'127.0.0.1', CAST(0x0000A3EF01634C28 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (812, 1, N'admin', N'Add', N'修改导航信息:链接管理', N'127.0.0.1', CAST(0x0000A3EF016380DF AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (813, 1, N'admin', N'Add', N'修改导航信息:链接管理', N'127.0.0.1', CAST(0x0000A3EF01639130 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (814, 1, N'admin', N'Add', N'修改导航信息:留言管理', N'127.0.0.1', CAST(0x0000A3EF0163A79E AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (815, 1, N'admin', N'Add', N'修改导航信息:网店帮助', N'127.0.0.1', CAST(0x0000A3EF0164D913 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (816, 1, N'admin', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A3EF016D3AD0 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (817, 1, N'admin', N'Edit', N'修改管理员:admin', N'127.0.0.1', CAST(0x0000A3EF016DBCD1 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (818, 1, N'admin', N'Edit', N'修改管理员:admin', N'127.0.0.1', CAST(0x0000A3EF016DCEA7 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (819, 1, N'admin', N'Edit', N'修改管理员:admin', N'127.0.0.1', CAST(0x0000A3EF016DF17B AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (820, 1, N'admin', N'Delete', N'删除管理日志742条', N'127.0.0.1', CAST(0x0000A3EF016DFBFE AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (821, 1, N'admin', N'Delete', N'删除管理日志0条', N'127.0.0.1', CAST(0x0000A3EF016E0397 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (822, 1, N'admin', N'Edit', N'修改系统配置信息', N'127.0.0.1', CAST(0x0000A3EF016E331B AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (823, 1, N'admin', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A3F000AB9FCA AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (824, 1, N'admin', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A3F100C00A46 AS DateTime))
INSERT [dbo].[ax_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (825, 1, N'51aspx', N'Login', N'用户登录', N'127.0.0.1', CAST(0x0000A3F100C06D39 AS DateTime))
SET IDENTITY_INSERT [dbo].[ax_manager_log] OFF
/****** Object:  Table [dbo].[ax_user_amount_log]    Script Date: 05/18/2015 14:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_user_amount_log]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ax_user_amount_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[type] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[order_no] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[trade_no] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[payment_id] [int] NULL,
	[value] [decimal](9, 2) NULL,
	[remark] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[status] [tinyint] NULL,
	[add_time] [datetime] NULL,
	[complete_time] [datetime] NULL,
 CONSTRAINT [PK_DT_USER_AMOUNT_LOG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[ax_user_amount_log] ON
INSERT [dbo].[ax_user_amount_log] ([id], [user_id], [user_name], [type], [order_no], [trade_no], [payment_id], [value], [remark], [status], [add_time], [complete_time]) VALUES (1, 1, N'aaaaaa', N'SysGive', N'', N'', 0, CAST(1.00 AS Decimal(9, 2)), N'注册赠送金额', 1, CAST(0x0000A3960174FF65 AS DateTime), CAST(0x0000A3960174FF65 AS DateTime))
INSERT [dbo].[ax_user_amount_log] ([id], [user_id], [user_name], [type], [order_no], [trade_no], [payment_id], [value], [remark], [status], [add_time], [complete_time]) VALUES (3, 1, N'aaaaaa', N'Recharge', N'R14083020472620', N'', 3, CAST(111.00 AS Decimal(9, 2)), N'账户充值(支付宝)', 0, CAST(0x0000A39701569EED AS DateTime), CAST(0x0000A39701569EF2 AS DateTime))
SET IDENTITY_INSERT [dbo].[ax_user_amount_log] OFF
/****** Object:  Table [dbo].[ax_sms_template]    Script Date: 05/18/2015 14:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_sms_template]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ax_sms_template](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[call_index] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[content] [ntext] COLLATE Chinese_PRC_CI_AS NULL,
	[is_sys] [tinyint] NULL,
 CONSTRAINT [PK_DT_SMS_TEMPLATE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[ax_sms_template] ON
INSERT [dbo].[ax_sms_template] ([id], [title], [call_index], [content], [is_sys]) VALUES (1, N'会员验证码短信', N'usercode', N'您的验证码为：{code}，{valid}分钟内有效。', 1)
INSERT [dbo].[ax_sms_template] ([id], [title], [call_index], [content], [is_sys]) VALUES (2, N'欢迎新用户短信', N'welcomemsg', N'欢迎成为{webname}会员，你的用户名为：{username}，注意保管好您的账户信息。', 1)
INSERT [dbo].[ax_sms_template] ([id], [title], [call_index], [content], [is_sys]) VALUES (3, N'订单确认通知', N'order_confirm', N'尊敬的{username}，您在{webname}的订单已确认，订单号为：{orderno}，共计{amount}元，我们会尽快安排发货。', 1)
INSERT [dbo].[ax_sms_template] ([id], [title], [call_index], [content], [is_sys]) VALUES (4, N'订单发货通知', N'order_express', N'尊敬的{username}，您在{webname}的订单已发货，订单号为：{orderno}，请注意查收。', 1)
INSERT [dbo].[ax_sms_template] ([id], [title], [call_index], [content], [is_sys]) VALUES (5, N'订单完成通知', N'order_complete', N'尊敬的{username}，您在{webname}的一笔订单交易完成，订单号为：{orderno}，期待下次光临，祝您购物愉快。', 1)
SET IDENTITY_INSERT [dbo].[ax_sms_template] OFF
/****** Object:  Table [dbo].[ax_payment]    Script Date: 05/18/2015 14:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_payment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ax_payment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[img_url] [nvarchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[remark] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[type] [tinyint] NULL,
	[poundage_type] [tinyint] NULL,
	[poundage_amount] [decimal](9, 2) NULL,
	[sort_id] [int] NULL,
	[is_lock] [tinyint] NULL,
	[api_path] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_DT_PAYMENT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[ax_payment] ON
INSERT [dbo].[ax_payment] ([id], [title], [img_url], [remark], [type], [poundage_type], [poundage_amount], [sort_id], [is_lock], [api_path]) VALUES (1, N'货到付款', N'', N'收到商品后进行现金支付。', 2, 2, CAST(0.00 AS Decimal(9, 2)), 1, 0, N'')
INSERT [dbo].[ax_payment] ([id], [title], [img_url], [remark], [type], [poundage_type], [poundage_amount], [sort_id], [is_lock], [api_path]) VALUES (2, N'账户余额', N'', N'账户余额是客户在网站上的账户资金', 1, 2, CAST(0.00 AS Decimal(9, 2)), 2, 0, N'balance')
INSERT [dbo].[ax_payment] ([id], [title], [img_url], [remark], [type], [poundage_type], [poundage_amount], [sort_id], [is_lock], [api_path]) VALUES (3, N'支付宝', N'', N'付款后立即到账，无预付/年费，单笔费率阶梯最低0.7%，无流量限制。<a href="https://www.alipay.com/himalayas/practicality_customer.htm?customer_external_id=C433530444855584111X&market_type=from_agent_contract&pro_codes=61F99645EC0DC4380ADE569DD132AD7A" target="_blank">立即申请</a>', 1, 2, CAST(0.00 AS Decimal(9, 2)), 3, 0, N'alipay')
SET IDENTITY_INSERT [dbo].[ax_payment] OFF
/****** Object:  Table [dbo].[ax_orders]    Script Date: 05/18/2015 14:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_orders]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ax_orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_no] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[trade_no] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[payment_id] [int] NULL,
	[payment_fee] [decimal](9, 2) NULL,
	[payment_status] [tinyint] NULL,
	[payment_time] [datetime] NULL,
	[express_id] [int] NULL,
	[express_no] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[express_fee] [decimal](9, 2) NULL,
	[express_status] [tinyint] NULL,
	[express_time] [datetime] NULL,
	[accept_name] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[post_code] [nvarchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[telphone] [nvarchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[mobile] [nvarchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[area] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[address] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[message] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[remark] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[payable_amount] [decimal](9, 2) NULL,
	[real_amount] [decimal](9, 2) NULL,
	[order_amount] [decimal](9, 2) NULL,
	[point] [int] NULL,
	[status] [tinyint] NULL,
	[add_time] [datetime] NULL,
	[confirm_time] [datetime] NULL,
	[complete_time] [datetime] NULL,
 CONSTRAINT [PK_DT_ORDERS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[ax_orders] ON
INSERT [dbo].[ax_orders] ([id], [order_no], [trade_no], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [express_id], [express_no], [express_fee], [express_status], [express_time], [accept_name], [post_code], [telphone], [mobile], [area], [address], [message], [remark], [payable_amount], [real_amount], [order_amount], [point], [status], [add_time], [confirm_time], [complete_time]) VALUES (3, N'B14090123520496', N'', 3, N'bbbbbb', 1, CAST(0.00 AS Decimal(9, 2)), 0, NULL, 4, N'tyt', CAST(0.00 AS Decimal(9, 2)), 2, CAST(0x0000A39A016BC8E8 AS DateTime), N'ddd', N'', N'', N'13243232345', N'', N'sssssssssssss', N'', N'', CAST(1899.00 AS Decimal(9, 2)), CAST(1899.00 AS Decimal(9, 2)), CAST(1899.00 AS Decimal(9, 2)), 23, 4, CAST(0x0000A39901895430 AS DateTime), CAST(0x0000A39A01650ABC AS DateTime), NULL)
INSERT [dbo].[ax_orders] ([id], [order_no], [trade_no], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [express_id], [express_no], [express_fee], [express_status], [express_time], [accept_name], [post_code], [telphone], [mobile], [area], [address], [message], [remark], [payable_amount], [real_amount], [order_amount], [point], [status], [add_time], [confirm_time], [complete_time]) VALUES (4, N'B14090221370443', N'', 1, N'aaaaaa', 3, CAST(0.00 AS Decimal(9, 2)), 2, CAST(0x0000A39A0168FF3C AS DateTime), 5, N'111', CAST(0.00 AS Decimal(9, 2)), 2, CAST(0x0000A39A01692390 AS DateTime), N'fff', N'', N'', N'13222222222', N'', N'jjjjjjjjjjjjjjjjjjjjjjjjjj', N'', N'', CAST(1999.00 AS Decimal(9, 2)), CAST(1999.00 AS Decimal(9, 2)), CAST(1999.00 AS Decimal(9, 2)), 20, 3, CAST(0x0000A39A01644000 AS DateTime), CAST(0x0000A39A0168FF3C AS DateTime), CAST(0x0000A39A0169361C AS DateTime))
INSERT [dbo].[ax_orders] ([id], [order_no], [trade_no], [user_id], [user_name], [payment_id], [payment_fee], [payment_status], [payment_time], [express_id], [express_no], [express_fee], [express_status], [express_time], [accept_name], [post_code], [telphone], [mobile], [area], [address], [message], [remark], [payable_amount], [real_amount], [order_amount], [point], [status], [add_time], [confirm_time], [complete_time]) VALUES (5, N'B14091616215955', N'', 1, N'aaaaaa', 1, CAST(0.00 AS Decimal(9, 2)), 0, NULL, 4, N'', CAST(0.00 AS Decimal(9, 2)), 1, NULL, N'fff', N'', N'', N'13222222222', N'', N'jjjjjjjjjjjjjjjjjjjjjjjjjj', N'', N'', CAST(8.50 AS Decimal(9, 2)), CAST(8.50 AS Decimal(9, 2)), CAST(8.50 AS Decimal(9, 2)), 8, 1, CAST(0x0000A3A8010DB612 AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[ax_orders] OFF
/****** Object:  Table [dbo].[ax_article_attribute_field]    Script Date: 05/18/2015 14:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_field]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ax_article_attribute_field](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[title] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[control_type] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[data_type] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[data_length] [int] NULL,
	[data_place] [tinyint] NULL,
	[item_option] [ntext] COLLATE Chinese_PRC_CI_AS NULL,
	[default_value] [ntext] COLLATE Chinese_PRC_CI_AS NULL,
	[is_required] [tinyint] NULL,
	[is_password] [tinyint] NULL,
	[is_html] [tinyint] NULL,
	[editor_type] [tinyint] NULL,
	[valid_tip_msg] [nvarchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[valid_error_msg] [nvarchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[valid_pattern] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[sort_id] [int] NULL,
	[is_sys] [tinyint] NULL,
 CONSTRAINT [PK_DT_ARTICLE_ATTRIBUTE_FIELD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[ax_article_attribute_field] ON
INSERT [dbo].[ax_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys]) VALUES (1, N'sub_title', N'副标题', N'single-text', N'nvarchar(255)', 255, 0, N'', N'', 0, 0, 0, 0, N'可为空，最多255个字符', N'', N's0-255', 1, 1)
INSERT [dbo].[ax_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys]) VALUES (2, N'source', N'信息来源', N'single-text', N'nvarchar(50)', 50, 0, N'', N'本站', 0, 0, 0, 0, N'非必填，最多50个字符', N'', N's0-50', 2, 1)
INSERT [dbo].[ax_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys]) VALUES (3, N'author', N'文章作者', N'single-text', N'nvarchar(50)', 50, 0, N'', N'', 0, 0, 0, 0, N'非必填，最多50个字符', N'', N's0-50', 3, 1)
INSERT [dbo].[ax_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys]) VALUES (4, N'goods_no', N'商品货号', N'single-text', N'nvarchar(100)', 100, 0, N'', N'', 0, 0, 0, 0, N'允许字母、下划线，100个字符内', N'', N's0-100', 4, 1)
INSERT [dbo].[ax_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys]) VALUES (5, N'stock_quantity', N'库存数量', N'number', N'int', 0, 0, N'', N'1000', 1, 0, 0, 0, N'库存数量为0时显示缺货状态', N'', N'n', 5, 1)
INSERT [dbo].[ax_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys]) VALUES (6, N'market_price', N'市场价格', N'number', N'decimal(9,2)', 0, 2, N'', N'0', 0, 0, 0, 0, N'市场的参与价格，不参与计算', N'', N'/^(([1-9]{1}\d*)|([0]{1}))(\.(\d){1,2})?$/', 7, 1)
INSERT [dbo].[ax_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys]) VALUES (7, N'sell_price', N'销售价格', N'number', N'decimal(9,2)', 0, 2, N'', N'0', 1, 0, 0, 0, N'*出售的实际交易价格', N'', N'/^(([1-9]{1}\d*)|([0]{1}))(\.(\d){1,2})?$/', 8, 1)
INSERT [dbo].[ax_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys]) VALUES (8, N'point', N'交易积分', N'number', N'int', 0, 0, N'', N'0', 0, 0, 0, 0, N'*正为返还，负为消费积分', N'', N'n', 9, 1)
SET IDENTITY_INSERT [dbo].[ax_article_attribute_field] OFF
/****** Object:  Table [dbo].[ax_article_attach]    Script Date: 05/18/2015 14:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_article_attach]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ax_article_attach](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[article_id] [int] NULL,
	[file_name] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[file_path] [nvarchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[file_size] [int] NULL,
	[file_ext] [nvarchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[down_num] [int] NULL,
	[point] [int] NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_ARTICLE_ATTACH] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[ax_article_albums]    Script Date: 05/18/2015 14:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_article_albums]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ax_article_albums](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[article_id] [int] NULL,
	[thumb_path] [nvarchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[original_path] [nvarchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[remark] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_ARTICLE_ALBUMS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[ax_article_albums] ON
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (380, 144, N'/upload/201409/16/thumb_201409161726304687.jpg', N'/upload/201409/16/201409161726304687.jpg', N'', CAST(0x0000A3A8011FA15F AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (381, 145, N'/upload/201409/16/thumb_201409161728179687.jpg', N'/upload/201409/16/201409161728179687.jpg', N'', CAST(0x0000A3A8011FEE5A AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (382, 146, N'/upload/201409/16/thumb_201409161730122031.jpg', N'/upload/201409/16/201409161730122031.jpg', N'', CAST(0x0000A3A801207B5C AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (383, 147, N'/upload/201409/16/thumb_201409161731069375.jpg', N'/upload/201409/16/201409161731069375.jpg', N'', CAST(0x0000A3A80120B835 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (384, 129, N'/upload/201409/16/thumb_201409161734482187.jpg', N'/upload/201409/16/201409161734482187.jpg', N'', CAST(0x0000A3A80121B76F AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (385, 130, N'/upload/201409/16/thumb_201409161734574843.jpg', N'/upload/201409/16/201409161734574843.jpg', N'', CAST(0x0000A3A80121C1F2 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (386, 131, N'/upload/201409/16/thumb_201409161735067968.jpg', N'/upload/201409/16/201409161735067968.jpg', N'', CAST(0x0000A3A80121CD30 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (387, 132, N'/upload/201409/16/thumb_201409161735155156.jpg', N'/upload/201409/16/201409161735155156.jpg', N'', CAST(0x0000A3A80121D751 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (388, 133, N'/upload/201409/16/thumb_201409161735260937.jpg', N'/upload/201409/16/201409161735260937.jpg', N'', CAST(0x0000A3A80121E37E AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (389, 148, N'/upload/201409/16/thumb_201409161739019218.jpg', N'/upload/201409/16/201409161739019218.jpg', N'', CAST(0x0000A3A80122E3BA AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (390, 149, N'/upload/201409/16/thumb_201409161739387187.jpg', N'/upload/201409/16/201409161739387187.jpg', N'', CAST(0x0000A3A801230C99 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (391, 150, N'/upload/201409/16/thumb_201409161740145937.jpg', N'/upload/201409/16/201409161740145937.jpg', N'', CAST(0x0000A3A801233646 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (392, 151, N'/upload/201409/16/thumb_201409161740550156.jpg', N'/upload/201409/16/201409161740550156.jpg', N'', CAST(0x0000A3A801236623 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (393, 152, N'/upload/201409/16/thumb_201409161801394062.jpg', N'/upload/201409/16/201409161801394062.jpg', N'', CAST(0x0000A3A801293316 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (394, 153, N'/upload/201409/16/thumb_201409161802525625.jpg', N'/upload/201409/16/201409161802525625.jpg', N'', CAST(0x0000A3A801296FA8 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (395, 154, N'/upload/201409/16/thumb_201409161803199531.jpg', N'/upload/201409/16/201409161803199531.jpg', N'', CAST(0x0000A3A801299536 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (396, 155, N'/upload/201409/16/thumb_201409161804049687.jpg', N'/upload/201409/16/201409161804049687.jpg', N'', CAST(0x0000A3A80129C2EF AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (397, 156, N'/upload/201409/16/thumb_201409161808533281.jpg', N'/upload/201409/16/201409161808533281.jpg', N'', CAST(0x0000A3A8012B296B AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (398, 157, N'/upload/201409/16/thumb_201409161809530625.jpg', N'/upload/201409/16/201409161809530625.jpg', N'', CAST(0x0000A3A8012B5EE7 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (399, 158, N'/upload/201409/16/thumb_201409161810332656.jpg', N'/upload/201409/16/201409161810332656.jpg', N'', CAST(0x0000A3A8012B945E AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (400, 159, N'/upload/201409/16/thumb_201409161811299687.jpg', N'/upload/201409/16/201409161811299687.jpg', N'', CAST(0x0000A3A8012BD877 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (401, 160, N'/upload/201409/16/thumb_201409161813352500.jpg', N'/upload/201409/16/201409161813352500.jpg', N'', CAST(0x0000A3A8012C63EB AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (402, 161, N'/upload/201409/16/thumb_201409161814202031.jpg', N'/upload/201409/16/201409161814202031.jpg', N'', CAST(0x0000A3A8012C971D AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (403, 162, N'/upload/201409/16/thumb_201409161815042031.jpg', N'/upload/201409/16/201409161815042031.jpg', N'', CAST(0x0000A3A8012CCC53 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (404, 163, N'/upload/201409/16/thumb_201409161833408437.jpg', N'/upload/201409/16/201409161833408437.jpg', N'', CAST(0x0000A3A80131ED64 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (405, 164, N'/upload/201409/16/thumb_201409161834554687.jpg', N'/upload/201409/16/201409161834554687.jpg', N'', CAST(0x0000A3A8013247FE AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (406, 165, N'/upload/201409/17/thumb_201409171318130468.jpg', N'/upload/201409/17/201409171318130468.jpg', N'', CAST(0x0000A3A900DBAFC8 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (407, 166, N'/upload/201409/17/thumb_201409171324039531.jpg', N'/upload/201409/17/201409171324039531.jpg', N'', CAST(0x0000A3A900DD4223 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (408, 167, N'/upload/201409/17/thumb_201409171326167500.jpg', N'/upload/201409/17/201409171326167500.jpg', N'', CAST(0x0000A3A900DD7694 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (409, 168, N'/upload/201409/17/thumb_201409171326596875.jpg', N'/upload/201409/17/201409171326596875.jpg', N'', CAST(0x0000A3A900DDACDE AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (410, 169, N'/upload/201409/17/thumb_201409171328547968.jpg', N'/upload/201409/17/201409171328547968.jpg', N'', CAST(0x0000A3A900DE3C76 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (411, 170, N'/upload/201409/17/thumb_201409171329430937.jpg', N'/upload/201409/17/201409171329430937.jpg', N'', CAST(0x0000A3A900DE8D93 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (412, 171, N'/upload/201409/17/thumb_201409171331209218.jpg', N'/upload/201409/17/201409171331209218.jpg', N'', CAST(0x0000A3A900DF1416 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (413, 172, N'/upload/201409/17/thumb_201409171332581718.jpg', N'/upload/201409/17/201409171332581718.jpg', N'', CAST(0x0000A3A900DF500D AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (414, 173, N'/upload/201409/17/thumb_201409171334146093.jpg', N'/upload/201409/17/201409171334146093.jpg', N'', CAST(0x0000A3A900DFB846 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (415, 174, N'/upload/201409/17/thumb_201409171335119062.jpg', N'/upload/201409/17/201409171335119062.jpg', N'', CAST(0x0000A3A900DFEEB2 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (416, 175, N'/upload/201409/17/thumb_201409171335528750.jpg', N'/upload/201409/17/201409171335528750.jpg', N'', CAST(0x0000A3A900E020C2 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (417, 176, N'/upload/201409/17/thumb_201409171336293750.jpg', N'/upload/201409/17/201409171336293750.jpg', N'', CAST(0x0000A3A900E0484A AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (418, 177, N'/upload/201409/17/thumb_201409171337426406.jpg', N'/upload/201409/17/201409171337426406.jpg', N'', CAST(0x0000A3A900E0A189 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (419, 178, N'/upload/201409/17/thumb_201409171338286093.jpg', N'/upload/201409/17/201409171338286093.jpg', N'', CAST(0x0000A3A900E0DC12 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (420, 179, N'/upload/201409/17/thumb_201409171339211250.jpg', N'/upload/201409/17/201409171339211250.jpg', N'', CAST(0x0000A3A900E112C0 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (421, 180, N'/upload/201409/17/thumb_201409171340102656.jpg', N'/upload/201409/17/201409171340102656.jpg', N'', CAST(0x0000A3A900E14B09 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (422, 181, N'/upload/201409/17/thumb_201409171343211562.jpg', N'/upload/201409/17/201409171343211562.jpg', N'', CAST(0x0000A3A900E2290D AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (423, 182, N'/upload/201409/17/thumb_201409171344181406.jpg', N'/upload/201409/17/201409171344181406.jpg', N'', CAST(0x0000A3A900E26907 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (424, 183, N'/upload/201409/17/thumb_201409171344522812.jpg', N'/upload/201409/17/201409171344522812.jpg', N'', CAST(0x0000A3A900E2963C AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (425, 184, N'/upload/201409/17/thumb_201409171345360156.jpg', N'/upload/201409/17/201409171345360156.jpg', N'', CAST(0x0000A3A900E2CC87 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (426, 185, N'/upload/201409/17/thumb_201409171347003593.jpg', N'/upload/201409/17/201409171347003593.jpg', N'', CAST(0x0000A3A900E332CB AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (427, 186, N'/upload/201409/17/thumb_201409171347451875.jpg', N'/upload/201409/17/201409171347451875.jpg', N'', CAST(0x0000A3A900E35E4C AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (428, 187, N'/upload/201409/17/thumb_201409171348212187.jpg', N'/upload/201409/17/201409171348212187.jpg', N'', CAST(0x0000A3A900E39488 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (429, 188, N'/upload/201409/17/thumb_201409171349156718.jpg', N'/upload/201409/17/201409171349156718.jpg', N'', CAST(0x0000A3A900E3CD92 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (430, 189, N'/upload/201409/17/thumb_201409171401156718.jpg', N'/upload/201409/17/201409171401156718.jpg', N'', CAST(0x0000A3A900E71884 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (431, 190, N'/upload/201409/17/thumb_201409171403397968.jpg', N'/upload/201409/17/201409171403397968.jpg', N'', CAST(0x0000A3A900E831C4 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (432, 191, N'/upload/201409/17/thumb_201409171406360000.jpg', N'/upload/201409/17/201409171406360000.jpg', N'', CAST(0x0000A3A900E8CEF6 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (433, 192, N'/upload/201409/17/thumb_201409171408263281.jpg', N'/upload/201409/17/201409171408263281.jpg', N'', CAST(0x0000A3A900E9D65B AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (434, 193, N'/upload/201409/17/thumb_201409171413090000.jpg', N'/upload/201409/17/201409171413090000.jpg', N'', CAST(0x0000A3A900EA5F6A AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (435, 194, N'/upload/201409/17/thumb_201409171413573906.jpg', N'/upload/201409/17/201409171413573906.jpg', N'', CAST(0x0000A3A900EA9426 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (436, 195, N'/upload/201409/17/thumb_201409171414336250.jpg', N'/upload/201409/17/201409171414336250.jpg', N'', CAST(0x0000A3A900EAB731 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (437, 196, N'/upload/201409/17/thumb_201409171414565156.jpg', N'/upload/201409/17/201409171414565156.jpg', N'', CAST(0x0000A3A900EAD46F AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (438, 197, N'/upload/201409/17/thumb_201409171416205937.jpg', N'/upload/201409/17/201409171416205937.jpg', N'', CAST(0x0000A3A900EB3721 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (439, 198, N'/upload/201409/17/thumb_201409171416552656.jpg', N'/upload/201409/17/201409171416552656.jpg', N'', CAST(0x0000A3A900EB5DA7 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (440, 199, N'/upload/201409/17/thumb_201409171417284531.jpg', N'/upload/201409/17/201409171417284531.jpg', N'', CAST(0x0000A3A900EB8A2F AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (441, 200, N'/upload/201409/17/thumb_201409171417568750.jpg', N'/upload/201409/17/201409171417568750.jpg', N'', CAST(0x0000A3A900EBAAB0 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (442, 201, N'/upload/201409/17/thumb_201409171418590937.jpg', N'/upload/201409/17/201409171418590937.jpg', N'', CAST(0x0000A3A900EBF285 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (443, 202, N'/upload/201409/17/thumb_201409171419258437.jpg', N'/upload/201409/17/201409171419258437.jpg', N'', CAST(0x0000A3A900EC107E AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (444, 203, N'/upload/201409/17/thumb_201409171420015468.jpg', N'/upload/201409/17/201409171420015468.jpg', N'', CAST(0x0000A3A900EC41A4 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (445, 204, N'/upload/201409/17/thumb_201409171420327187.jpg', N'/upload/201409/17/201409171420327187.jpg', N'', CAST(0x0000A3A900EC6122 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (446, 205, N'/upload/201409/17/thumb_201409171421553125.jpg', N'/upload/201409/17/201409171421553125.jpg', N'', CAST(0x0000A3A900ECBF81 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (447, 206, N'/upload/201409/17/thumb_201409171422275156.jpg', N'/upload/201409/17/201409171422275156.jpg', N'', CAST(0x0000A3A900ECE57B AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (448, 207, N'/upload/201409/17/thumb_201409171422596406.jpg', N'/upload/201409/17/201409171422596406.jpg', N'', CAST(0x0000A3A900ED16CB AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (449, 208, N'/upload/201409/17/thumb_201409171423465781.jpg', N'/upload/201409/17/201409171423465781.jpg', N'', CAST(0x0000A3A900ED41AD AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (450, 209, N'/upload/201409/17/thumb_201409171546372343.jpg', N'/upload/201409/17/201409171546372343.jpg', N'', CAST(0x0000A3A901040682 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (451, 210, N'/upload/201409/17/thumb_201409171549368437.jpg', N'/upload/201409/17/201409171549368437.jpg', N'', CAST(0x0000A3A90104D760 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (452, 211, N'/upload/201409/17/thumb_201409171550161562.jpg', N'/upload/201409/17/201409171550161562.jpg', N'', CAST(0x0000A3A901050226 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (453, 212, N'/upload/201409/17/thumb_201409171550433906.jpg', N'/upload/201409/17/201409171550433906.jpg', N'', CAST(0x0000A3A901052118 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (454, 213, N'/upload/201409/17/thumb_201409171601157343.jpg', N'/upload/201409/17/201409171601157343.jpg', N'', CAST(0x0000A3A90108093C AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (455, 214, N'/upload/201409/17/thumb_201409171602111562.jpg', N'/upload/201409/17/201409171602111562.jpg', N'', CAST(0x0000A3A9010846F6 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (456, 215, N'/upload/201409/17/thumb_201409171609449218.jpg', N'/upload/201409/17/201409171609449218.jpg', N'', CAST(0x0000A3A9010A64B2 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (457, 216, N'/upload/201409/17/thumb_201409171610379375.jpg', N'/upload/201409/17/201409171610379375.jpg', N'', CAST(0x0000A3A9010A996E AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (458, 217, N'/upload/201409/17/thumb_201409171613130000.jpg', N'/upload/201409/17/201409171613130000.jpg', N'', CAST(0x0000A3A9010B4F95 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (459, 218, N'/upload/201409/17/thumb_201409171613517812.jpg', N'/upload/201409/17/201409171613517812.jpg', N'', CAST(0x0000A3A9010B7D11 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (460, 219, N'/upload/201409/17/thumb_201409171614570781.jpg', N'/upload/201409/17/201409171614570781.jpg', N'', CAST(0x0000A3A9010BC88B AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (461, 220, N'/upload/201409/17/thumb_201409171615235468.jpg', N'/upload/201409/17/201409171615235468.jpg', N'', CAST(0x0000A3A9010BEACD AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (462, 221, N'/upload/201409/17/thumb_201409171616545000.jpg', N'/upload/201409/17/201409171616545000.jpg', N'', CAST(0x0000A3A9010C5A9B AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (463, 222, N'/upload/201409/17/thumb_201409171617420156.jpg', N'/upload/201409/17/201409171617420156.jpg', N'', CAST(0x0000A3A9010C8D8C AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (464, 223, N'/upload/201409/17/thumb_201409171626461250.jpg', N'/upload/201409/17/201409171626461250.jpg', N'', CAST(0x0000A3A9010F15C7 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (465, 224, N'/upload/201409/18/thumb_201409180937313437.jpg', N'/upload/201409/18/201409180937313437.jpg', N'', CAST(0x0000A3AA009EA15E AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (466, 225, N'/upload/201409/18/thumb_201409180938118750.jpg', N'/upload/201409/18/201409180938118750.jpg', N'', CAST(0x0000A3AA009ED04C AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (467, 226, N'/upload/201409/18/thumb_201409180939144687.jpg', N'/upload/201409/18/201409180939144687.jpg', N'', CAST(0x0000A3AA009F1D70 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (468, 227, N'/upload/201409/18/thumb_201409180940016406.jpg', N'/upload/201409/18/201409180940016406.jpg', N'', CAST(0x0000A3AA009F5086 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (469, 228, N'/upload/201409/18/thumb_201409181232466562.jpg', N'/upload/201409/18/201409181232466562.jpg', N'', CAST(0x0000A3AA00CEC514 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (470, 229, N'/upload/201409/18/thumb_201409181233245625.jpg', N'/upload/201409/18/201409181233245625.jpg', N'', CAST(0x0000A3AA00CF0152 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (471, 230, N'/upload/201409/18/thumb_201409181234208437.jpg', N'/upload/201409/18/201409181234208437.jpg', N'', CAST(0x0000A3AA00CF3921 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (472, 231, N'/upload/201409/18/thumb_201409181234559843.jpg', N'/upload/201409/18/201409181234559843.jpg', N'', CAST(0x0000A3AA00CF5FFD AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (473, 232, N'/upload/201409/18/thumb_201409181238472343.jpg', N'/upload/201409/18/201409181238472343.jpg', N'', CAST(0x0000A3AA00D06BE3 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (474, 233, N'/upload/201409/18/thumb_201409181239400000.jpg', N'/upload/201409/18/201409181239400000.jpg', N'', CAST(0x0000A3AA00D0AB2B AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (475, 234, N'/upload/201409/18/thumb_201409181240258281.jpg', N'/upload/201409/18/201409181240258281.jpg', N'', CAST(0x0000A3AA00D0DE62 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (476, 235, N'/upload/201409/18/thumb_201409181241173593.jpg', N'/upload/201409/18/201409181241173593.jpg', N'', CAST(0x0000A3AA00D119A3 AS DateTime))
INSERT [dbo].[ax_article_albums] ([id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (477, 236, N'/upload/201409/18/thumb_201409181455052500.jpg', N'/upload/201409/18/201409181455052500.jpg', N'', CAST(0x0000A3AA00F5E5CF AS DateTime))
SET IDENTITY_INSERT [dbo].[ax_article_albums] OFF
/****** Object:  Table [dbo].[ax_article]    Script Date: 05/18/2015 14:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_article]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ax_article](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[channel_id] [int] NOT NULL,
	[category_id] [int] NOT NULL,
	[call_index] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[title] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[link_url] [nvarchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[img_url] [nvarchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[seo_title] [nvarchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[seo_keywords] [nvarchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[seo_description] [nvarchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[zhaiyao] [nvarchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[content] [ntext] COLLATE Chinese_PRC_CI_AS NULL,
	[sort_id] [int] NULL,
	[click] [int] NULL,
	[status] [tinyint] NULL,
	[groupids_view] [nvarchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[vote_id] [int] NULL,
	[is_msg] [tinyint] NULL,
	[is_top] [tinyint] NULL,
	[is_red] [tinyint] NULL,
	[is_hot] [tinyint] NULL,
	[is_slide] [tinyint] NULL,
	[is_sys] [tinyint] NULL,
	[user_name] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[add_time] [datetime] NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_DT_ARTICLE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[ax_article] ON
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (106, 1, 1, N'', N'上线了！全场8折销售', N'', N'', N'', N'', N'', N'上线了！全场8折销售', N'&nbsp;上线了！全场8折销售', 1, 1, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A1016B6924 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (107, 4, 82, N'', N'黑人-超白牙膏-130g', N'', N'/upload/201409/09/201409092222047656.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A10170A318 AS DateTime), CAST(0x0000A3AC00C0C5E9 AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (108, 4, 82, N'', N'黑人-双重薄荷牙膏-120g', N'', N'/upload/201409/09/201409092222342812.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A10170C3E8 AS DateTime), CAST(0x0000A3AC00C0BC5E AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (109, 4, 82, N'', N'加加-特级一品鲜-500ml', N'', N'/upload/201409/09/201409092226211093.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A10171CB94 AS DateTime), CAST(0x0000A3AC00C0AFE6 AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (110, 1, 1, N'', N'测试公告 测试公告 测试公告 测试公告 测试公告 测试公告 测试公告', N'', N'', N'', N'', N'', N'测试公告 测试公告 测试公告', N'&nbsp;测试公告&nbsp;测试公告&nbsp;测试公告', 99, 2, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A600C2AA7F AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (111, 1, 1, N'', N'测试公告 测试公告', N'', N'', N'', N'', N'', N'测试公告', N'&nbsp;测试公告', 99, 0, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A600C2BDD5 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (112, 1, 1, N'', N'测试公告 测试公告 测试公告', N'', N'', N'', N'', N'', N'测试公告', N'&nbsp;测试公告', 99, 1, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A600C2CC22 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (113, 1, 1, N'', N'测试公告 测试公告 测试公告 测试公告', N'', N'', N'', N'', N'', N'测试公告 测试公告 测试公告', N'&nbsp;测试公告&nbsp;测试公告&nbsp;测试公告', 99, 0, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A600C2E363 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (114, 1, 1, N'', N'测试公告 测试公告 测试公告 测试公告 测试公告 测试公告 测试公告 测试公告', N'', N'', N'', N'', N'', N'测试公告 测试公告 测试公告 测试公告', N'&nbsp;测试公告&nbsp;测试公告&nbsp;测试公告&nbsp;测试公告', 99, 27, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A600C31117 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (129, 2, 11, N'', N'上好佳-玉米卷-90g', N'', N'/upload/201409/15/201409151030543750.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 1, 1, 1, 0, 1, N'admin', CAST(0x0000A3A700AD9B5C AS DateTime), CAST(0x0000A3A80121B767 AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (130, 2, 11, N'', N'上好佳-酸甜口味田园薯片-90g', N'', N'/upload/201409/15/201409151033303281.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 1, 0, 1, 0, 1, N'admin', CAST(0x0000A3A700AE03A8 AS DateTime), CAST(0x0000A3A80121C1F3 AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (131, 2, 11, N'', N'上好佳-黄瓜味空心薯笛-45g', N'', N'/upload/201409/15/201409151034030312.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 1, 1, 1, 0, 1, N'admin', CAST(0x0000A3A700AE49F8 AS DateTime), CAST(0x0000A3A80121CD2C AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (132, 2, 11, N'', N'上好佳-红烧牛肉味田园薯片-90g', N'', N'/upload/201409/15/201409151034567031.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 1, 0, 0, 0, 1, N'admin', CAST(0x0000A3A700AFDAC0 AS DateTime), CAST(0x0000A3A80121D751 AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (133, 2, 11, N'', N'上好佳-番茄味空心薯笛-45g', N'', N'/upload/201409/15/201409151041135781.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 1, 0, 1, 0, 1, N'admin', CAST(0x0000A3A700B025C0 AS DateTime), CAST(0x0000A3A80121E37A AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (134, 2, 11, N'', N'上好佳-鲜虾条-90g', N'', N'/upload/201409/15/201409151041436718.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 1, 1, 0, 0, 1, N'admin', CAST(0x0000A3A700B06B9B AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (135, 3, 93, N'', N'首页幻灯1', N'http://www.heng24.com', N'/upload/201409/16/201409161247168281.jpg', N'', N'', N'', N'', N'', 1, 0, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A8009AF2CC AS DateTime), CAST(0x0000A3A800D2BF0A AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (136, 3, 93, N'', N'首页幻灯2', N'http://www.heng24.com', N'/upload/201409/16/201409161247242656.jpg', N'', N'', N'', N'', N'', 2, 0, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A8009B2E90 AS DateTime), CAST(0x0000A3A800D2C768 AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (137, 3, 93, N'', N'首页幻灯3', N'http://www.heng24.com', N'/upload/201409/16/201409161247310156.jpg', N'', N'', N'', N'', N'', 3, 0, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A8009B81C4 AS DateTime), CAST(0x0000A3A800D2CFBD AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (138, 3, 93, N'', N'首页幻灯4', N'http://www.heng24.com', N'/upload/201409/16/201409161247385156.jpg', N'', N'', N'', N'', N'', 4, 0, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A8009BA4EC AS DateTime), CAST(0x0000A3A800D2D829 AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (139, 3, 94, N'', N'新店开业', N'http://www.heng24.com', N'/upload/201409/16/201409160939422187.jpg', N'', N'', N'', N'', N'', 5, 0, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A8009F4D40 AS DateTime), CAST(0x0000A3A8009F6B5A AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (140, 3, 96, N'', N'食品广告1', N'http://www.heng24.com', N'/upload/201409/16/201409160944376093.jpg', N'', N'', N'', N'', N'', 6, 0, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A800A097B8 AS DateTime), CAST(0x0000A3A800A0D807 AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (141, 3, 97, N'', N'清洁用品', N'http://www.heng24.com', N'/upload/201409/16/201409160945111093.jpg', N'', N'', N'', N'', N'', 7, 0, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A800A0BD38 AS DateTime), CAST(0x0000A3A800A0DFB3 AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (142, 3, 95, N'', N'微信横幅广告', N'http://m.heng24.com', N'/upload/201409/16/201409161301041875.jpg', N'', N'', N'', N'', N'', 8, 0, 0, N'', 0, 0, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A800A81740 AS DateTime), CAST(0x0000A3A800D6885D AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (143, 5, 73, N'zoujinwomen', N'走进我们', N'', N'', N'', N'', N'', N'的说法', N'的说法', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A800BB8A8C AS DateTime), CAST(0x0000A3EF015E3143 AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (144, 2, 11, N'', N'盼盼-香辣鸡味块-105g（袋装）', N'', N'/upload/201409/16/201409161726270312.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 98, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A8011FA128 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (145, 2, 11, N'', N'盼盼-墨西哥鸡味块-105g（袋装）', N'', N'/upload/201409/16/201409161727526718.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 1, 0, 0, 0, 1, N'admin', CAST(0x0000A3A8011FEE5A AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (146, 2, 11, N'', N'盼盼-麦香鸡味块-105g（袋装）', N'', N'/upload/201409/16/201409161729262031.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 0, 1, 1, 0, 0, 1, N'admin', CAST(0x0000A3A801207B58 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (147, 2, 11, N'', N'盼盼-历史庄园泰式咖喱虾味薯片-38g', N'', N'/upload/201409/16/201409161730435312.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 1, 0, 1, N'admin', CAST(0x0000A3A80120B835 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (148, 2, 11, N'', N'乐事-意式揽香番茄味圆筒装薯片-104g', N'', N'/upload/201409/16/201409161738287812.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A80122E3B6 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (149, 2, 11, N'', N'乐事-无限鲜浓番茄味圆筒装薯片-104g', N'', N'/upload/201409/16/201409161739221093.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 1, 0, 1, 0, 1, N'admin', CAST(0x0000A3A801230C9A AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (150, 2, 11, N'', N'乐事-田园番茄味圆筒装薯片-104g', N'', N'/upload/201409/16/201409161739558593.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A3A801233646 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (151, 2, 11, N'', N'乐事-吮指味圆筒装薯片-104g', N'', N'/upload/201409/16/201409161740427500.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 1, 1, 0, 1, N'admin', CAST(0x0000A3A80123661F AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (152, 2, 12, N'', N'好丽友-巧克力派-2枚', N'', N'/upload/201409/16/201409161801355156.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A3A80129330D AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (153, 2, 12, N'', N'好丽友-烧烤味味好多鱼-33g', N'', N'/upload/201409/16/201409161802193437.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 1, 0, 0, 0, 1, N'admin', CAST(0x0000A3A801296FA9 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (154, 2, 12, N'', N'好丽友-榛子巧克力味磨古力-48g', N'', N'/upload/201409/16/201409161803150625.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A3A801299529 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (155, 2, 12, N'', N'好丽友-红豆巧克力味磨古力-48g', N'', N'/upload/201409/16/201409161803468437.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 1, 0, 1, 0, 1, N'admin', CAST(0x0000A3A80129C2EB AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (156, 2, 17, N'', N'光明-莫里斯安牛奶200g*12瓶装', N'', N'/upload/201409/16/201409161808363281.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 1, 0, 0, 0, 1, N'admin', CAST(0x0000A3A8012B2967 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (157, 2, 17, N'', N'蒙牛-纯牛奶-250mlx16瓶装', N'', N'/upload/201409/16/201409161809293437.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A3A8012B5EE7 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (158, 2, 17, N'', N'特仑苏-纯牛奶-250mlx12瓶装', N'', N'/upload/201409/16/201409161810173125.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 1, 0, 1, N'admin', CAST(0x0000A3A8012B945A AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (159, 2, 17, N'', N'伊利-舒化奶-250mlx12瓶箱装', N'', N'/upload/201409/16/201409161811179062.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A3A8012BD873 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (160, 2, 17, N'', N'伊利-味可滋240mlx12瓶装', N'', N'/upload/201409/16/201409161813045468.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 1, 0, 0, 0, 1, N'admin', CAST(0x0000A3A8012C63EC AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (161, 2, 17, N'', N'美汁源-草莓味果粒奶优450ml', N'', N'/upload/201409/16/201409161813599687.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A3A8012C971E AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (162, 2, 17, N'', N'美汁源-营养原味果粒奶优450ml', N'', N'/upload/201409/16/201409161814450312.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 1, 1, 1, 0, 1, N'admin', CAST(0x0000A3A8012CCC54 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (163, 2, 17, N'', N'莫斯利安-原味-200ml', N'', N'/upload/201409/16/201409161832510781.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 1, 1, 0, 0, 1, N'admin', CAST(0x0000A3A80131ED52 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (164, 2, 17, N'', N'伊利-安慕希希腊酸奶-205ml', N'', N'/upload/201409/16/201409161834222656.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 1, 1, 1, 0, 1, N'admin', CAST(0x0000A3A8013247FA AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (165, 2, 13, N'', N'恰恰-香味香瓜子-65g', N'', N'/upload/201409/17/201409171318175937.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900DBAF5D AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (166, 2, 13, N'', N'恰恰-香味香瓜子-180g', N'', N'/upload/201409/17/201409171323316562.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900DD421F AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (167, 2, 13, N'', N'恰恰-多味香瓜子-260g', N'', N'/upload/201409/17/201409171326061562.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900DD7695 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (168, 2, 13, N'', N'小刘-奶香瓜子-150g', N'', N'/upload/201409/17/thumb_201409171326596875.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 1, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900DDACDA AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (169, 2, 33, N'', N'大白兔-奶糖-114g', N'', N'/upload/201409/17/201409171328595468.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A3A900DE3C72 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (170, 2, 33, N'', N'大白兔-奶糖-227g', N'', N'/upload/201409/17/201409171329468125.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900DE8D8F AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (171, 2, 33, N'', N'金丝猴-奶糖-118g', N'', N'/upload/201409/17/201409171331236250.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 1, 0, 0, 1, N'admin', CAST(0x0000A3A900DF1412 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (172, 2, 33, N'', N'金丝猴-香芋味奶糖-108g', N'', N'/upload/201409/17/201409171333011718.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 1, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900DF500E AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (173, 2, 34, N'', N'香辣味手撕牛肉-52g', N'', N'/upload/201409/17/201409171334115937.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 1, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900DFB842 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (174, 2, 34, N'', N'福臣-香辣味牦牛肉-62g', N'', N'/upload/201409/17/201409171335020468.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900DFEEB2 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (175, 2, 34, N'', N'福臣-五香味牦牛肉-62g', N'', N'/upload/201409/17/201409171335578125.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900E020C2 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (176, 2, 34, N'', N'沙嗲味手撕牛肉-62g', N'', N'/upload/201409/17/201409171336236093.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900E04846 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (177, 2, 35, N'', N'德芙-牛奶夹心巧克力-98g', N'', N'/upload/201409/17/201409171337344062.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900E0A189 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (178, 2, 35, N'', N'德芙-香浓黑巧克力-43g', N'', N'/upload/201409/17/201409171338336718.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900E0DC13 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (179, 2, 35, N'', N'德芙-榛仁巧克力-43g', N'', N'/upload/201409/17/201409171339065781.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900E112BB AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (180, 2, 35, N'', N'德芙-醇香摩卡巧克力-43g', N'', N'/upload/201409/17/201409171340062031.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900E14B05 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (181, 2, 36, N'', N'康师傅-老坛酸菜牛肉面-118g', N'', N'/upload/201409/17/201409171343181406.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900E22909 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (182, 2, 36, N'', N'康师傅-老坛酸菜鲜虾面-118g', N'', N'/upload/201409/17/201409171344152187.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900E26907 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (183, 2, 36, N'', N'康师傅-红烧牛肉面-120g', N'', N'/upload/201409/17/201409171344558437.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900E2963D AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (184, 2, 36, N'', N'康师傅-香辣大食桶-145g', N'', N'/upload/201409/17/201409171345404687.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900E2CC87 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (185, 2, 15, N'', N'娃哈哈-苏打水-350ml', N'', N'/upload/201409/17/201409171347037656.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900E332C6 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (186, 2, 15, N'', N'恒大冰泉-矿泉水-350ml', N'', N'/upload/201409/17/201409171347422656.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900E35E4D AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (187, 2, 15, N'', N'农夫山泉-天然矿泉水-380ml', N'', N'/upload/201409/17/201409171348172968.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900E39489 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (188, 2, 15, N'', N'可口可乐-冰露纯悦矿物质水-550ml', N'', N'/upload/201409/17/201409171349133593.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900E3CD8E AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (189, 2, 16, N'', N'可口可乐-罐装-330ml', N'', N'/upload/201409/17/201409171401130000.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900E71880 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (190, 2, 16, N'', N'雪碧-300ml', N'', N'/upload/201409/17/201409171403260468.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900E831C4 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (191, 2, 16, N'', N'雪碧-500ml', N'', N'/upload/201409/17/201409171406392031.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900E8CEF6 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (192, 2, 16, N'', N'百事可乐-600ml', N'', N'/upload/201409/17/201409171408163125.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900E9D657 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (193, 2, 18, N'', N'加多宝-罐装-350ml', N'', N'/upload/201409/17/201409171413046875.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900EA5F6A AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (194, 2, 18, N'', N'康师傅-香浓味经典奶茶-500ml', N'', N'/upload/201409/17/201409171414004531.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900EA9421 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (195, 2, 18, N'', N'唐师傅-冰红茶-500ml', N'', N'/upload/201409/17/thumb_201409171414336250.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900EAB72D AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (196, 2, 18, N'', N'康师傅-低糖绿茶-500ml', N'', N'/upload/201409/17/201409171415086875.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900EAD404 AS DateTime), CAST(0x0000A3A900EAE191 AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (197, 2, 37, N'', N'水溶-C100柠檬汁', N'', N'/upload/201409/17/201409171416177968.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900EB371D AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (198, 2, 37, N'', N'美汁源-果粒橙-450ml', N'', N'/upload/201409/17/201409171416529062.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900EB5DA3 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (199, 2, 37, N'', N'美汁源-热带果粒-450ml', N'', N'/upload/201409/17/201409171417263125.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900EB8A30 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (200, 2, 37, N'', N'美汁源-爽粒红葡萄-450ml', N'', N'/upload/201409/17/201409171417541562.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900EBAAB0 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (201, 2, 38, N'', N'怡泉+C柠檬味汽水-500ml', N'', N'/upload/201409/17/201409171419018437.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900EBF285 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (202, 2, 38, N'', N'可口可乐-西柚水动乐-600ml', N'', N'/upload/201409/17/201409171419233593.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900EC107A AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (203, 2, 38, N'', N'雀巢咖啡-180ml', N'', N'/upload/201409/17/201409171420048906.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900EC41A4 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (204, 2, 38, N'', N'红牛-功能性饮料250ml', N'', N'/upload/201409/17/201409171420352500.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900EC6123 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (205, 2, 39, N'', N'天方-碧螺春铁盒-68g', N'', N'/upload/201409/17/201409171421518437.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900ECBF79 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (206, 2, 39, N'', N'天方-黄山毛尖铁盒-68g', N'', N'/upload/201409/17/201409171422252812.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900ECE572 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (207, 2, 39, N'', N'天方-龙井茶铁盒-68g', N'', N'/upload/201409/17/201409171423017500.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900ED16CB AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (208, 2, 39, N'', N'天方-铁观音茶铁盒-100g', N'', N'/upload/201409/17/201409171423394062.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A900ED41AD AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (209, 2, 40, N'', N'好和-豆奶粉-560g', N'', N'/upload/201409/17/201409171546342187.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 1, 1, 0, 0, 1, N'admin', CAST(0x0000A3A90104054D AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (210, 2, 40, N'', N'好和-核桃粉-560g', N'', N'/upload/201409/17/201409171549399843.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A90104D758 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (211, 2, 40, N'', N'黑牛-维他命豆奶粉-760g', N'', N'/upload/201409/17/201409171550101093.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 1, 0, 0, 0, 1, N'admin', CAST(0x0000A3A901050219 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (212, 2, 40, N'', N'黑牛-无加蔗糖豆奶粉-15包480g', N'', N'/upload/201409/17/201409171550362656.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A90105210F AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (213, 2, 20, N'', N'大宝-持久保湿美容日霜-50g', N'', N'/upload/201409/17/201409171601032656.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 1, 0, 0, 0, 1, N'admin', CAST(0x0000A3A90108092F AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (214, 2, 20, N'', N'大宝-深度滋养美容夜霜-50g', N'', N'/upload/201409/17/201409171602031718.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 1, 1, 0, 0, 1, N'admin', CAST(0x0000A3A9010846ED AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (215, 2, 20, N'', N'大宝-sod秘经典装-100ml', N'', N'/upload/201409/17/201409171609472343.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A9010A64A0 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (216, 2, 20, N'', N'玉兰油-水养防晒美白霜-30g', N'', N'/upload/201409/17/201409171610267656.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A9010A9965 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (217, 2, 21, N'', N'海飞丝-去屑洗发露水润滋养型-200ml', N'', N'/upload/201409/17/201409171613105000.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3A9010B4E78 AS DateTime), CAST(0x0000A3A9010B9348 AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (218, 2, 21, N'', N'海飞丝-去屑洗发露水润滋养型-400ml', N'', N'/upload/201409/17/201409171613497656.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 1, 0, 0, 0, 1, N'admin', CAST(0x0000A3A9010B7C2C AS DateTime), CAST(0x0000A3A9010BA0C6 AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (219, 2, 21, N'', N'海飞丝-去屑洗发露怡神冰凉型-200ml', N'', N'/upload/201409/17/201409171614509375.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 1, 0, 0, 0, 1, N'admin', CAST(0x0000A3A9010BC87E AS DateTime), NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (220, 2, 21, N'', N'潘婷-丝质顺滑洗发露-200ml', N'', N'/upload/201409/17/201409171615180468.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 1, 0, 0, 0, 1, N'admin', CAST(0x0000A3A9010BEAC5 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (221, 2, 22, N'', N'多芬-清透水润沐浴露-200-15.5', N'', N'/upload/201409/17/201409171616508437.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 1, 0, 0, 0, 1, N'admin', CAST(0x0000A3A9010C5A92 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (222, 2, 22, N'', N'多芬-深层莹润沐浴露-200-15.5', N'', N'/upload/201409/17/201409171617453125.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 1, 0, 0, 0, 1, N'admin', CAST(0x0000A3A9010C8D7E AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (223, 2, 22, N'', N'多芬-冰凉水润沐浴露-200-15.5', N'', N'/upload/201409/17/201409171626436093.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 1, 0, 0, 0, 1, N'admin', CAST(0x0000A3A9010F15BE AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (224, 2, 44, N'', N'雕牌-丝瓜洗洁精-1.5L', N'', N'/upload/201409/18/201409180937095937.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 1, 0, 0, 0, 1, N'admin', CAST(0x0000A3AA009EA0EE AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (225, 2, 44, N'', N'雕牌-高效洗洁精-500g', N'', N'/upload/201409/18/201409180937540468.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 1, 0, 0, 0, 1, N'admin', CAST(0x0000A3AA009ED04D AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (226, 2, 44, N'', N'白猫-经典配方洗洁精-2kg', N'', N'/upload/201409/18/201409180938465000.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 129, 1, 1, 0, 0, 0, 1, N'admin', CAST(0x0000A3AA009F1D34 AS DateTime), CAST(0x0000A3AB00B9D35E AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (227, 2, 44, N'', N'白猫-柠檬红茶洗洁精-500g', N'', N'/upload/201409/18/201409180939388437.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 132, 1, 1, 0, 0, 0, 1, N'admin', CAST(0x0000A3AA009F4F98 AS DateTime), CAST(0x0000A3AB00B8E5DD AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (228, 2, 53, N'', N'暖暖 七星系列方巾纸-400张', N'', N'/upload/201409/18/201409181232260000.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 134, 1, 1, 0, 0, 0, 1, N'admin', CAST(0x0000A3AA00CEABD0 AS DateTime), CAST(0x0000A3AB00B8D1EC AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (229, 2, 53, N'', N'天女花 特柔刀切纸-798张', N'', N'/upload/201409/18/201409181233086875.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 129, 1, 1, 0, 0, 0, 1, N'admin', CAST(0x0000A3AA00CF0153 AS DateTime), NULL)
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (230, 2, 53, N'', N'五月花 婴儿柔卷纸卷纸-140gx10卷', N'', N'/upload/201409/18/201409181234007343.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 130, 1, 1, 0, 0, 0, 1, N'admin', CAST(0x0000A3AA00CF3870 AS DateTime), CAST(0x0000A3AB00B8C155 AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (231, 2, 53, N'', N'五月花 福盒装抽纸-200抽', N'', N'/upload/201409/18/201409181234475156.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 131, 1, 1, 0, 0, 0, 1, N'admin', CAST(0x0000A3AA00CF5F1C AS DateTime), CAST(0x0000A3AB00B97F3B AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (232, 2, 61, N'', N'茅台醇-二龙戏珠御品盒装', N'', N'/upload/201409/18/201409181238102812.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 132, 1, 1, 0, 0, 0, 1, N'admin', CAST(0x0000A3AA00D06B78 AS DateTime), CAST(0x0000A3AB00B8B4B8 AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (233, 2, 61, N'', N'古井蓝花淡雅42度', N'', N'/upload/201409/18/201409181239108593.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 133, 1, 1, 0, 0, 0, 1, N'admin', CAST(0x0000A3AA00D0AAC0 AS DateTime), CAST(0x0000A3AB00B963BF AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (234, 2, 61, N'', N'茅台醇-浓香型盒装500ml2瓶装45度', N'', N'/upload/201409/18/201409181240062500.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 124, 1, 1, 0, 0, 0, 1, N'admin', CAST(0x0000A3AA00D0DE50 AS DateTime), CAST(0x0000A3AB00B8A7F0 AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (235, 2, 61, N'', N'迎驾贡酒四星40.3 度', N'', N'/upload/201409/18/201409181240547812.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 128, 1, 1, 0, 0, 0, 1, N'admin', CAST(0x0000A3AA00D118E8 AS DateTime), CAST(0x0000A3AB00B9E063 AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (236, 2, 66, N'', N'东北特产朝阳大枣 500g', N'', N'/upload/201409/18/201409181455018906.jpg', N'', N'', N'', N'', N'', 99, 0, 0, N'', 125, 1, 1, 1, 1, 0, 1, N'admin', CAST(0x0000A3AA00F5E59C AS DateTime), CAST(0x0000A3AB01211B28 AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (238, 5, 72, N'jiaruwomen', N'加入我们', N'', N'', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3EF015CD7E8 AS DateTime), CAST(0x0000A3EF015F61F3 AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (239, 5, 84, N'ruhexiadan', N'如何下单', N'', N'', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3EF015CE4CC AS DateTime), CAST(0x0000A3EF015F4A75 AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (240, 5, 86, N'peisongshijian', N'配送时间', N'', N'', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3EF015CF408 AS DateTime), CAST(0x0000A3EF015F3C4D AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (241, 5, 89, N'huodaofukuan', N'货到付款', N'', N'', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3EF015D07F4 AS DateTime), CAST(0x0000A3EF015F176D AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (242, 5, 88, N'zaixianzhifu', N'在线支付', N'', N'', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3EF015D1988 AS DateTime), CAST(0x0000A3EF015F0584 AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (243, 5, 92, N'quxiaodingdan', N'取消订单', N'', N'', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3EF015D2B1C AS DateTime), CAST(0x0000A3EF015EF2D7 AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (244, 5, 91, N'tuihuohuanhuo', N'退货换货', N'', N'', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3EF015D3DDC AS DateTime), CAST(0x0000A3EF015EC3E9 AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (245, 5, 79, N'shangdianruzhu', N'商店入驻', N'', N'', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3EF015D716C AS DateTime), CAST(0x0000A3EF015EAF1C AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (246, 5, 80, N'guanggaofuwu', N'广告服务', N'', N'', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3EF015D7F7C AS DateTime), CAST(0x0000A3EF015E9BC6 AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (247, 5, 76, N'zhucedenglu', N'注册登录', N'', N'', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3EF015D8D8C AS DateTime), CAST(0x0000A3EF015E8AD2 AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (248, 5, 77, N'zhaohuimima', N'找回密码', N'', N'', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3EF015DA9AC AS DateTime), CAST(0x0000A3EF015E72F1 AS DateTime))
INSERT [dbo].[ax_article] ([id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [zhaiyao], [content], [sort_id], [click], [status], [groupids_view], [vote_id], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [add_time], [update_time]) VALUES (249, 5, 136, N'lianxiwomen', N'联系我们', N'', N'', N'', N'', N'', N'', N'', 99, 0, 0, N'', 0, 1, 0, 0, 0, 0, 1, N'admin', CAST(0x0000A3EF01621789 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[ax_article] OFF
/****** Object:  Table [dbo].[ax_article_comment]    Script Date: 05/18/2015 14:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_article_comment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ax_article_comment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[channel_id] [int] NULL,
	[article_id] [int] NULL,
	[parent_id] [int] NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[user_ip] [nvarchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[content] [ntext] COLLATE Chinese_PRC_CI_AS NULL,
	[is_lock] [tinyint] NULL,
	[add_time] [datetime] NULL,
	[is_reply] [tinyint] NULL,
	[reply_content] [ntext] COLLATE Chinese_PRC_CI_AS NULL,
	[reply_time] [datetime] NULL,
 CONSTRAINT [PK_DT_ARTICLE_COMMENT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[ax_article_comment] ON
INSERT [dbo].[ax_article_comment] ([id], [channel_id], [article_id], [parent_id], [user_id], [user_name], [user_ip], [content], [is_lock], [add_time], [is_reply], [reply_content], [reply_time]) VALUES (1, 2, 162, 0, 0, N'匿名用户', N'127.0.0.1', N'味道挺好!下次在来！', 0, CAST(0x0000A3AA00D91433 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[ax_article_comment] ([id], [channel_id], [article_id], [parent_id], [user_id], [user_name], [user_ip], [content], [is_lock], [add_time], [is_reply], [reply_content], [reply_time]) VALUES (2, 2, 181, 0, 0, N'匿名用户', N'127.0.0.1', N'味道正宗！赞一个！', 0, CAST(0x0000A3AA00D95478 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[ax_article_comment] ([id], [channel_id], [article_id], [parent_id], [user_id], [user_name], [user_ip], [content], [is_lock], [add_time], [is_reply], [reply_content], [reply_time]) VALUES (3, 2, 211, 0, 0, N'匿名用户', N'127.0.0.1', N'老牌子！非常喜欢！', 0, CAST(0x0000A3AA00D98A23 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[ax_article_comment] ([id], [channel_id], [article_id], [parent_id], [user_id], [user_name], [user_ip], [content], [is_lock], [add_time], [is_reply], [reply_content], [reply_time]) VALUES (4, 2, 215, 0, 0, N'匿名用户', N'127.0.0.1', N'老板人不错,速度很快,下次还来 ', 0, CAST(0x0000A3AA00D9E1D3 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[ax_article_comment] ([id], [channel_id], [article_id], [parent_id], [user_id], [user_name], [user_ip], [content], [is_lock], [add_time], [is_reply], [reply_content], [reply_time]) VALUES (5, 2, 226, 0, 1, N'aaaaaa', N'127.0.0.1', N'这个蛮方便，送货块服务也好好，以后购物就不去大超市，就用这个了。 ', 0, CAST(0x0000A3AA00DA2938 AS DateTime), 1, N'谢谢您的支持！您的满意是我们最大的幸福！', CAST(0x0000A3AA00DDC247 AS DateTime))
INSERT [dbo].[ax_article_comment] ([id], [channel_id], [article_id], [parent_id], [user_id], [user_name], [user_ip], [content], [is_lock], [add_time], [is_reply], [reply_content], [reply_time]) VALUES (6, 2, 229, 0, 1, N'aaaaaa', N'127.0.0.1', N'下订单还没到10分钟货就到了，真是神速！', 0, CAST(0x0000A3AA00DB1F50 AS DateTime), 1, N'谢谢您的支持！您的满意是我们最大的幸福！', CAST(0x0000A3AA00DDB7A8 AS DateTime))
INSERT [dbo].[ax_article_comment] ([id], [channel_id], [article_id], [parent_id], [user_id], [user_name], [user_ip], [content], [is_lock], [add_time], [is_reply], [reply_content], [reply_time]) VALUES (7, 2, 231, 0, 1, N'aaaaaa', N'127.0.0.1', N'好香的纸巾啊！吃饭的时候下的单，还没吃完，货就送到了，真棒棒！', 0, CAST(0x0000A3AA00DD2C50 AS DateTime), 1, N'谢谢您的支持！您的满意是我们最大的幸福！', CAST(0x0000A3AA00DDB1ED AS DateTime))
INSERT [dbo].[ax_article_comment] ([id], [channel_id], [article_id], [parent_id], [user_id], [user_name], [user_ip], [content], [is_lock], [add_time], [is_reply], [reply_content], [reply_time]) VALUES (8, 2, 210, 0, 1, N'aaaaaa', N'127.0.0.1', N'好吃！', 0, CAST(0x0000A3AA00E62CBB AS DateTime), 0, NULL, NULL)
INSERT [dbo].[ax_article_comment] ([id], [channel_id], [article_id], [parent_id], [user_id], [user_name], [user_ip], [content], [is_lock], [add_time], [is_reply], [reply_content], [reply_time]) VALUES (9, 2, 183, 0, 1, N'aaaaaa', N'127.0.0.1', N'东西很好！价钱可以！', 0, CAST(0x0000A3AA00E7BF58 AS DateTime), 1, N'谢谢您的支持！您的满意是我们最大的幸福', CAST(0x0000A3AA00EA7E9E AS DateTime))
INSERT [dbo].[ax_article_comment] ([id], [channel_id], [article_id], [parent_id], [user_id], [user_name], [user_ip], [content], [is_lock], [add_time], [is_reply], [reply_content], [reply_time]) VALUES (10, 2, 233, 0, 1, N'aaaaaa', N'127.0.0.1', N'东西很好！价钱可以！', 0, CAST(0x0000A3AA00E7E264 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[ax_article_comment] ([id], [channel_id], [article_id], [parent_id], [user_id], [user_name], [user_ip], [content], [is_lock], [add_time], [is_reply], [reply_content], [reply_time]) VALUES (11, 2, 172, 0, 0, N'匿名用户', N'127.0.0.1', N'东西到家太快啦，女儿很喜欢，谢谢老板<br />', 0, CAST(0x0000A3AA00E88718 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[ax_article_comment] ([id], [channel_id], [article_id], [parent_id], [user_id], [user_name], [user_ip], [content], [is_lock], [add_time], [is_reply], [reply_content], [reply_time]) VALUES (12, 2, 132, 0, 0, N'匿名用户', N'127.0.0.1', N'不错 口感很好 很干净 到货很快 <br />', 0, CAST(0x0000A3AA00E8E1F8 AS DateTime), 1, N'谢谢您的支持！您的满意是我们最大的幸福', CAST(0x0000A3AA00EA78D0 AS DateTime))
INSERT [dbo].[ax_article_comment] ([id], [channel_id], [article_id], [parent_id], [user_id], [user_name], [user_ip], [content], [is_lock], [add_time], [is_reply], [reply_content], [reply_time]) VALUES (13, 2, 233, 0, 0, N'匿名用户', N'127.0.0.1', N'来人吃饭 发现没买酒！我还要做饭，没空到店里面买，就定了一瓶，10几分钟送到了，真快真方便！感谢你们网站！以后我会经常光顾！', 0, CAST(0x0000A3AA00EA1D34 AS DateTime), 1, N'谢谢您的支持！您的满意是我们最大的幸福', CAST(0x0000A3AA00EA721C AS DateTime))
INSERT [dbo].[ax_article_comment] ([id], [channel_id], [article_id], [parent_id], [user_id], [user_name], [user_ip], [content], [is_lock], [add_time], [is_reply], [reply_content], [reply_time]) VALUES (14, 2, 234, 0, 0, N'匿名用户', N'127.0.0.1', N'好酒啊！可我买不起 哈哈！', 0, CAST(0x0000A3AA00EAD831 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[ax_article_comment] ([id], [channel_id], [article_id], [parent_id], [user_id], [user_name], [user_ip], [content], [is_lock], [add_time], [is_reply], [reply_content], [reply_time]) VALUES (15, 2, 225, 0, 0, N'匿名用户', N'127.0.0.1', N'价格比小区门口小店还便宜，还能送货上门！赞一个！', 0, CAST(0x0000A3AA00EB4CB3 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[ax_article_comment] ([id], [channel_id], [article_id], [parent_id], [user_id], [user_name], [user_ip], [content], [is_lock], [add_time], [is_reply], [reply_content], [reply_time]) VALUES (16, 2, 170, 0, 0, N'匿名用户', N'127.0.0.1', N'大白兔奶糖就是好吃！', 0, CAST(0x0000A3AC00C124EC AS DateTime), 1, N'飒飒', CAST(0x0000A3EF0152FE40 AS DateTime))
SET IDENTITY_INSERT [dbo].[ax_article_comment] OFF
/****** Object:  Table [dbo].[ax_article_category]    Script Date: 05/18/2015 14:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_article_category]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ax_article_category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[channel_id] [int] NOT NULL,
	[title] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[call_index] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[parent_id] [int] NULL,
	[class_list] [nvarchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[class_layer] [int] NULL,
	[sort_id] [int] NULL,
	[link_url] [nvarchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[img_url] [nvarchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[content] [ntext] COLLATE Chinese_PRC_CI_AS NULL,
	[seo_title] [nvarchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[seo_keywords] [nvarchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[seo_description] [nvarchar](255) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_DT_ARTICLE_CATEGORY] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[ax_article_category] ON
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (1, 1, N'店铺公告', N'dianpugonggao', 0, N',1,', 1, 1, N'', N'', N'', N'店铺公告', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (2, 2, N'舌尖上的美食', N'shejianshangdemeishi', 0, N',2,', 1, 1, N'', N'', N'', N'欢乐美食', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (11, 2, N'膨化', N'penghua', 2, N',2,11,', 2, 5, N'', N'', N'', N'膨化', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (12, 2, N'饼干糕点', N'binggangaodian', 2, N',2,12,', 2, 7, N'', N'', N'', N'饼干糕点', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (13, 2, N'干果梅类', N'ganguomeilei', 2, N',2,13,', 2, 6, N'', N'', N'', N'干果梅类', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (14, 2, N'畅快痛饮', N'changkuaitongyin', 0, N',14,', 1, 2, N'', N'', N'', N'畅快痛饮', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (15, 2, N'饮用水', N'yinyongshui', 14, N',14,15,', 2, 1, N'', N'', N'', N'饮用水', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (16, 2, N'碳酸饮料', N'tansuanyinliao', 14, N',14,16,', 2, 2, N'', N'', N'', N'碳酸饮料', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (17, 2, N'乳制品', N'ruzhipin', 14, N',14,17,', 2, 3, N'', N'', N'', N'乳制品', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (18, 2, N'茶饮料', N'chayinliao', 14, N',14,18,', 2, 4, N'', N'', N'', N'茶饮料', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (19, 2, N'护理中心', N'hulizhongxin', 0, N',19,', 1, 3, N'', N'', N'', N'护理中心', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (20, 2, N'护肤美颜', N'hufumeiyan', 19, N',19,20,', 2, 1, N'', N'', N'', N'护肤美颜', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (21, 2, N'美发护理', N'meifahuli', 19, N',19,21,', 2, 2, N'', N'', N'', N'美发护理', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (22, 2, N'沐浴护理', N'muyuhuli', 19, N',19,22,', 2, 3, N'', N'', N'', N'沐浴护理', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (23, 2, N'口腔护理', N'kouqianghuli', 19, N',19,23,', 2, 4, N'', N'', N'', N'口腔护理', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (24, 2, N'女性护理', N'nvxinghuli', 19, N',19,24,', 2, 5, N'', N'', N'', N'女性护理', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (33, 2, N'糖类', N'tanglei', 2, N',2,33,', 2, 4, N'', N'', N'', N'糖类', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (34, 2, N'卤味肉食', N'luweiroushi', 2, N',2,34,', 2, 3, N'', N'', N'', N'卤味肉食', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (35, 2, N'巧克力', N'qiaokeli', 2, N',2,35,', 2, 2, N'', N'', N'', N'巧克力', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (36, 2, N'方便速食', N'fangbiansushi', 2, N',2,36,', 2, 1, N'', N'', N'', N'方便速食', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (37, 2, N'果蔬饮品', N'guoshuyinpin', 14, N',14,37,', 2, 5, N'', N'', N'', N'果蔬饮品', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (38, 2, N'功能饮料', N'gongnenyinliao', 14, N',14,38,', 2, 6, N'', N'', N'', N'功能饮料', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (39, 2, N'茶叶', N'chaye', 14, N',14,39,', 2, 7, N'', N'', N'', N'茶叶', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (40, 2, N'营养冲剂', N'yingyangchongji', 14, N',14,40,', 2, 8, N'', N'', N'', N'营养冲剂', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (41, 2, N'婴儿护理', N'yingerhuli', 19, N',19,41,', 2, 6, N'', N'', N'', N'婴儿护理', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (42, 2, N'计生用品', N'jishengyongpin', 19, N',19,42,', 2, 7, N'', N'', N'', N'计生用品', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (43, 2, N'厨房秀技', N'chufangxiuji', 0, N',43,', 1, 4, N'', N'', N'', N'厨房秀技', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (44, 2, N'厨房清洁', N'chufangqingjie', 43, N',43,44,', 2, 1, N'', N'', N'', N'厨房清洁', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (45, 2, N'厨房用具', N'chufangyongju', 43, N',43,45,', 2, 2, N'', N'', N'', N'厨房用具', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (46, 2, N'食用油', N'shiyongyou', 43, N',43,46,', 2, 3, N'', N'', N'', N'食用油', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (47, 2, N'米面杂粮', N'mimianzaliang', 43, N',43,47,', 2, 4, N'', N'', N'', N'米面杂粮', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (48, 2, N'生抽酱油', N'shengchoujiangyou', 43, N',43,48,', 2, 5, N'', N'', N'', N'生抽酱油', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (49, 2, N'调味料', N'diaoweiliao', 43, N',43,49,', 2, 6, N'', N'', N'', N'调味料', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (50, 2, N'调味酱', N'diaoweijiang', 43, N',43,50,', 2, 7, N'', N'', N'', N'调味酱', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (51, 2, N'干货速冻', N'ganhuosudong', 43, N',43,51,', 2, 8, N'', N'', N'', N'干货速冻', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (52, 2, N'日用百货', N'riyongbaihuo', 0, N',52,', 1, 5, N'', N'', N'', N'日用百货', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (53, 2, N'纸品', N'zhipin', 52, N',52,53,', 2, 1, N'', N'', N'', N'纸品', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (54, 2, N'居家清洁', N'jijiaqingjie', 52, N',52,54,', 2, 2, N'', N'', N'', N'居家清洁', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (55, 2, N'夏日驱蚊', N'xiariquwen', 52, N',52,55,', 2, 3, N'', N'', N'', N'夏日驱蚊', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (56, 2, N'居家服饰', N'jijiafushi', 52, N',52,56,', 2, 4, N'', N'', N'', N'居家服饰', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (57, 2, N'杯盒之选', N'beihezhixuan', 52, N',52,57,', 2, 5, N'', N'', N'', N'杯盒之选', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (58, 2, N'文体用品', N'wentiyongpin', 52, N',52,58,', 2, 6, N'', N'', N'', N'文体用品', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (59, 2, N'其他用品', N'qitayongpin', 52, N',52,59,', 2, 7, N'', N'', N'', N'其他用品', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (60, 2, N'美酒人生', N'meijiurensheng', 0, N',60,', 1, 6, N'', N'', N'', N'美酒人生', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (61, 2, N'精酿白酒', N'jingniangbaijiu', 60, N',60,61,', 2, 1, N'', N'', N'', N'精酿白酒', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (62, 2, N'品味红酒', N'pinweihongjiu', 60, N',60,62,', 2, 2, N'', N'', N'', N'品味红酒', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (63, 2, N'畅爽啤酒', N'changshuangpijiu', 60, N',60,63,', 2, 3, N'', N'', N'', N'畅爽啤酒', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (64, 2, N'其他酒类', N'qitajiulei', 60, N',60,64,', 2, 4, N'', N'', N'', N'其他酒类', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (65, 2, N'礼品特选', N'lipintexuan', 0, N',65,', 1, 7, N'', N'', N'', N'礼品特选', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (66, 2, N'节日礼品', N'jierilipin', 65, N',65,66,', 2, 1, N'', N'', N'', N'节日礼品', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (67, 2, N'送小孩', N'songxiaohai', 65, N',65,67,', 2, 2, N'', N'', N'', N'送小孩', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (68, 2, N'送女士', N'songnvshi', 65, N',65,68,', 2, 3, N'', N'', N'', N'送女士', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (69, 2, N'送男士', N'songnanshi', 65, N',65,69,', 2, 4, N'', N'', N'', N'送男士', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (70, 2, N'结婚礼品', N'jiehunlipin', 65, N',65,70,', 2, 5, N'', N'', N'', N'结婚礼品', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (71, 5, N'关于我们', N'guanyuwomen', 0, N',71,', 1, 1, N'', N'', N'', N'关于我们', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (72, 5, N'加入我们', N'jiaruwomen', 71, N',71,72,', 2, 2, N'', N'', N'', N'加入我们', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (73, 5, N'走进我们', N'zoujinwomen', 71, N',71,73,', 2, 1, N'', N'', N'', N'走进我们', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (74, 5, N'会员中心', N'huiyuanzhongxin', 0, N',74,', 1, 7, N'', N'', N'', N'用户中心', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (76, 5, N'注册登录', N'zhucedenglu', 74, N',74,76,', 2, 1, N'', N'', N'', N'注册登录', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (77, 5, N'找回密码', N'zhaohuimima', 74, N',74,77,', 2, 2, N'', N'', N'', N'找回密码', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (78, 5, N'商务合作', N'shangwuhezuo', 0, N',78,', 1, 6, N'', N'', N'', N'商务合作', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (79, 5, N'商店入驻', N'shangdianruzhu', 78, N',78,79,', 2, 1, N'', N'', N'', N'商店入驻', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (80, 5, N'广告服务', N'guanggaofuwu', 78, N',78,80,', 2, 2, N'', N'', N'', N'广告服务', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (82, 4, N'热门兑换', N'remenduihuan', 0, N',82,', 1, 99, N'', N'', N'', N'热门兑换', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (83, 5, N'购物流程', N'gouwuliucheng', 0, N',83,', 1, 2, N'', N'', N'', N'购物流程', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (84, 5, N'如何下单', N'ruhexiadan', 83, N',83,84,', 2, 1, N'', N'', N'', N'如何下单', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (85, 5, N'配送方式', N'peisongfangshi', 0, N',85,', 1, 3, N'', N'', N'', N'配送方式', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (86, 5, N'配送时间', N'peisongshijian', 85, N',85,86,', 2, 1, N'', N'', N'', N'配送时间', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (87, 5, N'支付方式', N'zhifufangshi', 0, N',87,', 1, 4, N'', N'', N'', N'支付方式', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (88, 5, N'在线支付', N'zaixianzhifu', 87, N',87,88,', 2, 2, N'', N'', N'', N'在线支付', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (89, 5, N'货到付款', N'huodaofukuan', 87, N',87,89,', 2, 1, N'', N'', N'', N'货到付款', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (90, 5, N'售后服务', N'shouhoufuwu', 0, N',90,', 1, 5, N'', N'', N'', N'售后服务', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (91, 5, N'退货换货', N'tuihuohuanhuo', 90, N',90,91,', 2, 2, N'', N'', N'', N'退货换货', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (92, 5, N'取消订单', N'quxiaodingdan', 90, N',90,92,', 2, 1, N'', N'', N'', N'取消订单', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (93, 3, N'首页幻灯广告（700x340）', N'', 0, N',93,', 1, 1, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (94, 3, N'店铺公告上方广告（284x140）', N'', 0, N',94,', 1, 2, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (95, 3, N'横幅广告（1178 x 78）', N'', 0, N',95,', 1, 3, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (96, 3, N'右侧广告1（270x337）', N'', 0, N',96,', 1, 4, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (97, 3, N'右侧广告2（270x337）', N'', 0, N',97,', 1, 5, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (98, 6, N'上好佳', N'shanghaojia', 0, N',98,', 1, 99, N'', N'/upload/201409/20/201409201901492031.jpg', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (99, 6, N'盼盼', N'panpan', 0, N',99,', 1, 99, N'', N'/upload/201409/20/201409201902002031.jpg', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (100, 6, N'乐事', N'', 0, N',100,', 1, 99, N'', N'/upload/201409/20/201409201905258593.jpg', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (101, 6, N'旺旺', N'wangwang', 0, N',101,', 1, 99, N'', N'/upload/201409/20/201409201905361875.jpg', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (102, 6, N'康师傅', N'kangshifu', 0, N',102,', 1, 99, N'', N'/upload/201409/20/201409201904483750.jpg', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (103, 6, N'好丽友', N'haoliyou', 0, N',103,', 1, 99, N'', N'/upload/201409/20/201409201905554062.jpg', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (104, 6, N'福娃', N'fuwa', 0, N',104,', 1, 99, N'', N'/upload/201409/20/201409201906132187.jpg', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (105, 6, N'阿尔卑斯', N'aerbeisi', 0, N',105,', 1, 99, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (106, 6, N'德芙', N'defu', 0, N',106,', 1, 99, N'', N'/upload/201409/20/201409201907023593.jpg', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (107, 6, N'众乐乐', N'zhonglele', 0, N',107,', 1, 99, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (108, 6, N'万顺', N'wanshun', 0, N',108,', 1, 99, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (109, 6, N'春悦', N'chunyue', 0, N',109,', 1, 99, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (110, 6, N'奥利奥', N'aoliao', 0, N',110,', 1, 99, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (111, 6, N'光明', N'guangming', 0, N',111,', 1, 99, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (112, 6, N'蒙牛', N'mengniu', 0, N',112,', 1, 99, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (113, 6, N'特仑苏', N'telunsu', 0, N',113,', 1, 99, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (114, 6, N'伊利', N'yili', 0, N',114,', 1, 99, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (115, 6, N'王屋', N'wangwu', 0, N',115,', 1, 99, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (116, 6, N'快乐星球', N'kuailexingqiu', 0, N',116,', 1, 99, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (117, 6, N'名仁', N'mingren', 0, N',117,', 1, 99, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (118, 6, N'唇爱', N'chunai', 0, N',118,', 1, 99, N'', N'', N'', N'', N'', N'')
GO
print 'Processed 100 total records'
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (119, 6, N'农夫山泉水', N'nongfushanquanshui', 0, N',119,', 1, 99, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (120, 6, N'野岭', N'yeling', 0, N',120,', 1, 99, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (121, 6, N'百岁山', N'baisuishan', 0, N',121,', 1, 99, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (122, 6, N'魔宙', N'mozhou', 0, N',122,', 1, 99, N'', N'', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (123, 6, N'七度空间', N'qidukongjian', 0, N',123,', 1, 1, N'', N'/upload/201409/20/201409201908394218.jpg', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (124, 6, N'安尔乐', N'anerle', 0, N',124,', 1, 2, N'', N'/upload/201409/20/201409201908162656.jpg', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (125, 6, N'佳期', N'jiaqi', 0, N',125,', 1, 3, N'', N'/upload/201409/18/201409181704404843.jpg', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (126, 6, N'护理假', N'hulijia', 0, N',126,', 1, 9, N'', N'/upload/201409/18/201409181712135781.jpg', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (127, 6, N'冷酸灵', N'lingsuanling', 0, N',127,', 1, 4, N'', N'/upload/201409/20/201409201908034843.jpg', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (128, 6, N'多乐士', N'duoleshi', 0, N',128,', 1, 99, N'', N'/upload/201409/18/201409181712364375.jpg', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (129, 6, N'笑爽', N'xiaoshuang', 0, N',129,', 1, 5, N'', N'/upload/201409/18/201409181712135781.jpg', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (130, 6, N'苏菲', N'sufei', 0, N',130,', 1, 6, N'', N'/upload/201409/18/201409181705104687.jpg', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (131, 6, N'三笑', N'sanxiao', 0, N',131,', 1, 7, N'', N'/upload/201409/18/201409181704590156.jpg', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (132, 6, N'高露洁', N'gaolujie', 0, N',132,', 1, 99, N'', N'/upload/201409/18/201409181704493750.jpg', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (133, 6, N'川南', N'chuannan', 0, N',133,', 1, 99, N'', N'/upload/201409/18/201409181704404843.jpg', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (134, 6, N'恒顺', N'hengshun', 0, N',134,', 1, 8, N'', N'/upload/201409/18/201409181704291875.jpg', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (135, 6, N'欧式', N'oushi', 0, N',135,', 1, 99, N'', N'/upload/201409/18/201409181704191093.jpg', N'', N'', N'', N'')
INSERT [dbo].[ax_article_category] ([id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description]) VALUES (136, 5, N'联系我们', N'lianxiwomen', 71, N',71,136,', 2, 3, N'', N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[ax_article_category] OFF
/****** Object:  Table [dbo].[ax_article_attribute_value]    Script Date: 05/18/2015 14:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_value]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ax_article_attribute_value](
	[article_id] [int] NOT NULL,
	[sub_title] [nvarchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[source] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[author] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[goods_no] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[stock_quantity] [int] NULL,
	[market_price] [decimal](9, 2) NULL,
	[sell_price] [decimal](9, 2) NULL,
	[point] [int] NULL,
 CONSTRAINT [PK_DT_ARTICLE_ATTRIBUTE_VALUE] PRIMARY KEY CLUSTERED 
(
	[article_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (106, NULL, N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (107, NULL, N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), -300)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (108, NULL, N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), -200)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (109, NULL, N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), -100)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (110, NULL, N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (111, NULL, N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (112, NULL, N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (113, NULL, N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (114, NULL, N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (129, N'上好佳-玉米卷-90g', N'', N'', N'', 1000, CAST(5.50 AS Decimal(9, 2)), CAST(5.50 AS Decimal(9, 2)), 5)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (130, N'上好佳-酸甜口味田园薯片-90g', N'', N'', N'', 1000, CAST(5.50 AS Decimal(9, 2)), CAST(5.50 AS Decimal(9, 2)), 5)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (131, N'上好佳-黄瓜味空心薯笛-45g', N'', N'', N'', 1000, CAST(3.00 AS Decimal(9, 2)), CAST(3.00 AS Decimal(9, 2)), 3)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (132, N'上好佳-红烧牛肉味田园薯片-90g', N'', N'', N'', 1000, CAST(5.50 AS Decimal(9, 2)), CAST(5.50 AS Decimal(9, 2)), 5)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (133, N'上好佳-番茄味空心薯笛-45g', N'', N'', N'', 1000, CAST(3.00 AS Decimal(9, 2)), CAST(3.00 AS Decimal(9, 2)), 3)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (134, N'上好佳-鲜虾条-90g', N'', N'', N'', 1000, CAST(5.50 AS Decimal(9, 2)), CAST(5.50 AS Decimal(9, 2)), 5)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (135, NULL, N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (136, NULL, N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (137, NULL, N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (138, NULL, N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (139, NULL, N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (140, NULL, N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (141, NULL, N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (142, NULL, N'本站', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (143, NULL, N'', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (144, N'盼盼-香辣鸡味块-105g（袋装）', N'', N'', N'', 1000, CAST(3.50 AS Decimal(9, 2)), CAST(3.50 AS Decimal(9, 2)), 3)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (145, N'盼盼-墨西哥鸡味块-105g（袋装）', N'', N'', N'', 1000, CAST(3.50 AS Decimal(9, 2)), CAST(3.50 AS Decimal(9, 2)), 3)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (146, N'盼盼-麦香鸡味块-105g（袋装）', N'', N'', N'', 1000, CAST(3.50 AS Decimal(9, 2)), CAST(3.50 AS Decimal(9, 2)), 3)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (147, N'盼盼-历史庄园泰式咖喱虾味薯片-38g', N'', N'', N'', 1000, CAST(2.00 AS Decimal(9, 2)), CAST(2.00 AS Decimal(9, 2)), 2)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (148, N'乐事-意式揽香番茄味圆筒装薯片-104g', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(7.90 AS Decimal(9, 2)), 8)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (149, N'乐事-无限鲜浓番茄味圆筒装薯片-104g', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(7.90 AS Decimal(9, 2)), 8)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (150, N'乐事-田园番茄味圆筒装薯片-104g', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(7.90 AS Decimal(9, 2)), 8)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (151, N'乐事-吮指味圆筒装薯片-104g', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(7.90 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (152, N'好丽友-巧克力派-2枚', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(3.50 AS Decimal(9, 2)), 3)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (153, N'好丽友-烧烤味味好多鱼-33g', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(4.00 AS Decimal(9, 2)), 4)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (154, N'好丽友-榛子巧克力味磨古力-48g', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(4.20 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (155, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(4.20 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (156, N'光明-莫里斯安牛奶200g*12瓶装', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(52.50 AS Decimal(9, 2)), 52)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (157, N'蒙牛-纯牛奶-250mlx16瓶装', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(47.00 AS Decimal(9, 2)), 47)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (158, N'特仑苏-纯牛奶-250mlx12瓶装', N'', N'', N'', 1000, CAST(45.80 AS Decimal(9, 2)), CAST(45.80 AS Decimal(9, 2)), 46)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (159, N'伊利-舒化奶-250mlx12瓶箱装', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(57.00 AS Decimal(9, 2)), 57)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (160, N'伊利-味可滋240mlx12瓶装', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(46.00 AS Decimal(9, 2)), 46)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (161, N'美汁源-草莓味果粒奶优450ml', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(3.80 AS Decimal(9, 2)), 4)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (162, N'美汁源-营养原味果粒奶优450ml', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(3.80 AS Decimal(9, 2)), 4)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (163, N'莫斯利安-原味-200ml', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(5.00 AS Decimal(9, 2)), 5)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (164, N'伊利-安慕希希腊酸奶-205ml', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(5.50 AS Decimal(9, 2)), 5)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (165, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(2.00 AS Decimal(9, 2)), 2)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (166, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(5.30 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (167, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(8.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (168, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(4.50 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (169, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(6.80 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (170, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(12.80 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (171, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(12.80 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (172, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(6.50 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (173, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(8.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (174, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(8.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (175, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(8.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (176, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(8.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (177, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(34.80 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (178, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(6.50 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (179, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(6.50 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (180, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(6.50 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (181, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(2.20 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (182, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(2.50 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (183, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(2.50 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (184, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(4.50 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (185, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(2.50 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (186, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(3.80 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (187, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(1.50 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (188, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(2.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (189, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(2.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (190, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(2.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (191, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(3.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (192, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(3.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (193, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(3.50 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (194, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(3.80 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (195, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(2.50 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (196, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(2.50 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (197, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(4.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (198, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(3.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (199, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(3.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (200, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(3.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (201, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(4.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (202, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(4.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (203, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(3.50 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (204, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(5.50 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (205, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(24.80 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (206, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(24.80 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (207, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(24.80 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (208, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(29.50 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (209, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(15.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (210, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(15.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (211, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(23.50 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (212, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(19.80 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (213, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(18.50 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (214, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(18.50 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (215, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(8.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (216, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(39.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (217, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(22.50 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (218, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(42.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (219, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(22.50 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (220, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(19.00 AS Decimal(9, 2)), 0)
GO
print 'Processed 100 total records'
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (221, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(15.50 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (222, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(15.50 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (223, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(15.50 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (224, N'雕牌-丝瓜洗洁精-1.5L', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(14.50 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (225, N'雕牌-高效洗洁精-500g', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(3.80 AS Decimal(9, 2)), 4)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (226, N'白猫-经典配方洗洁精-2kg', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(16.00 AS Decimal(9, 2)), 16)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (227, N'白猫-柠檬红茶洗洁精-500g', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(3.50 AS Decimal(9, 2)), 3)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (228, N'暖暖 七星系列方巾纸-400张', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(4.00 AS Decimal(9, 2)), 4)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (229, N'天女花 特柔刀切纸-798张', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(6.50 AS Decimal(9, 2)), 7)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (230, N'五月花 婴儿柔卷纸卷纸-140gx10卷', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(27.00 AS Decimal(9, 2)), 27)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (231, N'五月花 福盒装抽纸-200抽', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(6.00 AS Decimal(9, 2)), 6)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (232, N'茅台醇-二龙戏珠御品盒装', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(398.00 AS Decimal(9, 2)), 398)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (233, N'古井蓝花淡雅42度', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(45.00 AS Decimal(9, 2)), 45)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (234, N'茅台醇-浓香型盒装500ml2瓶装45度', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(880.00 AS Decimal(9, 2)), 880)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (235, N'迎驾贡酒四星40.3 度', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(48.00 AS Decimal(9, 2)), 48)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (236, N'', N'', N'', N'', 1000, CAST(0.00 AS Decimal(9, 2)), CAST(16.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (238, NULL, N'', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (239, NULL, N'', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (240, NULL, N'', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (241, NULL, N'', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (242, NULL, N'', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (243, NULL, N'', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (244, NULL, N'', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (245, NULL, N'', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (246, NULL, N'', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (247, NULL, N'', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (248, NULL, N'', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[ax_article_attribute_value] ([article_id], [sub_title], [source], [author], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (249, NULL, N'', N'', N'', 0, CAST(0.00 AS Decimal(9, 2)), CAST(0.00 AS Decimal(9, 2)), 0)
/****** Object:  Table [dbo].[ax_order_goods]    Script Date: 05/18/2015 14:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_order_goods]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ax_order_goods](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[goods_id] [int] NULL,
	[goods_title] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[goods_price] [decimal](9, 2) NULL,
	[real_price] [decimal](9, 2) NULL,
	[quantity] [int] NULL,
	[point] [int] NULL,
 CONSTRAINT [PK_DT_ORDER_GOODS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[ax_order_goods] ON
INSERT [dbo].[ax_order_goods] ([id], [order_id], [goods_id], [goods_title], [goods_price], [real_price], [quantity], [point]) VALUES (7, 3, 22, N'索尼（SONY）Tablet SGPT112CN/S 9.4英寸平板电脑（Android 3.2 32GB 蓝牙 WIFI 双摄像头 扩展插槽 银）', CAST(1899.00 AS Decimal(9, 2)), CAST(1899.00 AS Decimal(9, 2)), 1, 23)
INSERT [dbo].[ax_order_goods] ([id], [order_id], [goods_id], [goods_title], [goods_price], [real_price], [quantity], [point]) VALUES (8, 4, 10, N'索尼（SONY）ST26i 3G手机（粉色）WCDMA/GSM', CAST(1999.00 AS Decimal(9, 2)), CAST(1999.00 AS Decimal(9, 2)), 1, 20)
INSERT [dbo].[ax_order_goods] ([id], [order_id], [goods_id], [goods_title], [goods_price], [real_price], [quantity], [point]) VALUES (9, 5, 131, N'上好佳-黄瓜味空心薯笛-45g', CAST(3.00 AS Decimal(9, 2)), CAST(3.00 AS Decimal(9, 2)), 1, 3)
INSERT [dbo].[ax_order_goods] ([id], [order_id], [goods_id], [goods_title], [goods_price], [real_price], [quantity], [point]) VALUES (10, 5, 132, N'上好佳-红烧牛肉味田园薯片-90g', CAST(5.50 AS Decimal(9, 2)), CAST(5.50 AS Decimal(9, 2)), 1, 5)
SET IDENTITY_INSERT [dbo].[ax_order_goods] OFF
/****** Object:  Table [dbo].[ax_manager]    Script Date: 05/18/2015 14:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_manager]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ax_manager](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_id] [int] NOT NULL,
	[role_type] [int] NULL,
	[user_name] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[password] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[salt] [nvarchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[real_name] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[telephone] [nvarchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[email] [nvarchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[is_lock] [int] NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_MANAGER] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[ax_manager] ON
INSERT [dbo].[ax_manager] ([id], [role_id], [role_type], [user_name], [password], [salt], [real_name], [telephone], [email], [is_lock], [add_time]) VALUES (1, 1, 1, N'51aspx', N'98214B777FC7D80D', N'28LH48', N'超级管理员', N'0552-2079767', N'lhee@163.com', 0, CAST(0x0000A28A001F3380 AS DateTime))
INSERT [dbo].[ax_manager] ([id], [role_id], [role_type], [user_name], [password], [salt], [real_name], [telephone], [email], [is_lock], [add_time]) VALUES (2, 4, 2, N'aaaaaa', N'2C2FD034B5789AB3', N'F8DP42', N'小王', N'1308989898', N'', 0, CAST(0x0000A39A01678D2E AS DateTime))
INSERT [dbo].[ax_manager] ([id], [role_id], [role_type], [user_name], [password], [salt], [real_name], [telephone], [email], [is_lock], [add_time]) VALUES (3, 3, 2, N'bbbbbb', N'4831B430E361DD58', N'4D2TLD', N'小李', N'', N'', 0, CAST(0x0000A39A0167DA7C AS DateTime))
SET IDENTITY_INSERT [dbo].[ax_manager] OFF
/****** Object:  Table [dbo].[ax_channel]    Script Date: 05/18/2015 14:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_channel]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ax_channel](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [int] NULL,
	[name] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[title] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[is_albums] [tinyint] NULL,
	[is_attach] [tinyint] NULL,
	[is_group_price] [tinyint] NULL,
	[page_size] [int] NULL,
	[sort_id] [int] NULL,
 CONSTRAINT [PK_DT_CHANNEL] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[ax_channel] ON
INSERT [dbo].[ax_channel] ([id], [category_id], [name], [title], [is_albums], [is_attach], [is_group_price], [page_size], [sort_id]) VALUES (1, 1, N'news', N'新闻资讯', 0, 0, 0, 12, 2)
INSERT [dbo].[ax_channel] ([id], [category_id], [name], [title], [is_albums], [is_attach], [is_group_price], [page_size], [sort_id]) VALUES (2, 1, N'goods', N'购物商城', 1, 0, 1, 24, 1)
INSERT [dbo].[ax_channel] ([id], [category_id], [name], [title], [is_albums], [is_attach], [is_group_price], [page_size], [sort_id]) VALUES (3, 1, N'photo', N'广告管理', 1, 0, 0, 12, 3)
INSERT [dbo].[ax_channel] ([id], [category_id], [name], [title], [is_albums], [is_attach], [is_group_price], [page_size], [sort_id]) VALUES (4, 1, N'down', N'积分商城', 0, 1, 0, 12, 4)
INSERT [dbo].[ax_channel] ([id], [category_id], [name], [title], [is_albums], [is_attach], [is_group_price], [page_size], [sort_id]) VALUES (5, 1, N'content', N'公司介绍', 0, 0, 0, 12, 5)
INSERT [dbo].[ax_channel] ([id], [category_id], [name], [title], [is_albums], [is_attach], [is_group_price], [page_size], [sort_id]) VALUES (6, 1, N'pingpai', N'商品品牌', 1, 0, 0, 12, 111)
SET IDENTITY_INSERT [dbo].[ax_channel] OFF
/****** Object:  Table [dbo].[ax_manager_role_value]    Script Date: 05/18/2015 14:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_manager_role_value]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ax_manager_role_value](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_id] [int] NULL,
	[nav_name] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[action_type] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_DT_MANAGER_ROLE_VALUE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[ax_manager_role_value] ON
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (14, 4, N'sys_contents', N'Show')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (15, 4, N'channel_main', N'Show')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (16, 4, N'channel_news', N'Show')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (17, 4, N'channel_news_list', N'Show')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (18, 4, N'channel_news_list', N'View')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (19, 4, N'channel_news_list', N'Add')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (20, 4, N'channel_news_list', N'Edit')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (21, 4, N'channel_news_list', N'Delete')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (22, 4, N'channel_news_list', N'Audit')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (23, 4, N'channel_news_category', N'Show')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (24, 4, N'channel_news_category', N'View')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (25, 4, N'channel_news_category', N'Add')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (26, 4, N'channel_news_category', N'Edit')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (27, 4, N'channel_news_category', N'Delete')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (28, 4, N'channel_news_comment', N'Show')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (29, 4, N'channel_news_comment', N'View')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (30, 4, N'channel_news_comment', N'Delete')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (31, 4, N'channel_news_comment', N'Reply')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (32, 4, N'channel_goods', N'Show')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (33, 4, N'channel_goods_list', N'Show')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (34, 4, N'channel_goods_list', N'View')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (35, 4, N'channel_goods_list', N'Add')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (36, 4, N'channel_goods_list', N'Edit')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (37, 4, N'channel_goods_list', N'Delete')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (38, 4, N'channel_goods_list', N'Audit')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (39, 4, N'channel_goods_category', N'Show')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (40, 4, N'channel_goods_category', N'View')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (41, 4, N'channel_goods_category', N'Add')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (42, 4, N'channel_goods_category', N'Edit')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (43, 4, N'channel_goods_category', N'Delete')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (44, 4, N'channel_goods_comment', N'Show')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (45, 4, N'channel_goods_comment', N'View')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (46, 4, N'channel_goods_comment', N'Delete')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (47, 4, N'channel_goods_comment', N'Reply')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (48, 4, N'channel_content', N'Show')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (49, 4, N'channel_content_list', N'Show')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (50, 4, N'channel_content_list', N'View')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (51, 4, N'channel_content_list', N'Add')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (52, 4, N'channel_content_list', N'Edit')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (53, 4, N'channel_content_list', N'Delete')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (54, 4, N'channel_content_list', N'Audit')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (55, 4, N'channel_content_category', N'Show')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (56, 4, N'channel_content_category', N'View')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (57, 4, N'channel_content_category', N'Add')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (58, 4, N'channel_content_category', N'Edit')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (59, 4, N'channel_content_category', N'Delete')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (60, 4, N'channel_content_comment', N'Show')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (61, 4, N'channel_content_comment', N'View')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (62, 4, N'channel_content_comment', N'Delete')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (63, 4, N'channel_content_comment', N'Reply')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (64, 4, N'sys_plugins', N'Show')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (65, 4, N'plugin_link', N'Show')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (66, 4, N'plugin_link', N'View')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (67, 4, N'plugin_link', N'Add')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (68, 4, N'plugin_link', N'Edit')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (69, 4, N'plugin_link', N'Delete')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (70, 4, N'plugin_link', N'Audit')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (71, 4, N'plugin_feedback', N'Show')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (72, 4, N'plugin_feedback', N'View')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (73, 4, N'plugin_feedback', N'Delete')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (74, 4, N'plugin_feedback', N'Audit')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (75, 4, N'plugin_feedback', N'Reply')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (76, 4, N'sys_users', N'Show')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (77, 4, N'user_manage', N'Show')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (78, 4, N'user_audit', N'Show')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (79, 4, N'user_audit', N'View')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (80, 4, N'user_audit', N'Audit')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (81, 4, N'user_list', N'Show')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (82, 4, N'user_list', N'View')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (83, 4, N'user_list', N'Add')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (84, 4, N'user_list', N'Edit')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (85, 4, N'user_list', N'Delete')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (86, 4, N'user_group', N'Show')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (87, 4, N'user_group', N'View')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (88, 4, N'user_group', N'Add')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (89, 4, N'user_group', N'Edit')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (90, 4, N'user_group', N'Delete')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (91, 4, N'user_log', N'Show')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (92, 4, N'user_sms', N'Show')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (93, 4, N'user_sms', N'View')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (94, 4, N'user_sms', N'Add')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (95, 4, N'user_message', N'Show')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (96, 4, N'user_message', N'View')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (97, 4, N'user_message', N'Add')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (98, 4, N'user_message', N'Delete')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (99, 4, N'user_point_log', N'Show')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (100, 4, N'user_point_log', N'View')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (101, 4, N'user_point_log', N'Delete')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (102, 4, N'user_amount_log', N'Show')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (103, 4, N'user_amount_log', N'View')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (104, 4, N'user_amount_log', N'Delete')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (105, 4, N'sys_orders', N'Show')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (106, 4, N'order_manage', N'Show')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (107, 4, N'order_confirm', N'Show')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (108, 4, N'order_confirm', N'View')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (109, 4, N'order_confirm', N'Confirm')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (110, 4, N'order_list', N'Show')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (111, 4, N'order_list', N'View')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (112, 4, N'order_list', N'Add')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (113, 4, N'order_list', N'Edit')
GO
print 'Processed 100 total records'
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (114, 4, N'order_list', N'Delete')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (115, 4, N'order_list', N'Confirm')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (116, 4, N'order_list', N'Cancel')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (117, 4, N'order_list', N'Invalid')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (118, 4, N'order_config', N'Show')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (119, 4, N'order_config', N'View')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (120, 4, N'order_config', N'Edit')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (121, 4, N'order_express', N'Show')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (122, 4, N'order_express', N'View')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (123, 4, N'order_express', N'Add')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (124, 4, N'order_express', N'Edit')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (125, 4, N'order_express', N'Delete')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (139, 3, N'sys_orders', N'Show')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (140, 3, N'order_manage', N'Show')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (141, 3, N'order_confirm', N'Show')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (142, 3, N'order_confirm', N'View')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (143, 3, N'order_confirm', N'Confirm')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (144, 3, N'order_list', N'Show')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (145, 3, N'order_list', N'View')
INSERT [dbo].[ax_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (146, 3, N'order_list', N'Confirm')
SET IDENTITY_INSERT [dbo].[ax_manager_role_value] OFF
/****** Object:  Table [dbo].[ax_users]    Script Date: 05/18/2015 14:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ax_users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[group_id] [int] NOT NULL,
	[user_name] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[password] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[salt] [nvarchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[email] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[nick_name] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[avatar] [nvarchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[sex] [nvarchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[birthday] [datetime] NULL,
	[telphone] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[mobile] [nvarchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[qq] [nvarchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[address] [nvarchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[safe_question] [nvarchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[safe_answer] [nvarchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[amount] [decimal](9, 2) NULL,
	[point] [int] NULL,
	[exp] [int] NULL,
	[status] [tinyint] NULL,
	[reg_time] [datetime] NULL,
	[reg_ip] [nvarchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[express_id] [int] NULL,
 CONSTRAINT [PK_DT_USERS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[ax_users] ON
INSERT [dbo].[ax_users] ([id], [group_id], [user_name], [password], [salt], [email], [nick_name], [avatar], [sex], [birthday], [telphone], [mobile], [qq], [address], [safe_question], [safe_answer], [amount], [point], [exp], [status], [reg_time], [reg_ip], [express_id]) VALUES (1, 1, N'aaaaaa', N'52C3B97C53B434E7', N'BXBF22', N'18955230618@qq.com', N'fff', N'/upload/201409/18/201409181315443125.jpg', N'男', NULL, N'', N'13222222222', N'', N'jjjjjjjjjjjjjjjjjjjjjjjjjj', N'', N'', CAST(1.00 AS Decimal(9, 2)), 30, 20, 0, CAST(0x0000A3960174FEB8 AS DateTime), N'127.0.0.1', 4)
SET IDENTITY_INSERT [dbo].[ax_users] OFF
/****** Object:  View [dbo].[view_channel_photo]    Script Date: 05/18/2015 14:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[view_channel_photo]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[view_channel_photo] as SELECT ax_article.* FROM ax_article_attribute_value INNER JOIN ax_article ON ax_article_attribute_value.article_id = ax_article.id WHERE ax_article.channel_id=3

'
GO
/****** Object:  View [dbo].[view_channel_news]    Script Date: 05/18/2015 14:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[view_channel_news]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[view_channel_news] as SELECT ax_article.*,ax_article_attribute_value.source,ax_article_attribute_value.author FROM ax_article_attribute_value INNER JOIN ax_article ON ax_article_attribute_value.article_id = ax_article.id WHERE ax_article.channel_id=1

'
GO
/****** Object:  View [dbo].[view_channel_goods]    Script Date: 05/18/2015 14:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[view_channel_goods]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[view_channel_goods] as SELECT ax_article.*,ax_article_attribute_value.goods_no,ax_article_attribute_value.stock_quantity,ax_article_attribute_value.sell_price,ax_article_attribute_value.point FROM ax_article_attribute_value INNER JOIN ax_article ON ax_article_attribute_value.article_id = ax_article.id WHERE ax_article.channel_id=2

'
GO
/****** Object:  View [dbo].[view_channel_down]    Script Date: 05/18/2015 14:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[view_channel_down]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[view_channel_down] as SELECT ax_article.*,ax_article_attribute_value.point FROM ax_article_attribute_value INNER JOIN ax_article ON ax_article_attribute_value.article_id = ax_article.id WHERE ax_article.channel_id=4

'
GO
/****** Object:  View [dbo].[view_channel_content]    Script Date: 05/18/2015 14:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[view_channel_content]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[view_channel_content] as SELECT ax_article.* FROM ax_article_attribute_value INNER JOIN ax_article ON ax_article_attribute_value.article_id = ax_article.id WHERE ax_article.channel_id=5

'
GO
/****** Object:  Table [dbo].[ax_user_login_log]    Script Date: 05/18/2015 14:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_user_login_log]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ax_user_login_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[user_name] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[remark] [nvarchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[login_time] [datetime] NULL,
	[login_ip] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_DT_USER_LOGIN_LOG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[ax_user_login_log] ON
INSERT [dbo].[ax_user_login_log] ([id], [user_id], [user_name], [remark], [login_time], [login_ip]) VALUES (1, 1, N'aaaaaa', N'会员登录', CAST(0x0000A3960174FF65 AS DateTime), N'127.0.0.1')
INSERT [dbo].[ax_user_login_log] ([id], [user_id], [user_name], [remark], [login_time], [login_ip]) VALUES (2, 1, N'aaaaaa', N'会员登录', CAST(0x0000A39700B72936 AS DateTime), N'127.0.0.1')
INSERT [dbo].[ax_user_login_log] ([id], [user_id], [user_name], [remark], [login_time], [login_ip]) VALUES (3, 1, N'aaaaaa', N'会员登录', CAST(0x0000A3970156852E AS DateTime), N'127.0.0.1')
INSERT [dbo].[ax_user_login_log] ([id], [user_id], [user_name], [remark], [login_time], [login_ip]) VALUES (4, 1, N'aaaaaa', N'会员登录', CAST(0x0000A39801667353 AS DateTime), N'127.0.0.1')
INSERT [dbo].[ax_user_login_log] ([id], [user_id], [user_name], [remark], [login_time], [login_ip]) VALUES (5, 1, N'aaaaaa', N'会员登录', CAST(0x0000A3980171960E AS DateTime), N'127.0.0.1')
INSERT [dbo].[ax_user_login_log] ([id], [user_id], [user_name], [remark], [login_time], [login_ip]) VALUES (6, 1, N'aaaaaa', N'会员登录', CAST(0x0000A3980173DC84 AS DateTime), N'127.0.0.1')
INSERT [dbo].[ax_user_login_log] ([id], [user_id], [user_name], [remark], [login_time], [login_ip]) VALUES (7, 1, N'aaaaaa', N'会员登录', CAST(0x0000A398017A5862 AS DateTime), N'127.0.0.1')
INSERT [dbo].[ax_user_login_log] ([id], [user_id], [user_name], [remark], [login_time], [login_ip]) VALUES (8, 1, N'aaaaaa', N'会员登录', CAST(0x0000A3990172F707 AS DateTime), N'127.0.0.1')
INSERT [dbo].[ax_user_login_log] ([id], [user_id], [user_name], [remark], [login_time], [login_ip]) VALUES (10, 1, N'aaaaaa', N'会员登录', CAST(0x0000A39A0163E98E AS DateTime), N'127.0.0.1')
INSERT [dbo].[ax_user_login_log] ([id], [user_id], [user_name], [remark], [login_time], [login_ip]) VALUES (11, 1, N'aaaaaa', N'会员登录', CAST(0x0000A39A016AA965 AS DateTime), N'127.0.0.1')
INSERT [dbo].[ax_user_login_log] ([id], [user_id], [user_name], [remark], [login_time], [login_ip]) VALUES (12, 1, N'aaaaaa', N'会员登录', CAST(0x0000A39A016B154C AS DateTime), N'127.0.0.1')
INSERT [dbo].[ax_user_login_log] ([id], [user_id], [user_name], [remark], [login_time], [login_ip]) VALUES (13, 1, N'aaaaaa', N'会员登录', CAST(0x0000A3A8010D9790 AS DateTime), N'127.0.0.1')
INSERT [dbo].[ax_user_login_log] ([id], [user_id], [user_name], [remark], [login_time], [login_ip]) VALUES (14, 1, N'aaaaaa', N'会员登录', CAST(0x0000A3AA00D9EFC3 AS DateTime), N'127.0.0.1')
SET IDENTITY_INSERT [dbo].[ax_user_login_log] OFF
/****** Object:  Table [dbo].[ax_user_code]    Script Date: 05/18/2015 14:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_user_code]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ax_user_code](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[user_name] [nvarchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[type] [nvarchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[str_code] [nvarchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[count] [int] NULL,
	[status] [tinyint] NULL,
	[eff_time] [datetime] NOT NULL,
	[add_time] [datetime] NOT NULL,
 CONSTRAINT [PK_DT_USER_CODE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[ax_channel_field]    Script Date: 05/18/2015 14:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ax_channel_field]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ax_channel_field](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[channel_id] [int] NOT NULL,
	[field_id] [int] NOT NULL,
 CONSTRAINT [PK_DT_CHANNEL_FIELD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[ax_channel_field] ON
INSERT [dbo].[ax_channel_field] ([id], [channel_id], [field_id]) VALUES (1, 1, 2)
INSERT [dbo].[ax_channel_field] ([id], [channel_id], [field_id]) VALUES (2, 1, 3)
INSERT [dbo].[ax_channel_field] ([id], [channel_id], [field_id]) VALUES (4, 2, 4)
INSERT [dbo].[ax_channel_field] ([id], [channel_id], [field_id]) VALUES (5, 2, 5)
INSERT [dbo].[ax_channel_field] ([id], [channel_id], [field_id]) VALUES (7, 2, 7)
INSERT [dbo].[ax_channel_field] ([id], [channel_id], [field_id]) VALUES (8, 2, 8)
INSERT [dbo].[ax_channel_field] ([id], [channel_id], [field_id]) VALUES (15, 4, 8)
SET IDENTITY_INSERT [dbo].[ax_channel_field] OFF
/****** Object:  Default [DF__dt_articl__chann__0697FACD]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__chann__0697FACD]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__chann__0697FACD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] ADD  CONSTRAINT [DF__dt_articl__chann__0697FACD]  DEFAULT (0) FOR [channel_id]
END


End
GO
/****** Object:  Default [DF__dt_articl__categ__078C1F06]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__categ__078C1F06]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__categ__078C1F06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] ADD  CONSTRAINT [DF__dt_articl__categ__078C1F06]  DEFAULT (0) FOR [category_id]
END


End
GO
/****** Object:  Default [DF__dt_articl__call___0880433F]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__call___0880433F]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__call___0880433F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] ADD  CONSTRAINT [DF__dt_articl__call___0880433F]  DEFAULT ('') FOR [call_index]
END


End
GO
/****** Object:  Default [DF__dt_articl__link___09746778]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__link___09746778]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__link___09746778]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] ADD  CONSTRAINT [DF__dt_articl__link___09746778]  DEFAULT ('') FOR [link_url]
END


End
GO
/****** Object:  Default [DF__dt_articl__img_u__0A688BB1]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__img_u__0A688BB1]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__img_u__0A688BB1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] ADD  CONSTRAINT [DF__dt_articl__img_u__0A688BB1]  DEFAULT ('') FOR [img_url]
END


End
GO
/****** Object:  Default [DF__dt_articl__seo_t__0B5CAFEA]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__seo_t__0B5CAFEA]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__seo_t__0B5CAFEA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] ADD  CONSTRAINT [DF__dt_articl__seo_t__0B5CAFEA]  DEFAULT ('') FOR [seo_title]
END


End
GO
/****** Object:  Default [DF__dt_articl__seo_k__0C50D423]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__seo_k__0C50D423]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__seo_k__0C50D423]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] ADD  CONSTRAINT [DF__dt_articl__seo_k__0C50D423]  DEFAULT ('') FOR [seo_keywords]
END


End
GO
/****** Object:  Default [DF__dt_articl__seo_d__0D44F85C]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__seo_d__0D44F85C]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__seo_d__0D44F85C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] ADD  CONSTRAINT [DF__dt_articl__seo_d__0D44F85C]  DEFAULT ('') FOR [seo_description]
END


End
GO
/****** Object:  Default [DF__dt_articl__zhaiy__0E391C95]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__zhaiy__0E391C95]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__zhaiy__0E391C95]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] ADD  CONSTRAINT [DF__dt_articl__zhaiy__0E391C95]  DEFAULT ('') FOR [zhaiyao]
END


End
GO
/****** Object:  Default [DF__dt_articl__sort___0F2D40CE]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__sort___0F2D40CE]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__sort___0F2D40CE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] ADD  CONSTRAINT [DF__dt_articl__sort___0F2D40CE]  DEFAULT (99) FOR [sort_id]
END


End
GO
/****** Object:  Default [DF__dt_articl__click__10216507]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__click__10216507]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__click__10216507]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] ADD  CONSTRAINT [DF__dt_articl__click__10216507]  DEFAULT (0) FOR [click]
END


End
GO
/****** Object:  Default [DF__dt_articl__statu__11158940]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__statu__11158940]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__statu__11158940]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] ADD  CONSTRAINT [DF__dt_articl__statu__11158940]  DEFAULT (0) FOR [status]
END


End
GO
/****** Object:  Default [DF__dt_articl__group__1209AD79]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__group__1209AD79]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__group__1209AD79]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] ADD  CONSTRAINT [DF__dt_articl__group__1209AD79]  DEFAULT ('') FOR [groupids_view]
END


End
GO
/****** Object:  Default [DF__dt_articl__vote___12FDD1B2]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__vote___12FDD1B2]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__vote___12FDD1B2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] ADD  CONSTRAINT [DF__dt_articl__vote___12FDD1B2]  DEFAULT (0) FOR [vote_id]
END


End
GO
/****** Object:  Default [DF__dt_articl__is_ms__13F1F5EB]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__is_ms__13F1F5EB]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__is_ms__13F1F5EB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] ADD  CONSTRAINT [DF__dt_articl__is_ms__13F1F5EB]  DEFAULT (0) FOR [is_msg]
END


End
GO
/****** Object:  Default [DF__dt_articl__is_to__14E61A24]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__is_to__14E61A24]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__is_to__14E61A24]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] ADD  CONSTRAINT [DF__dt_articl__is_to__14E61A24]  DEFAULT (0) FOR [is_top]
END


End
GO
/****** Object:  Default [DF__dt_articl__is_re__15DA3E5D]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__is_re__15DA3E5D]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__is_re__15DA3E5D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] ADD  CONSTRAINT [DF__dt_articl__is_re__15DA3E5D]  DEFAULT (0) FOR [is_red]
END


End
GO
/****** Object:  Default [DF__dt_articl__is_ho__16CE6296]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__is_ho__16CE6296]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__is_ho__16CE6296]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] ADD  CONSTRAINT [DF__dt_articl__is_ho__16CE6296]  DEFAULT (0) FOR [is_hot]
END


End
GO
/****** Object:  Default [DF__dt_articl__is_sl__17C286CF]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__is_sl__17C286CF]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__is_sl__17C286CF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] ADD  CONSTRAINT [DF__dt_articl__is_sl__17C286CF]  DEFAULT (0) FOR [is_slide]
END


End
GO
/****** Object:  Default [DF__dt_articl__is_sy__18B6AB08]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__is_sy__18B6AB08]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__is_sy__18B6AB08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] ADD  CONSTRAINT [DF__dt_articl__is_sy__18B6AB08]  DEFAULT (0) FOR [is_sys]
END


End
GO
/****** Object:  Default [DF__dt_articl__add_t__19AACF41]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__add_t__19AACF41]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__add_t__19AACF41]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article] ADD  CONSTRAINT [DF__dt_articl__add_t__19AACF41]  DEFAULT (getdate()) FOR [add_time]
END


End
GO
/****** Object:  Default [DF__dt_articl__artic__1C873BEC]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__artic__1C873BEC]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_albums]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__artic__1C873BEC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_albums] ADD  CONSTRAINT [DF__dt_articl__artic__1C873BEC]  DEFAULT (0) FOR [article_id]
END


End
GO
/****** Object:  Default [DF__dt_articl__thumb__1D7B6025]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__thumb__1D7B6025]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_albums]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__thumb__1D7B6025]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_albums] ADD  CONSTRAINT [DF__dt_articl__thumb__1D7B6025]  DEFAULT ('') FOR [thumb_path]
END


End
GO
/****** Object:  Default [DF__dt_articl__origi__1E6F845E]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__origi__1E6F845E]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_albums]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__origi__1E6F845E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_albums] ADD  CONSTRAINT [DF__dt_articl__origi__1E6F845E]  DEFAULT ('') FOR [original_path]
END


End
GO
/****** Object:  Default [DF__dt_articl__remar__1F63A897]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__remar__1F63A897]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_albums]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__remar__1F63A897]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_albums] ADD  CONSTRAINT [DF__dt_articl__remar__1F63A897]  DEFAULT ('') FOR [remark]
END


End
GO
/****** Object:  Default [DF__dt_articl__add_t__2057CCD0]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__add_t__2057CCD0]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_albums]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__add_t__2057CCD0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_albums] ADD  CONSTRAINT [DF__dt_articl__add_t__2057CCD0]  DEFAULT (getdate()) FOR [add_time]
END


End
GO
/****** Object:  Default [DF__dt_articl__artic__2334397B]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__artic__2334397B]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attach]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__artic__2334397B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attach] ADD  CONSTRAINT [DF__dt_articl__artic__2334397B]  DEFAULT (0) FOR [article_id]
END


End
GO
/****** Object:  Default [DF__dt_articl__file___24285DB4]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__file___24285DB4]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attach]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__file___24285DB4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attach] ADD  CONSTRAINT [DF__dt_articl__file___24285DB4]  DEFAULT ('') FOR [file_name]
END


End
GO
/****** Object:  Default [DF__dt_articl__file___251C81ED]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__file___251C81ED]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attach]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__file___251C81ED]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attach] ADD  CONSTRAINT [DF__dt_articl__file___251C81ED]  DEFAULT ('') FOR [file_path]
END


End
GO
/****** Object:  Default [DF__dt_articl__file___2610A626]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__file___2610A626]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attach]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__file___2610A626]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attach] ADD  CONSTRAINT [DF__dt_articl__file___2610A626]  DEFAULT (0) FOR [file_size]
END


End
GO
/****** Object:  Default [DF__dt_articl__file___2704CA5F]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__file___2704CA5F]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attach]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__file___2704CA5F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attach] ADD  CONSTRAINT [DF__dt_articl__file___2704CA5F]  DEFAULT ('') FOR [file_ext]
END


End
GO
/****** Object:  Default [DF__dt_articl__down___27F8EE98]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__down___27F8EE98]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attach]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__down___27F8EE98]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attach] ADD  CONSTRAINT [DF__dt_articl__down___27F8EE98]  DEFAULT (0) FOR [down_num]
END


End
GO
/****** Object:  Default [DF__dt_articl__point__28ED12D1]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__point__28ED12D1]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attach]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__point__28ED12D1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attach] ADD  CONSTRAINT [DF__dt_articl__point__28ED12D1]  DEFAULT (0) FOR [point]
END


End
GO
/****** Object:  Default [DF__dt_articl__add_t__29E1370A]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__add_t__29E1370A]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attach]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__add_t__29E1370A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attach] ADD  CONSTRAINT [DF__dt_articl__add_t__29E1370A]  DEFAULT (getdate()) FOR [add_time]
END


End
GO
/****** Object:  Default [DF__dt_articl__title__1EF99443]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__title__1EF99443]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_field]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__title__1EF99443]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__title__1EF99443]  DEFAULT ('') FOR [title]
END


End
GO
/****** Object:  Default [DF__dt_articl__data___1FEDB87C]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__data___1FEDB87C]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_field]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__data___1FEDB87C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__data___1FEDB87C]  DEFAULT (0) FOR [data_length]
END


End
GO
/****** Object:  Default [DF__dt_articl__data___20E1DCB5]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__data___20E1DCB5]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_field]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__data___20E1DCB5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__data___20E1DCB5]  DEFAULT (0) FOR [data_place]
END


End
GO
/****** Object:  Default [DF__dt_articl__item___21D600EE]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__item___21D600EE]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_field]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__item___21D600EE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__item___21D600EE]  DEFAULT ('') FOR [item_option]
END


End
GO
/****** Object:  Default [DF__dt_articl__defau__22CA2527]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__defau__22CA2527]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_field]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__defau__22CA2527]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__defau__22CA2527]  DEFAULT ('') FOR [default_value]
END


End
GO
/****** Object:  Default [DF__dt_articl__is_re__23BE4960]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__is_re__23BE4960]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_field]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__is_re__23BE4960]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__is_re__23BE4960]  DEFAULT (0) FOR [is_required]
END


End
GO
/****** Object:  Default [DF__dt_articl__is_pa__24B26D99]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__is_pa__24B26D99]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_field]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__is_pa__24B26D99]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__is_pa__24B26D99]  DEFAULT (0) FOR [is_password]
END


End
GO
/****** Object:  Default [DF__dt_articl__is_ht__25A691D2]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__is_ht__25A691D2]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_field]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__is_ht__25A691D2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__is_ht__25A691D2]  DEFAULT (0) FOR [is_html]
END


End
GO
/****** Object:  Default [DF__dt_articl__edito__269AB60B]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__edito__269AB60B]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_field]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__edito__269AB60B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__edito__269AB60B]  DEFAULT (0) FOR [editor_type]
END


End
GO
/****** Object:  Default [DF__dt_articl__valid__278EDA44]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__valid__278EDA44]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_field]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__valid__278EDA44]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__valid__278EDA44]  DEFAULT ('') FOR [valid_tip_msg]
END


End
GO
/****** Object:  Default [DF__dt_articl__valid__2882FE7D]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__valid__2882FE7D]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_field]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__valid__2882FE7D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__valid__2882FE7D]  DEFAULT ('') FOR [valid_error_msg]
END


End
GO
/****** Object:  Default [DF__dt_articl__valid__297722B6]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__valid__297722B6]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_field]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__valid__297722B6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__valid__297722B6]  DEFAULT ('') FOR [valid_pattern]
END


End
GO
/****** Object:  Default [DF__dt_articl__sort___2A6B46EF]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__sort___2A6B46EF]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_field]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__sort___2A6B46EF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__sort___2A6B46EF]  DEFAULT (99) FOR [sort_id]
END


End
GO
/****** Object:  Default [DF__dt_articl__is_sy__2B5F6B28]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__is_sy__2B5F6B28]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_field]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__is_sy__2B5F6B28]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__is_sy__2B5F6B28]  DEFAULT (0) FOR [is_sys]
END


End
GO
/****** Object:  Default [DF__dt_articl__sourc__3BFFE745]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__sourc__3BFFE745]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_value]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__sourc__3BFFE745]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_value] ADD  CONSTRAINT [DF__dt_articl__sourc__3BFFE745]  DEFAULT ('') FOR [source]
END


End
GO
/****** Object:  Default [DF__dt_articl__autho__3CF40B7E]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__autho__3CF40B7E]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_value]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__autho__3CF40B7E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_value] ADD  CONSTRAINT [DF__dt_articl__autho__3CF40B7E]  DEFAULT ('') FOR [author]
END


End
GO
/****** Object:  Default [DF__dt_articl__goods__3DE82FB7]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__goods__3DE82FB7]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_value]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__goods__3DE82FB7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_value] ADD  CONSTRAINT [DF__dt_articl__goods__3DE82FB7]  DEFAULT ('') FOR [goods_no]
END


End
GO
/****** Object:  Default [DF__dt_articl__stock__3EDC53F0]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__stock__3EDC53F0]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_value]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__stock__3EDC53F0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_value] ADD  CONSTRAINT [DF__dt_articl__stock__3EDC53F0]  DEFAULT (0) FOR [stock_quantity]
END


End
GO
/****** Object:  Default [DF__dt_articl__marke__3FD07829]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__marke__3FD07829]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_value]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__marke__3FD07829]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_value] ADD  CONSTRAINT [DF__dt_articl__marke__3FD07829]  DEFAULT (0) FOR [market_price]
END


End
GO
/****** Object:  Default [DF__dt_articl__sell___40C49C62]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__sell___40C49C62]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_value]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__sell___40C49C62]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_value] ADD  CONSTRAINT [DF__dt_articl__sell___40C49C62]  DEFAULT (0) FOR [sell_price]
END


End
GO
/****** Object:  Default [DF__dt_articl__point__41B8C09B]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__point__41B8C09B]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_value]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__point__41B8C09B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_attribute_value] ADD  CONSTRAINT [DF__dt_articl__point__41B8C09B]  DEFAULT (0) FOR [point]
END


End
GO
/****** Object:  Default [DF__dt_articl__call___4589517F]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__call___4589517F]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_category]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__call___4589517F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_category] ADD  CONSTRAINT [DF__dt_articl__call___4589517F]  DEFAULT ('') FOR [call_index]
END


End
GO
/****** Object:  Default [DF__dt_articl__paren__467D75B8]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__paren__467D75B8]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_category]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__paren__467D75B8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_category] ADD  CONSTRAINT [DF__dt_articl__paren__467D75B8]  DEFAULT (0) FOR [parent_id]
END


End
GO
/****** Object:  Default [DF__dt_articl__class__477199F1]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__class__477199F1]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_category]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__class__477199F1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_category] ADD  CONSTRAINT [DF__dt_articl__class__477199F1]  DEFAULT (0) FOR [class_layer]
END


End
GO
/****** Object:  Default [DF__dt_articl__sort___4865BE2A]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__sort___4865BE2A]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_category]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__sort___4865BE2A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_category] ADD  CONSTRAINT [DF__dt_articl__sort___4865BE2A]  DEFAULT (99) FOR [sort_id]
END


End
GO
/****** Object:  Default [DF__dt_articl__link___4959E263]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__link___4959E263]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_category]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__link___4959E263]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_category] ADD  CONSTRAINT [DF__dt_articl__link___4959E263]  DEFAULT ('') FOR [link_url]
END


End
GO
/****** Object:  Default [DF__dt_articl__img_u__4A4E069C]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__img_u__4A4E069C]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_category]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__img_u__4A4E069C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_category] ADD  CONSTRAINT [DF__dt_articl__img_u__4A4E069C]  DEFAULT ('') FOR [img_url]
END


End
GO
/****** Object:  Default [DF__dt_articl__seo_t__4B422AD5]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__seo_t__4B422AD5]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_category]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__seo_t__4B422AD5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_category] ADD  CONSTRAINT [DF__dt_articl__seo_t__4B422AD5]  DEFAULT ('') FOR [seo_title]
END


End
GO
/****** Object:  Default [DF__dt_articl__seo_k__4C364F0E]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__seo_k__4C364F0E]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_category]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__seo_k__4C364F0E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_category] ADD  CONSTRAINT [DF__dt_articl__seo_k__4C364F0E]  DEFAULT ('') FOR [seo_keywords]
END


End
GO
/****** Object:  Default [DF__dt_articl__seo_d__4D2A7347]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__seo_d__4D2A7347]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_category]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__seo_d__4D2A7347]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_category] ADD  CONSTRAINT [DF__dt_articl__seo_d__4D2A7347]  DEFAULT ('') FOR [seo_description]
END


End
GO
/****** Object:  Default [DF__dt_articl__chann__5006DFF2]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__chann__5006DFF2]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_comment]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__chann__5006DFF2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_comment] ADD  CONSTRAINT [DF__dt_articl__chann__5006DFF2]  DEFAULT (0) FOR [channel_id]
END


End
GO
/****** Object:  Default [DF__dt_articl__artic__50FB042B]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__artic__50FB042B]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_comment]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__artic__50FB042B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_comment] ADD  CONSTRAINT [DF__dt_articl__artic__50FB042B]  DEFAULT (0) FOR [article_id]
END


End
GO
/****** Object:  Default [DF__dt_articl__paren__51EF2864]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__paren__51EF2864]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_comment]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__paren__51EF2864]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_comment] ADD  CONSTRAINT [DF__dt_articl__paren__51EF2864]  DEFAULT (0) FOR [parent_id]
END


End
GO
/****** Object:  Default [DF__dt_articl__user___52E34C9D]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__user___52E34C9D]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_comment]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__user___52E34C9D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_comment] ADD  CONSTRAINT [DF__dt_articl__user___52E34C9D]  DEFAULT (0) FOR [user_id]
END


End
GO
/****** Object:  Default [DF__dt_articl__user___53D770D6]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__user___53D770D6]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_comment]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__user___53D770D6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_comment] ADD  CONSTRAINT [DF__dt_articl__user___53D770D6]  DEFAULT ('') FOR [user_name]
END


End
GO
/****** Object:  Default [DF__dt_articl__is_lo__54CB950F]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__is_lo__54CB950F]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_comment]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__is_lo__54CB950F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_comment] ADD  CONSTRAINT [DF__dt_articl__is_lo__54CB950F]  DEFAULT (0) FOR [is_lock]
END


End
GO
/****** Object:  Default [DF__dt_articl__add_t__55BFB948]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__add_t__55BFB948]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_comment]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__add_t__55BFB948]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_comment] ADD  CONSTRAINT [DF__dt_articl__add_t__55BFB948]  DEFAULT (getdate()) FOR [add_time]
END


End
GO
/****** Object:  Default [DF__dt_articl__is_re__56B3DD81]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_articl__is_re__56B3DD81]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_comment]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_articl__is_re__56B3DD81]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_article_comment] ADD  CONSTRAINT [DF__dt_articl__is_re__56B3DD81]  DEFAULT (0) FOR [is_reply]
END


End
GO
/****** Object:  Default [DF__dt_channe__categ__59904A2C]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_channe__categ__59904A2C]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_channel]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_channe__categ__59904A2C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_channel] ADD  CONSTRAINT [DF__dt_channe__categ__59904A2C]  DEFAULT (0) FOR [category_id]
END


End
GO
/****** Object:  Default [DF__dt_channel__name__5A846E65]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_channel__name__5A846E65]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_channel]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_channel__name__5A846E65]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_channel] ADD  CONSTRAINT [DF__dt_channel__name__5A846E65]  DEFAULT ('') FOR [name]
END


End
GO
/****** Object:  Default [DF__dt_channe__title__5B78929E]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_channe__title__5B78929E]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_channel]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_channe__title__5B78929E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_channel] ADD  CONSTRAINT [DF__dt_channe__title__5B78929E]  DEFAULT ('') FOR [title]
END


End
GO
/****** Object:  Default [DF__dt_channe__is_al__5C6CB6D7]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_channe__is_al__5C6CB6D7]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_channel]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_channe__is_al__5C6CB6D7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_channel] ADD  CONSTRAINT [DF__dt_channe__is_al__5C6CB6D7]  DEFAULT (0) FOR [is_albums]
END


End
GO
/****** Object:  Default [DF__dt_channe__is_at__5D60DB10]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_channe__is_at__5D60DB10]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_channel]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_channe__is_at__5D60DB10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_channel] ADD  CONSTRAINT [DF__dt_channe__is_at__5D60DB10]  DEFAULT (0) FOR [is_attach]
END


End
GO
/****** Object:  Default [DF__dt_channe__is_gr__5E54FF49]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_channe__is_gr__5E54FF49]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_channel]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_channe__is_gr__5E54FF49]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_channel] ADD  CONSTRAINT [DF__dt_channe__is_gr__5E54FF49]  DEFAULT (0) FOR [is_group_price]
END


End
GO
/****** Object:  Default [DF__dt_channe__page___5F492382]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_channe__page___5F492382]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_channel]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_channe__page___5F492382]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_channel] ADD  CONSTRAINT [DF__dt_channe__page___5F492382]  DEFAULT (0) FOR [page_size]
END


End
GO
/****** Object:  Default [DF__dt_channe__sort___603D47BB]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_channe__sort___603D47BB]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_channel]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_channe__sort___603D47BB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_channel] ADD  CONSTRAINT [DF__dt_channe__sort___603D47BB]  DEFAULT (99) FOR [sort_id]
END


End
GO
/****** Object:  Default [DF__dt_channe__title__6319B466]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_channe__title__6319B466]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_channel_category]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_channe__title__6319B466]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_channel_category] ADD  CONSTRAINT [DF__dt_channe__title__6319B466]  DEFAULT ('') FOR [title]
END


End
GO
/****** Object:  Default [DF__dt_channe__build__640DD89F]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_channe__build__640DD89F]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_channel_category]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_channe__build__640DD89F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_channel_category] ADD  CONSTRAINT [DF__dt_channe__build__640DD89F]  DEFAULT ('') FOR [build_path]
END


End
GO
/****** Object:  Default [DF__dt_channe__templ__6501FCD8]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_channe__templ__6501FCD8]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_channel_category]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_channe__templ__6501FCD8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_channel_category] ADD  CONSTRAINT [DF__dt_channe__templ__6501FCD8]  DEFAULT ('') FOR [templet_path]
END


End
GO
/****** Object:  Default [DF__dt_channe__domai__65F62111]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_channe__domai__65F62111]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_channel_category]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_channe__domai__65F62111]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_channel_category] ADD  CONSTRAINT [DF__dt_channe__domai__65F62111]  DEFAULT ('') FOR [domain]
END


End
GO
/****** Object:  Default [DF__dt_channe__is_de__66EA454A]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_channe__is_de__66EA454A]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_channel_category]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_channe__is_de__66EA454A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_channel_category] ADD  CONSTRAINT [DF__dt_channe__is_de__66EA454A]  DEFAULT (0) FOR [is_default]
END


End
GO
/****** Object:  Default [DF__dt_channe__sort___67DE6983]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_channe__sort___67DE6983]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_channel_category]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_channe__sort___67DE6983]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_channel_category] ADD  CONSTRAINT [DF__dt_channe__sort___67DE6983]  DEFAULT (99) FOR [sort_id]
END


End
GO
/****** Object:  Default [DF__dt_expres__expre__6CA31EA0]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_expres__expre__6CA31EA0]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_express]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_expres__expre__6CA31EA0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_express] ADD  CONSTRAINT [DF__dt_expres__expre__6CA31EA0]  DEFAULT ('') FOR [express_code]
END


End
GO
/****** Object:  Default [DF__dt_expres__expre__6D9742D9]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_expres__expre__6D9742D9]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_express]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_expres__expre__6D9742D9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_express] ADD  CONSTRAINT [DF__dt_expres__expre__6D9742D9]  DEFAULT (0) FOR [express_fee]
END


End
GO
/****** Object:  Default [DF__dt_expres__websi__6E8B6712]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_expres__websi__6E8B6712]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_express]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_expres__websi__6E8B6712]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_express] ADD  CONSTRAINT [DF__dt_expres__websi__6E8B6712]  DEFAULT ('') FOR [website]
END


End
GO
/****** Object:  Default [DF__dt_expres__remar__6F7F8B4B]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_expres__remar__6F7F8B4B]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_express]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_expres__remar__6F7F8B4B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_express] ADD  CONSTRAINT [DF__dt_expres__remar__6F7F8B4B]  DEFAULT ('') FOR [remark]
END


End
GO
/****** Object:  Default [DF__dt_expres__sort___7073AF84]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_expres__sort___7073AF84]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_express]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_expres__sort___7073AF84]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_express] ADD  CONSTRAINT [DF__dt_expres__sort___7073AF84]  DEFAULT (99) FOR [sort_id]
END


End
GO
/****** Object:  Default [DF__dt_expres__is_lo__7167D3BD]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_expres__is_lo__7167D3BD]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_express]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_expres__is_lo__7167D3BD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_express] ADD  CONSTRAINT [DF__dt_expres__is_lo__7167D3BD]  DEFAULT (0) FOR [is_lock]
END


End
GO
/****** Object:  Default [DF__dt_feedba__add_t__405A880E]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_feedba__add_t__405A880E]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_feedback]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_feedba__add_t__405A880E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_feedback] ADD  CONSTRAINT [DF__dt_feedba__add_t__405A880E]  DEFAULT (getdate()) FOR [add_time]
END


End
GO
/****** Object:  Default [DF__dt_feedba__reply__414EAC47]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_feedba__reply__414EAC47]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_feedback]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_feedba__reply__414EAC47]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_feedback] ADD  CONSTRAINT [DF__dt_feedba__reply__414EAC47]  DEFAULT ('') FOR [reply_content]
END


End
GO
/****** Object:  Default [DF__dt_feedba__is_lo__4242D080]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_feedba__is_lo__4242D080]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_feedback]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_feedba__is_lo__4242D080]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_feedback] ADD  CONSTRAINT [DF__dt_feedba__is_lo__4242D080]  DEFAULT (0) FOR [is_lock]
END


End
GO
/****** Object:  Default [DF__dt_link__is_imag__35DCF99B]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_link__is_imag__35DCF99B]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_link]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_link__is_imag__35DCF99B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_link] ADD  CONSTRAINT [DF__dt_link__is_imag__35DCF99B]  DEFAULT (0) FOR [is_image]
END


End
GO
/****** Object:  Default [DF__dt_link__sort_id__36D11DD4]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_link__sort_id__36D11DD4]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_link]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_link__sort_id__36D11DD4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_link] ADD  CONSTRAINT [DF__dt_link__sort_id__36D11DD4]  DEFAULT (99) FOR [sort_id]
END


End
GO
/****** Object:  Default [DF__dt_link__is_red__37C5420D]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_link__is_red__37C5420D]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_link]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_link__is_red__37C5420D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_link] ADD  CONSTRAINT [DF__dt_link__is_red__37C5420D]  DEFAULT (0) FOR [is_red]
END


End
GO
/****** Object:  Default [DF__dt_link__add_tim__38B96646]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_link__add_tim__38B96646]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_link]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_link__add_tim__38B96646]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_link] ADD  CONSTRAINT [DF__dt_link__add_tim__38B96646]  DEFAULT (getdate()) FOR [add_time]
END


End
GO
/****** Object:  Default [DF__dt_mail_t__is_sy__74444068]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_mail_t__is_sy__74444068]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_mail_template]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_mail_t__is_sy__74444068]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_mail_template] ADD  CONSTRAINT [DF__dt_mail_t__is_sy__74444068]  DEFAULT (0) FOR [is_sys]
END


End
GO
/****** Object:  Default [DF__dt_manage__role___7720AD13]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_manage__role___7720AD13]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_manager]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_manage__role___7720AD13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_manager] ADD  CONSTRAINT [DF__dt_manage__role___7720AD13]  DEFAULT (2) FOR [role_type]
END


End
GO
/****** Object:  Default [DF__dt_manage__real___7814D14C]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_manage__real___7814D14C]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_manager]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_manage__real___7814D14C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_manager] ADD  CONSTRAINT [DF__dt_manage__real___7814D14C]  DEFAULT ('') FOR [real_name]
END


End
GO
/****** Object:  Default [DF__dt_manage__telep__7908F585]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_manage__telep__7908F585]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_manager]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_manage__telep__7908F585]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_manager] ADD  CONSTRAINT [DF__dt_manage__telep__7908F585]  DEFAULT ('') FOR [telephone]
END


End
GO
/****** Object:  Default [DF__dt_manage__email__79FD19BE]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_manage__email__79FD19BE]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_manager]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_manage__email__79FD19BE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_manager] ADD  CONSTRAINT [DF__dt_manage__email__79FD19BE]  DEFAULT ('') FOR [email]
END


End
GO
/****** Object:  Default [DF__dt_manage__is_lo__7AF13DF7]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_manage__is_lo__7AF13DF7]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_manager]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_manage__is_lo__7AF13DF7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_manager] ADD  CONSTRAINT [DF__dt_manage__is_lo__7AF13DF7]  DEFAULT (0) FOR [is_lock]
END


End
GO
/****** Object:  Default [DF__dt_manage__add_t__7BE56230]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_manage__add_t__7BE56230]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_manager]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_manage__add_t__7BE56230]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_manager] ADD  CONSTRAINT [DF__dt_manage__add_t__7BE56230]  DEFAULT (getdate()) FOR [add_time]
END


End
GO
/****** Object:  Default [DF__dt_manage__add_t__451F3D2B]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_manage__add_t__451F3D2B]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_manager_log]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_manage__add_t__451F3D2B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_manager_log] ADD  CONSTRAINT [DF__dt_manage__add_t__451F3D2B]  DEFAULT (getdate()) FOR [add_time]
END


End
GO
/****** Object:  Default [DF__dt_manage__is_sy__019E3B86]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_manage__is_sy__019E3B86]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_manager_role]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_manage__is_sy__019E3B86]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_manager_role] ADD  CONSTRAINT [DF__dt_manage__is_sy__019E3B86]  DEFAULT (0) FOR [is_sys]
END


End
GO
/****** Object:  Default [DF__dt_naviga__nav_t__0FB750B3]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_naviga__nav_t__0FB750B3]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_navigation]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_naviga__nav_t__0FB750B3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_navigation] ADD  CONSTRAINT [DF__dt_naviga__nav_t__0FB750B3]  DEFAULT ('') FOR [nav_type]
END


End
GO
/****** Object:  Default [DF__dt_navigat__name__10AB74EC]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_navigat__name__10AB74EC]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_navigation]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_navigat__name__10AB74EC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_navigation] ADD  CONSTRAINT [DF__dt_navigat__name__10AB74EC]  DEFAULT ('') FOR [name]
END


End
GO
/****** Object:  Default [DF__dt_naviga__title__119F9925]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_naviga__title__119F9925]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_navigation]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_naviga__title__119F9925]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_navigation] ADD  CONSTRAINT [DF__dt_naviga__title__119F9925]  DEFAULT ('') FOR [title]
END


End
GO
/****** Object:  Default [DF__dt_naviga__sub_t__1293BD5E]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_naviga__sub_t__1293BD5E]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_navigation]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_naviga__sub_t__1293BD5E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_navigation] ADD  CONSTRAINT [DF__dt_naviga__sub_t__1293BD5E]  DEFAULT ('') FOR [sub_title]
END


End
GO
/****** Object:  Default [DF__dt_naviga__link___1387E197]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_naviga__link___1387E197]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_navigation]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_naviga__link___1387E197]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_navigation] ADD  CONSTRAINT [DF__dt_naviga__link___1387E197]  DEFAULT ('') FOR [link_url]
END


End
GO
/****** Object:  Default [DF__dt_naviga__sort___147C05D0]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_naviga__sort___147C05D0]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_navigation]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_naviga__sort___147C05D0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_navigation] ADD  CONSTRAINT [DF__dt_naviga__sort___147C05D0]  DEFAULT (99) FOR [sort_id]
END


End
GO
/****** Object:  Default [DF__dt_naviga__is_lo__15702A09]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_naviga__is_lo__15702A09]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_navigation]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_naviga__is_lo__15702A09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_navigation] ADD  CONSTRAINT [DF__dt_naviga__is_lo__15702A09]  DEFAULT (0) FOR [is_lock]
END


End
GO
/****** Object:  Default [DF__dt_naviga__remar__16644E42]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_naviga__remar__16644E42]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_navigation]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_naviga__remar__16644E42]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_navigation] ADD  CONSTRAINT [DF__dt_naviga__remar__16644E42]  DEFAULT ('') FOR [remark]
END


End
GO
/****** Object:  Default [DF__dt_naviga__paren__1758727B]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_naviga__paren__1758727B]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_navigation]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_naviga__paren__1758727B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_navigation] ADD  CONSTRAINT [DF__dt_naviga__paren__1758727B]  DEFAULT (0) FOR [parent_id]
END


End
GO
/****** Object:  Default [DF__dt_naviga__class__184C96B4]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_naviga__class__184C96B4]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_navigation]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_naviga__class__184C96B4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_navigation] ADD  CONSTRAINT [DF__dt_naviga__class__184C96B4]  DEFAULT ('') FOR [class_list]
END


End
GO
/****** Object:  Default [DF__dt_naviga__class__1940BAED]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_naviga__class__1940BAED]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_navigation]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_naviga__class__1940BAED]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_navigation] ADD  CONSTRAINT [DF__dt_naviga__class__1940BAED]  DEFAULT (1) FOR [class_layer]
END


End
GO
/****** Object:  Default [DF__dt_naviga__chann__1A34DF26]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_naviga__chann__1A34DF26]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_navigation]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_naviga__chann__1A34DF26]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_navigation] ADD  CONSTRAINT [DF__dt_naviga__chann__1A34DF26]  DEFAULT (0) FOR [channel_id]
END


End
GO
/****** Object:  Default [DF__dt_naviga__actio__1B29035F]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_naviga__actio__1B29035F]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_navigation]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_naviga__actio__1B29035F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_navigation] ADD  CONSTRAINT [DF__dt_naviga__actio__1B29035F]  DEFAULT ('') FOR [action_type]
END


End
GO
/****** Object:  Default [DF__dt_naviga__is_sy__1C1D2798]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_naviga__is_sy__1C1D2798]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_navigation]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_naviga__is_sy__1C1D2798]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_navigation] ADD  CONSTRAINT [DF__dt_naviga__is_sy__1C1D2798]  DEFAULT (0) FOR [is_sys]
END


End
GO
/****** Object:  Default [DF__dt_order___goods__15A53433]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_order___goods__15A53433]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_order_goods]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_order___goods__15A53433]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_order_goods] ADD  CONSTRAINT [DF__dt_order___goods__15A53433]  DEFAULT (0) FOR [goods_price]
END


End
GO
/****** Object:  Default [DF__dt_order___real___1699586C]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_order___real___1699586C]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_order_goods]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_order___real___1699586C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_order_goods] ADD  CONSTRAINT [DF__dt_order___real___1699586C]  DEFAULT (0) FOR [real_price]
END


End
GO
/****** Object:  Default [DF__dt_order___quant__178D7CA5]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_order___quant__178D7CA5]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_order_goods]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_order___quant__178D7CA5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_order_goods] ADD  CONSTRAINT [DF__dt_order___quant__178D7CA5]  DEFAULT (0) FOR [quantity]
END


End
GO
/****** Object:  Default [DF__dt_order___point__1881A0DE]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_order___point__1881A0DE]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_order_goods]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_order___point__1881A0DE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_order_goods] ADD  CONSTRAINT [DF__dt_order___point__1881A0DE]  DEFAULT (0) FOR [point]
END


End
GO
/****** Object:  Default [DF__dt_orders__order__1B5E0D89]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__order__1B5E0D89]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__order__1B5E0D89]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] ADD  CONSTRAINT [DF__dt_orders__order__1B5E0D89]  DEFAULT ('') FOR [order_no]
END


End
GO
/****** Object:  Default [DF__dt_orders__trade__1C5231C2]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__trade__1C5231C2]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__trade__1C5231C2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] ADD  CONSTRAINT [DF__dt_orders__trade__1C5231C2]  DEFAULT ('') FOR [trade_no]
END


End
GO
/****** Object:  Default [DF__dt_orders__user___1D4655FB]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__user___1D4655FB]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__user___1D4655FB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] ADD  CONSTRAINT [DF__dt_orders__user___1D4655FB]  DEFAULT (0) FOR [user_id]
END


End
GO
/****** Object:  Default [DF__dt_orders__user___1E3A7A34]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__user___1E3A7A34]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__user___1E3A7A34]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] ADD  CONSTRAINT [DF__dt_orders__user___1E3A7A34]  DEFAULT ('') FOR [user_name]
END


End
GO
/****** Object:  Default [DF__dt_orders__payme__1F2E9E6D]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__payme__1F2E9E6D]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__payme__1F2E9E6D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] ADD  CONSTRAINT [DF__dt_orders__payme__1F2E9E6D]  DEFAULT (0) FOR [payment_id]
END


End
GO
/****** Object:  Default [DF__dt_orders__payme__2022C2A6]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__payme__2022C2A6]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__payme__2022C2A6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] ADD  CONSTRAINT [DF__dt_orders__payme__2022C2A6]  DEFAULT (0) FOR [payment_fee]
END


End
GO
/****** Object:  Default [DF__dt_orders__payme__2116E6DF]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__payme__2116E6DF]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__payme__2116E6DF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] ADD  CONSTRAINT [DF__dt_orders__payme__2116E6DF]  DEFAULT (0) FOR [payment_status]
END


End
GO
/****** Object:  Default [DF__dt_orders__expre__220B0B18]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__expre__220B0B18]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__expre__220B0B18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] ADD  CONSTRAINT [DF__dt_orders__expre__220B0B18]  DEFAULT (0) FOR [express_id]
END


End
GO
/****** Object:  Default [DF__dt_orders__expre__22FF2F51]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__expre__22FF2F51]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__expre__22FF2F51]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] ADD  CONSTRAINT [DF__dt_orders__expre__22FF2F51]  DEFAULT ('') FOR [express_no]
END


End
GO
/****** Object:  Default [DF__dt_orders__expre__23F3538A]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__expre__23F3538A]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__expre__23F3538A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] ADD  CONSTRAINT [DF__dt_orders__expre__23F3538A]  DEFAULT (0) FOR [express_fee]
END


End
GO
/****** Object:  Default [DF__dt_orders__expre__24E777C3]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__expre__24E777C3]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__expre__24E777C3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] ADD  CONSTRAINT [DF__dt_orders__expre__24E777C3]  DEFAULT (0) FOR [express_status]
END


End
GO
/****** Object:  Default [DF__dt_orders__accep__25DB9BFC]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__accep__25DB9BFC]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__accep__25DB9BFC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] ADD  CONSTRAINT [DF__dt_orders__accep__25DB9BFC]  DEFAULT ('') FOR [accept_name]
END


End
GO
/****** Object:  Default [DF__dt_orders__post___26CFC035]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__post___26CFC035]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__post___26CFC035]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] ADD  CONSTRAINT [DF__dt_orders__post___26CFC035]  DEFAULT ('') FOR [post_code]
END


End
GO
/****** Object:  Default [DF__dt_orders__telph__27C3E46E]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__telph__27C3E46E]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__telph__27C3E46E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] ADD  CONSTRAINT [DF__dt_orders__telph__27C3E46E]  DEFAULT ('') FOR [telphone]
END


End
GO
/****** Object:  Default [DF__dt_orders__mobil__28B808A7]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__mobil__28B808A7]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__mobil__28B808A7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] ADD  CONSTRAINT [DF__dt_orders__mobil__28B808A7]  DEFAULT ('') FOR [mobile]
END


End
GO
/****** Object:  Default [DF__dt_orders__area__29AC2CE0]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__area__29AC2CE0]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__area__29AC2CE0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] ADD  CONSTRAINT [DF__dt_orders__area__29AC2CE0]  DEFAULT ('') FOR [area]
END


End
GO
/****** Object:  Default [DF__dt_orders__addre__2AA05119]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__addre__2AA05119]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__addre__2AA05119]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] ADD  CONSTRAINT [DF__dt_orders__addre__2AA05119]  DEFAULT ('') FOR [address]
END


End
GO
/****** Object:  Default [DF__dt_orders__messa__2B947552]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__messa__2B947552]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__messa__2B947552]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] ADD  CONSTRAINT [DF__dt_orders__messa__2B947552]  DEFAULT ('') FOR [message]
END


End
GO
/****** Object:  Default [DF__dt_orders__remar__2C88998B]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__remar__2C88998B]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__remar__2C88998B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] ADD  CONSTRAINT [DF__dt_orders__remar__2C88998B]  DEFAULT ('') FOR [remark]
END


End
GO
/****** Object:  Default [DF__dt_orders__payab__2D7CBDC4]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__payab__2D7CBDC4]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__payab__2D7CBDC4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] ADD  CONSTRAINT [DF__dt_orders__payab__2D7CBDC4]  DEFAULT (0) FOR [payable_amount]
END


End
GO
/****** Object:  Default [DF__dt_orders__real___2E70E1FD]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__real___2E70E1FD]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__real___2E70E1FD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] ADD  CONSTRAINT [DF__dt_orders__real___2E70E1FD]  DEFAULT (0) FOR [real_amount]
END


End
GO
/****** Object:  Default [DF__dt_orders__order__2F650636]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__order__2F650636]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__order__2F650636]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] ADD  CONSTRAINT [DF__dt_orders__order__2F650636]  DEFAULT (0) FOR [order_amount]
END


End
GO
/****** Object:  Default [DF__dt_orders__point__30592A6F]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__point__30592A6F]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__point__30592A6F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] ADD  CONSTRAINT [DF__dt_orders__point__30592A6F]  DEFAULT (0) FOR [point]
END


End
GO
/****** Object:  Default [DF__dt_orders__statu__314D4EA8]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__statu__314D4EA8]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__statu__314D4EA8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] ADD  CONSTRAINT [DF__dt_orders__statu__314D4EA8]  DEFAULT (1) FOR [status]
END


End
GO
/****** Object:  Default [DF__dt_orders__add_t__324172E1]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_orders__add_t__324172E1]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_orders]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_orders__add_t__324172E1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_orders] ADD  CONSTRAINT [DF__dt_orders__add_t__324172E1]  DEFAULT (getdate()) FOR [add_time]
END


End
GO
/****** Object:  Default [DF__dt_paymen__img_u__351DDF8C]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_paymen__img_u__351DDF8C]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_payment]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_paymen__img_u__351DDF8C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_payment] ADD  CONSTRAINT [DF__dt_paymen__img_u__351DDF8C]  DEFAULT ('') FOR [img_url]
END


End
GO
/****** Object:  Default [DF__dt_payment__type__361203C5]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_payment__type__361203C5]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_payment]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_payment__type__361203C5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_payment] ADD  CONSTRAINT [DF__dt_payment__type__361203C5]  DEFAULT (1) FOR [type]
END


End
GO
/****** Object:  Default [DF__dt_paymen__pound__370627FE]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_paymen__pound__370627FE]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_payment]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_paymen__pound__370627FE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_payment] ADD  CONSTRAINT [DF__dt_paymen__pound__370627FE]  DEFAULT (1) FOR [poundage_type]
END


End
GO
/****** Object:  Default [DF__dt_paymen__pound__37FA4C37]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_paymen__pound__37FA4C37]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_payment]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_paymen__pound__37FA4C37]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_payment] ADD  CONSTRAINT [DF__dt_paymen__pound__37FA4C37]  DEFAULT (0) FOR [poundage_amount]
END


End
GO
/****** Object:  Default [DF__dt_paymen__sort___38EE7070]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_paymen__sort___38EE7070]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_payment]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_paymen__sort___38EE7070]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_payment] ADD  CONSTRAINT [DF__dt_paymen__sort___38EE7070]  DEFAULT (99) FOR [sort_id]
END


End
GO
/****** Object:  Default [DF__dt_paymen__is_lo__39E294A9]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_paymen__is_lo__39E294A9]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_payment]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_paymen__is_lo__39E294A9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_payment] ADD  CONSTRAINT [DF__dt_paymen__is_lo__39E294A9]  DEFAULT (0) FOR [is_lock]
END


End
GO
/****** Object:  Default [DF__dt_sms_te__title__3CBF0154]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_sms_te__title__3CBF0154]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_sms_template]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_sms_te__title__3CBF0154]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_sms_template] ADD  CONSTRAINT [DF__dt_sms_te__title__3CBF0154]  DEFAULT ('') FOR [title]
END


End
GO
/****** Object:  Default [DF__dt_sms_te__call___3DB3258D]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_sms_te__call___3DB3258D]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_sms_template]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_sms_te__call___3DB3258D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_sms_template] ADD  CONSTRAINT [DF__dt_sms_te__call___3DB3258D]  DEFAULT ('') FOR [call_index]
END


End
GO
/****** Object:  Default [DF__dt_sms_te__conte__3EA749C6]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_sms_te__conte__3EA749C6]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_sms_template]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_sms_te__conte__3EA749C6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_sms_template] ADD  CONSTRAINT [DF__dt_sms_te__conte__3EA749C6]  DEFAULT ('') FOR [content]
END


End
GO
/****** Object:  Default [DF__dt_sms_te__is_sy__3F9B6DFF]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_sms_te__is_sy__3F9B6DFF]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_sms_template]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_sms_te__is_sy__3F9B6DFF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_sms_template] ADD  CONSTRAINT [DF__dt_sms_te__is_sy__3F9B6DFF]  DEFAULT (0) FOR [is_sys]
END


End
GO
/****** Object:  Default [DF__dt_user_a__order__4277DAAA]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_a__order__4277DAAA]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_amount_log]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_a__order__4277DAAA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_amount_log] ADD  CONSTRAINT [DF__dt_user_a__order__4277DAAA]  DEFAULT ('') FOR [order_no]
END


End
GO
/****** Object:  Default [DF__dt_user_a__payme__436BFEE3]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_a__payme__436BFEE3]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_amount_log]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_a__payme__436BFEE3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_amount_log] ADD  CONSTRAINT [DF__dt_user_a__payme__436BFEE3]  DEFAULT (0) FOR [payment_id]
END


End
GO
/****** Object:  Default [DF__dt_user_a__value__4460231C]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_a__value__4460231C]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_amount_log]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_a__value__4460231C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_amount_log] ADD  CONSTRAINT [DF__dt_user_a__value__4460231C]  DEFAULT (0) FOR [value]
END


End
GO
/****** Object:  Default [DF__dt_user_a__remar__45544755]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_a__remar__45544755]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_amount_log]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_a__remar__45544755]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_amount_log] ADD  CONSTRAINT [DF__dt_user_a__remar__45544755]  DEFAULT ('') FOR [remark]
END


End
GO
/****** Object:  Default [DF__dt_user_a__statu__46486B8E]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_a__statu__46486B8E]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_amount_log]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_a__statu__46486B8E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_amount_log] ADD  CONSTRAINT [DF__dt_user_a__statu__46486B8E]  DEFAULT (0) FOR [status]
END


End
GO
/****** Object:  Default [DF__dt_user_a__add_t__473C8FC7]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_a__add_t__473C8FC7]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_amount_log]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_a__add_t__473C8FC7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_amount_log] ADD  CONSTRAINT [DF__dt_user_a__add_t__473C8FC7]  DEFAULT (getdate()) FOR [add_time]
END


End
GO
/****** Object:  Default [DF__dt_user_c__count__4A18FC72]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_c__count__4A18FC72]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_code]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_c__count__4A18FC72]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_code] ADD  CONSTRAINT [DF__dt_user_c__count__4A18FC72]  DEFAULT (0) FOR [count]
END


End
GO
/****** Object:  Default [DF__dt_user_c__statu__4B0D20AB]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_c__statu__4B0D20AB]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_code]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_c__statu__4B0D20AB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_code] ADD  CONSTRAINT [DF__dt_user_c__statu__4B0D20AB]  DEFAULT (0) FOR [status]
END


End
GO
/****** Object:  Default [DF__dt_user_c__add_t__4C0144E4]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_c__add_t__4C0144E4]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_code]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_c__add_t__4C0144E4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_code] ADD  CONSTRAINT [DF__dt_user_c__add_t__4C0144E4]  DEFAULT (getdate()) FOR [add_time]
END


End
GO
/****** Object:  Default [DF__dt_user_g__artic__4EDDB18F]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_g__artic__4EDDB18F]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_group_price]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_g__artic__4EDDB18F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_group_price] ADD  CONSTRAINT [DF__dt_user_g__artic__4EDDB18F]  DEFAULT (0) FOR [article_id]
END


End
GO
/****** Object:  Default [DF__dt_user_g__group__4FD1D5C8]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_g__group__4FD1D5C8]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_group_price]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_g__group__4FD1D5C8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_group_price] ADD  CONSTRAINT [DF__dt_user_g__group__4FD1D5C8]  DEFAULT (0) FOR [group_id]
END


End
GO
/****** Object:  Default [DF__dt_user_g__price__50C5FA01]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_g__price__50C5FA01]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_group_price]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_g__price__50C5FA01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_group_price] ADD  CONSTRAINT [DF__dt_user_g__price__50C5FA01]  DEFAULT (0) FOR [price]
END


End
GO
/****** Object:  Default [DF__dt_user_g__title__53A266AC]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_g__title__53A266AC]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_groups]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_g__title__53A266AC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_groups] ADD  CONSTRAINT [DF__dt_user_g__title__53A266AC]  DEFAULT ('') FOR [title]
END


End
GO
/****** Object:  Default [DF__dt_user_g__grade__54968AE5]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_g__grade__54968AE5]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_groups]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_g__grade__54968AE5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_groups] ADD  CONSTRAINT [DF__dt_user_g__grade__54968AE5]  DEFAULT (0) FOR [grade]
END


End
GO
/****** Object:  Default [DF__dt_user_g__upgra__558AAF1E]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_g__upgra__558AAF1E]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_groups]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_g__upgra__558AAF1E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_groups] ADD  CONSTRAINT [DF__dt_user_g__upgra__558AAF1E]  DEFAULT (0) FOR [upgrade_exp]
END


End
GO
/****** Object:  Default [DF__dt_user_g__amoun__567ED357]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_g__amoun__567ED357]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_groups]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_g__amoun__567ED357]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_groups] ADD  CONSTRAINT [DF__dt_user_g__amoun__567ED357]  DEFAULT (0) FOR [amount]
END


End
GO
/****** Object:  Default [DF__dt_user_g__point__5772F790]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_g__point__5772F790]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_groups]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_g__point__5772F790]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_groups] ADD  CONSTRAINT [DF__dt_user_g__point__5772F790]  DEFAULT (0) FOR [point]
END


End
GO
/****** Object:  Default [DF__dt_user_g__is_de__58671BC9]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_g__is_de__58671BC9]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_groups]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_g__is_de__58671BC9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_groups] ADD  CONSTRAINT [DF__dt_user_g__is_de__58671BC9]  DEFAULT (0) FOR [is_default]
END


End
GO
/****** Object:  Default [DF__dt_user_g__is_up__595B4002]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_g__is_up__595B4002]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_groups]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_g__is_up__595B4002]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_groups] ADD  CONSTRAINT [DF__dt_user_g__is_up__595B4002]  DEFAULT (1) FOR [is_upgrade]
END


End
GO
/****** Object:  Default [DF__dt_user_g__is_lo__5A4F643B]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_g__is_lo__5A4F643B]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_groups]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_g__is_lo__5A4F643B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_groups] ADD  CONSTRAINT [DF__dt_user_g__is_lo__5A4F643B]  DEFAULT (0) FOR [is_lock]
END


End
GO
/****** Object:  Default [DF__dt_user_l__user___5D2BD0E6]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_l__user___5D2BD0E6]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_login_log]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_l__user___5D2BD0E6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_login_log] ADD  CONSTRAINT [DF__dt_user_l__user___5D2BD0E6]  DEFAULT ('') FOR [user_name]
END


End
GO
/****** Object:  Default [DF__dt_user_l__remar__5E1FF51F]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_l__remar__5E1FF51F]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_login_log]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_l__remar__5E1FF51F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_login_log] ADD  CONSTRAINT [DF__dt_user_l__remar__5E1FF51F]  DEFAULT ('') FOR [remark]
END


End
GO
/****** Object:  Default [DF__dt_user_l__login__5F141958]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_l__login__5F141958]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_login_log]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_l__login__5F141958]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_login_log] ADD  CONSTRAINT [DF__dt_user_l__login__5F141958]  DEFAULT (getdate()) FOR [login_time]
END


End
GO
/****** Object:  Default [DF__dt_user_l__login__60083D91]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_l__login__60083D91]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_login_log]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_l__login__60083D91]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_login_log] ADD  CONSTRAINT [DF__dt_user_l__login__60083D91]  DEFAULT ('') FOR [login_ip]
END


End
GO
/****** Object:  Default [DF__dt_user_me__type__62E4AA3C]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_me__type__62E4AA3C]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_message]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_me__type__62E4AA3C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_message] ADD  CONSTRAINT [DF__dt_user_me__type__62E4AA3C]  DEFAULT (1) FOR [type]
END


End
GO
/****** Object:  Default [DF__dt_user_m__is_re__63D8CE75]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_m__is_re__63D8CE75]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_message]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_m__is_re__63D8CE75]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_message] ADD  CONSTRAINT [DF__dt_user_m__is_re__63D8CE75]  DEFAULT (0) FOR [is_read]
END


End
GO
/****** Object:  Default [DF__dt_user_m__post___64CCF2AE]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_m__post___64CCF2AE]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_message]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_m__post___64CCF2AE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_message] ADD  CONSTRAINT [DF__dt_user_m__post___64CCF2AE]  DEFAULT (getdate()) FOR [post_time]
END


End
GO
/****** Object:  Default [DF__dt_user_o__oauth__67A95F59]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_o__oauth__67A95F59]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_oauth]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_o__oauth__67A95F59]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_oauth] ADD  CONSTRAINT [DF__dt_user_o__oauth__67A95F59]  DEFAULT ('0') FOR [oauth_name]
END


End
GO
/****** Object:  Default [DF__dt_user_o__add_t__689D8392]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_o__add_t__689D8392]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_oauth]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_o__add_t__689D8392]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_oauth] ADD  CONSTRAINT [DF__dt_user_o__add_t__689D8392]  DEFAULT (getdate()) FOR [add_time]
END


End
GO
/****** Object:  Default [DF__dt_user_o__title__6B79F03D]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_o__title__6B79F03D]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_oauth_app]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_o__title__6B79F03D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_oauth_app] ADD  CONSTRAINT [DF__dt_user_o__title__6B79F03D]  DEFAULT ('') FOR [title]
END


End
GO
/****** Object:  Default [DF__dt_user_o__img_u__6C6E1476]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_o__img_u__6C6E1476]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_oauth_app]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_o__img_u__6C6E1476]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_oauth_app] ADD  CONSTRAINT [DF__dt_user_o__img_u__6C6E1476]  DEFAULT ('') FOR [img_url]
END


End
GO
/****** Object:  Default [DF__dt_user_o__remar__6D6238AF]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_o__remar__6D6238AF]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_oauth_app]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_o__remar__6D6238AF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_oauth_app] ADD  CONSTRAINT [DF__dt_user_o__remar__6D6238AF]  DEFAULT ('') FOR [remark]
END


End
GO
/****** Object:  Default [DF__dt_user_o__sort___6E565CE8]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_o__sort___6E565CE8]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_oauth_app]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_o__sort___6E565CE8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_oauth_app] ADD  CONSTRAINT [DF__dt_user_o__sort___6E565CE8]  DEFAULT (99) FOR [sort_id]
END


End
GO
/****** Object:  Default [DF__dt_user_o__is_lo__6F4A8121]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_o__is_lo__6F4A8121]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_oauth_app]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_o__is_lo__6F4A8121]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_oauth_app] ADD  CONSTRAINT [DF__dt_user_o__is_lo__6F4A8121]  DEFAULT (0) FOR [is_lock]
END


End
GO
/****** Object:  Default [DF__dt_user_o__api_p__703EA55A]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_o__api_p__703EA55A]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_oauth_app]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_o__api_p__703EA55A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_oauth_app] ADD  CONSTRAINT [DF__dt_user_o__api_p__703EA55A]  DEFAULT ('') FOR [api_path]
END


End
GO
/****** Object:  Default [DF__dt_user_p__add_t__731B1205]    Script Date: 05/18/2015 14:58:56 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_user_p__add_t__731B1205]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_point_log]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_user_p__add_t__731B1205]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_user_point_log] ADD  CONSTRAINT [DF__dt_user_p__add_t__731B1205]  DEFAULT (getdate()) FOR [add_time]
END


End
GO
/****** Object:  Default [DF__dt_users__group___75F77EB0]    Script Date: 05/18/2015 14:58:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_users__group___75F77EB0]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_users]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_users__group___75F77EB0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_users] ADD  CONSTRAINT [DF__dt_users__group___75F77EB0]  DEFAULT (0) FOR [group_id]
END


End
GO
/****** Object:  Default [DF__dt_users__email__76EBA2E9]    Script Date: 05/18/2015 14:58:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_users__email__76EBA2E9]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_users]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_users__email__76EBA2E9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_users] ADD  CONSTRAINT [DF__dt_users__email__76EBA2E9]  DEFAULT ('') FOR [email]
END


End
GO
/****** Object:  Default [DF__dt_users__nick_n__77DFC722]    Script Date: 05/18/2015 14:58:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_users__nick_n__77DFC722]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_users]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_users__nick_n__77DFC722]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_users] ADD  CONSTRAINT [DF__dt_users__nick_n__77DFC722]  DEFAULT ('') FOR [nick_name]
END


End
GO
/****** Object:  Default [DF__dt_users__avatar__78D3EB5B]    Script Date: 05/18/2015 14:58:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_users__avatar__78D3EB5B]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_users]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_users__avatar__78D3EB5B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_users] ADD  CONSTRAINT [DF__dt_users__avatar__78D3EB5B]  DEFAULT ('') FOR [avatar]
END


End
GO
/****** Object:  Default [DF__dt_users__sex__79C80F94]    Script Date: 05/18/2015 14:58:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_users__sex__79C80F94]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_users]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_users__sex__79C80F94]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_users] ADD  CONSTRAINT [DF__dt_users__sex__79C80F94]  DEFAULT ('保密') FOR [sex]
END


End
GO
/****** Object:  Default [DF__dt_users__telpho__7ABC33CD]    Script Date: 05/18/2015 14:58:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_users__telpho__7ABC33CD]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_users]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_users__telpho__7ABC33CD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_users] ADD  CONSTRAINT [DF__dt_users__telpho__7ABC33CD]  DEFAULT ('') FOR [telphone]
END


End
GO
/****** Object:  Default [DF__dt_users__mobile__7BB05806]    Script Date: 05/18/2015 14:58:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_users__mobile__7BB05806]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_users]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_users__mobile__7BB05806]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_users] ADD  CONSTRAINT [DF__dt_users__mobile__7BB05806]  DEFAULT ('') FOR [mobile]
END


End
GO
/****** Object:  Default [DF__dt_users__qq__7CA47C3F]    Script Date: 05/18/2015 14:58:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_users__qq__7CA47C3F]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_users]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_users__qq__7CA47C3F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_users] ADD  CONSTRAINT [DF__dt_users__qq__7CA47C3F]  DEFAULT ('') FOR [qq]
END


End
GO
/****** Object:  Default [DF__dt_users__safe_q__7D98A078]    Script Date: 05/18/2015 14:58:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_users__safe_q__7D98A078]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_users]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_users__safe_q__7D98A078]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_users] ADD  CONSTRAINT [DF__dt_users__safe_q__7D98A078]  DEFAULT ('') FOR [safe_question]
END


End
GO
/****** Object:  Default [DF__dt_users__safe_a__7E8CC4B1]    Script Date: 05/18/2015 14:58:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_users__safe_a__7E8CC4B1]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_users]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_users__safe_a__7E8CC4B1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_users] ADD  CONSTRAINT [DF__dt_users__safe_a__7E8CC4B1]  DEFAULT ('') FOR [safe_answer]
END


End
GO
/****** Object:  Default [DF__dt_users__amount__7F80E8EA]    Script Date: 05/18/2015 14:58:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_users__amount__7F80E8EA]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_users]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_users__amount__7F80E8EA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_users] ADD  CONSTRAINT [DF__dt_users__amount__7F80E8EA]  DEFAULT (0) FOR [amount]
END


End
GO
/****** Object:  Default [DF__dt_users__point__00750D23]    Script Date: 05/18/2015 14:58:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_users__point__00750D23]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_users]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_users__point__00750D23]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_users] ADD  CONSTRAINT [DF__dt_users__point__00750D23]  DEFAULT (0) FOR [point]
END


End
GO
/****** Object:  Default [DF__dt_users__exp__0169315C]    Script Date: 05/18/2015 14:58:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_users__exp__0169315C]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_users]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_users__exp__0169315C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_users] ADD  CONSTRAINT [DF__dt_users__exp__0169315C]  DEFAULT (0) FOR [exp]
END


End
GO
/****** Object:  Default [DF__dt_users__status__025D5595]    Script Date: 05/18/2015 14:58:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_users__status__025D5595]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_users]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_users__status__025D5595]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_users] ADD  CONSTRAINT [DF__dt_users__status__025D5595]  DEFAULT (0) FOR [status]
END


End
GO
/****** Object:  Default [DF__dt_users__reg_ti__035179CE]    Script Date: 05/18/2015 14:58:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__dt_users__reg_ti__035179CE]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_users]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__dt_users__reg_ti__035179CE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_users] ADD  CONSTRAINT [DF__dt_users__reg_ti__035179CE]  DEFAULT (getdate()) FOR [reg_time]
END


End
GO
/****** Object:  Default [DF_dt_users_express_id]    Script Date: 05/18/2015 14:58:57 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_dt_users_express_id]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_users]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_dt_users_express_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ax_users] ADD  CONSTRAINT [DF_dt_users_express_id]  DEFAULT (0) FOR [express_id]
END


End
GO
/****** Object:  ForeignKey [FK_DT_ARTIC_REFERENCE_DT_ARTIC]    Script Date: 05/18/2015 14:58:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DT_ARTIC_REFERENCE_DT_ARTIC]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_value]'))
ALTER TABLE [dbo].[ax_article_attribute_value]  WITH CHECK ADD  CONSTRAINT [FK_DT_ARTIC_REFERENCE_DT_ARTIC] FOREIGN KEY([article_id])
REFERENCES [dbo].[ax_article] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DT_ARTIC_REFERENCE_DT_ARTIC]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_article_attribute_value]'))
ALTER TABLE [dbo].[ax_article_attribute_value] CHECK CONSTRAINT [FK_DT_ARTIC_REFERENCE_DT_ARTIC]
GO
/****** Object:  ForeignKey [FK_DT_CHANN_REFERENCE_DT_CATEGORY]    Script Date: 05/18/2015 14:58:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DT_CHANN_REFERENCE_DT_CATEGORY]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_channel]'))
ALTER TABLE [dbo].[ax_channel]  WITH CHECK ADD  CONSTRAINT [FK_DT_CHANN_REFERENCE_DT_CATEGORY] FOREIGN KEY([category_id])
REFERENCES [dbo].[ax_channel_category] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DT_CHANN_REFERENCE_DT_CATEGORY]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_channel]'))
ALTER TABLE [dbo].[ax_channel] CHECK CONSTRAINT [FK_DT_CHANN_REFERENCE_DT_CATEGORY]
GO
/****** Object:  ForeignKey [FK_DT_CHANN_REFERENCE_DT_CHANN_FIELD]    Script Date: 05/18/2015 14:58:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DT_CHANN_REFERENCE_DT_CHANN_FIELD]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_channel_field]'))
ALTER TABLE [dbo].[ax_channel_field]  WITH CHECK ADD  CONSTRAINT [FK_DT_CHANN_REFERENCE_DT_CHANN_FIELD] FOREIGN KEY([channel_id])
REFERENCES [dbo].[ax_channel] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DT_CHANN_REFERENCE_DT_CHANN_FIELD]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_channel_field]'))
ALTER TABLE [dbo].[ax_channel_field] CHECK CONSTRAINT [FK_DT_CHANN_REFERENCE_DT_CHANN_FIELD]
GO
/****** Object:  ForeignKey [FK_DT_MANAG_REFERENCE_DT_MANAG_ROLE]    Script Date: 05/18/2015 14:58:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DT_MANAG_REFERENCE_DT_MANAG_ROLE]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_manager]'))
ALTER TABLE [dbo].[ax_manager]  WITH CHECK ADD  CONSTRAINT [FK_DT_MANAG_REFERENCE_DT_MANAG_ROLE] FOREIGN KEY([role_id])
REFERENCES [dbo].[ax_manager_role] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DT_MANAG_REFERENCE_DT_MANAG_ROLE]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_manager]'))
ALTER TABLE [dbo].[ax_manager] CHECK CONSTRAINT [FK_DT_MANAG_REFERENCE_DT_MANAG_ROLE]
GO
/****** Object:  ForeignKey [FK_DT_MANAG_REFERENCE_DT_MANAG]    Script Date: 05/18/2015 14:58:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DT_MANAG_REFERENCE_DT_MANAG]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_manager_role_value]'))
ALTER TABLE [dbo].[ax_manager_role_value]  WITH CHECK ADD  CONSTRAINT [FK_DT_MANAG_REFERENCE_DT_MANAG] FOREIGN KEY([role_id])
REFERENCES [dbo].[ax_manager_role] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DT_MANAG_REFERENCE_DT_MANAG]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_manager_role_value]'))
ALTER TABLE [dbo].[ax_manager_role_value] CHECK CONSTRAINT [FK_DT_MANAG_REFERENCE_DT_MANAG]
GO
/****** Object:  ForeignKey [FK_DT_ORDER_REFERENCE_DT_ORDER]    Script Date: 05/18/2015 14:58:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DT_ORDER_REFERENCE_DT_ORDER]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_order_goods]'))
ALTER TABLE [dbo].[ax_order_goods]  WITH CHECK ADD  CONSTRAINT [FK_DT_ORDER_REFERENCE_DT_ORDER] FOREIGN KEY([order_id])
REFERENCES [dbo].[ax_orders] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DT_ORDER_REFERENCE_DT_ORDER]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_order_goods]'))
ALTER TABLE [dbo].[ax_order_goods] CHECK CONSTRAINT [FK_DT_ORDER_REFERENCE_DT_ORDER]
GO
/****** Object:  ForeignKey [FK_DT_USER__REFERENCE_DT_USERS_CODE]    Script Date: 05/18/2015 14:58:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DT_USER__REFERENCE_DT_USERS_CODE]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_code]'))
ALTER TABLE [dbo].[ax_user_code]  WITH CHECK ADD  CONSTRAINT [FK_DT_USER__REFERENCE_DT_USERS_CODE] FOREIGN KEY([user_id])
REFERENCES [dbo].[ax_users] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DT_USER__REFERENCE_DT_USERS_CODE]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_code]'))
ALTER TABLE [dbo].[ax_user_code] CHECK CONSTRAINT [FK_DT_USER__REFERENCE_DT_USERS_CODE]
GO
/****** Object:  ForeignKey [FK_DT_USER__REFERENCE_DT_USERS_LOG]    Script Date: 05/18/2015 14:58:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DT_USER__REFERENCE_DT_USERS_LOG]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_login_log]'))
ALTER TABLE [dbo].[ax_user_login_log]  WITH CHECK ADD  CONSTRAINT [FK_DT_USER__REFERENCE_DT_USERS_LOG] FOREIGN KEY([user_id])
REFERENCES [dbo].[ax_users] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DT_USER__REFERENCE_DT_USERS_LOG]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_user_login_log]'))
ALTER TABLE [dbo].[ax_user_login_log] CHECK CONSTRAINT [FK_DT_USER__REFERENCE_DT_USERS_LOG]
GO
/****** Object:  ForeignKey [FK_DT_USERS_REFERENCE_DT_USER_]    Script Date: 05/18/2015 14:58:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DT_USERS_REFERENCE_DT_USER_]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_users]'))
ALTER TABLE [dbo].[ax_users]  WITH CHECK ADD  CONSTRAINT [FK_DT_USERS_REFERENCE_DT_USER_] FOREIGN KEY([group_id])
REFERENCES [dbo].[ax_user_groups] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DT_USERS_REFERENCE_DT_USER_]') AND parent_object_id = OBJECT_ID(N'[dbo].[ax_users]'))
ALTER TABLE [dbo].[ax_users] CHECK CONSTRAINT [FK_DT_USERS_REFERENCE_DT_USER_]
GO
