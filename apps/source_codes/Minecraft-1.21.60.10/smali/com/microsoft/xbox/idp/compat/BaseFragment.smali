.class public abstract Lcom/microsoft/xbox/idp/compat/BaseFragment;
.super Landroid/app/Fragment;
.source "BaseFragment.java"


# static fields
.field public static final ARG_ALT_BUTTON_TEXT:Ljava/lang/String; = "ARG_ALT_BUTTON_TEXT"

.field public static final ARG_LOG_IN_BUTTON_TEXT:Ljava/lang/String; = "ARG_LOG_IN_BUTTON_TEXT"

.field public static final ARG_USER_PTR:Ljava/lang/String; = "ARG_USER_PTR"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getActivityTitle()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method
