.class public Lcom/braze/ui/inappmessage/views/InAppMessageSlideupView;
.super Lcom/braze/ui/inappmessage/views/InAppMessageBaseView;
.source "InAppMessageSlideupView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInAppMessageSlideupView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InAppMessageSlideupView.kt\ncom/braze/ui/inappmessage/views/InAppMessageSlideupView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,101:1\n1#2:102\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cJ\u0010\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0010\u0010 \u001a\u00020\u001a2\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u0010#\u001a\u00020\u001a2\u0006\u0010$\u001a\u00020%H\u0016J\u0016\u0010&\u001a\u00020\u001a2\u0006\u0010$\u001a\u00020%2\u0006\u0010\'\u001a\u00020(R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\u0004\u0018\u00010\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\r\u001a\u0004\u0018\u00010\n8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000cR\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0013\u001a\u0004\u0018\u00010\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u0017\u001a\u0004\u0018\u00010\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0012\u00a8\u0006)"
    }
    d2 = {
        "Lcom/braze/ui/inappmessage/views/InAppMessageSlideupView;",
        "Lcom/braze/ui/inappmessage/views/InAppMessageBaseView;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "inAppMessageImageView",
        "Lcom/braze/ui/inappmessage/views/InAppMessageImageView;",
        "messageBackgroundObject",
        "Landroid/view/View;",
        "getMessageBackgroundObject",
        "()Landroid/view/View;",
        "messageChevronView",
        "getMessageChevronView",
        "messageIconView",
        "Landroid/widget/TextView;",
        "getMessageIconView",
        "()Landroid/widget/TextView;",
        "messageImageView",
        "Landroid/widget/ImageView;",
        "getMessageImageView",
        "()Landroid/widget/ImageView;",
        "messageTextView",
        "getMessageTextView",
        "applyInAppMessageParameters",
        "",
        "inAppMessage",
        "Lcom/braze/models/inappmessage/IInAppMessage;",
        "applyWindowInsets",
        "insets",
        "Landroidx/core/view/WindowInsetsCompat;",
        "resetMessageMargins",
        "imageRetrievalSuccessful",
        "",
        "setMessageBackgroundColor",
        "color",
        "",
        "setMessageChevron",
        "clickAction",
        "Lcom/braze/enums/inappmessage/ClickAction;",
        "android-sdk-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private inAppMessageImageView:Lcom/braze/ui/inappmessage/views/InAppMessageImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/braze/ui/inappmessage/views/InAppMessageBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final getMessageChevronView()Landroid/view/View;
    .locals 1

    sget v0, Lcom/braze/ui/R$id;->com_braze_inappmessage_slideup_chevron:I

    invoke-virtual {p0, v0}, Lcom/braze/ui/inappmessage/views/InAppMessageSlideupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final applyInAppMessageParameters(Lcom/braze/models/inappmessage/IInAppMessage;)V
    .locals 1

    const-string v0, "inAppMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/braze/ui/R$id;->com_braze_inappmessage_slideup_imageview:I

    invoke-virtual {p0, v0}, Lcom/braze/ui/inappmessage/views/InAppMessageSlideupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/braze/ui/inappmessage/views/InAppMessageImageView;

    iput-object v0, p0, Lcom/braze/ui/inappmessage/views/InAppMessageSlideupView;->inAppMessageImageView:Lcom/braze/ui/inappmessage/views/InAppMessageImageView;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/braze/models/inappmessage/IInAppMessage;->getCropType()Lcom/braze/enums/inappmessage/CropType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/braze/ui/inappmessage/views/InAppMessageImageView;->setInAppMessageImageCropType(Lcom/braze/enums/inappmessage/CropType;)V

    :cond_0
    return-void
.end method

.method public applyWindowInsets(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 8

    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/braze/ui/inappmessage/views/InAppMessageBaseView;->applyWindowInsets(Landroidx/core/view/WindowInsetsCompat;)V

    invoke-virtual {p0}, Lcom/braze/ui/inappmessage/views/InAppMessageSlideupView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/braze/ui/inappmessage/views/InAppMessageSlideupView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/braze/ui/inappmessage/views/InAppMessageSlideupView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {p1}, Lcom/braze/ui/support/ViewUtils;->getMaxSafeLeftInset(Landroidx/core/view/WindowInsetsCompat;)I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    invoke-static {p1}, Lcom/braze/ui/support/ViewUtils;->getMaxSafeTopInset(Landroidx/core/view/WindowInsetsCompat;)I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    invoke-static {p1}, Lcom/braze/ui/support/ViewUtils;->getMaxSafeRightInset(Landroidx/core/view/WindowInsetsCompat;)I

    move-result v3

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    invoke-static {p1}, Lcom/braze/ui/support/ViewUtils;->getMaxSafeBottomInset(Landroidx/core/view/WindowInsetsCompat;)I

    move-result p1

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v4

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object p1, Lcom/braze/ui/inappmessage/views/InAppMessageSlideupView$applyWindowInsets$1;->INSTANCE:Lcom/braze/ui/inappmessage/views/InAppMessageSlideupView$applyWindowInsets$1;

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public getMessageBackgroundObject()Landroid/view/View;
    .locals 1

    sget v0, Lcom/braze/ui/R$id;->com_braze_inappmessage_slideup_container:I

    invoke-virtual {p0, v0}, Lcom/braze/ui/inappmessage/views/InAppMessageSlideupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMessageBackgroundObject()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/braze/ui/inappmessage/views/InAppMessageSlideupView;->getMessageBackgroundObject()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMessageIconView()Landroid/widget/TextView;
    .locals 1

    sget v0, Lcom/braze/ui/R$id;->com_braze_inappmessage_slideup_icon:I

    invoke-virtual {p0, v0}, Lcom/braze/ui/inappmessage/views/InAppMessageSlideupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public getMessageImageView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/braze/ui/inappmessage/views/InAppMessageSlideupView;->inAppMessageImageView:Lcom/braze/ui/inappmessage/views/InAppMessageImageView;

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public getMessageTextView()Landroid/widget/TextView;
    .locals 1

    sget v0, Lcom/braze/ui/R$id;->com_braze_inappmessage_slideup_message:I

    invoke-virtual {p0, v0}, Lcom/braze/ui/inappmessage/views/InAppMessageSlideupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public resetMessageMargins(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/braze/ui/inappmessage/views/InAppMessageBaseView;->resetMessageMargins(Z)V

    invoke-virtual {p0}, Lcom/braze/ui/inappmessage/views/InAppMessageSlideupView;->getMessageIconView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    move v2, v1

    :cond_1
    xor-int/lit8 v0, v2, 0x1

    if-nez p1, :cond_5

    if-eqz v0, :cond_5

    sget p1, Lcom/braze/ui/R$id;->com_braze_inappmessage_slideup_image_layout:I

    invoke-virtual {p0, p1}, Lcom/braze/ui/inappmessage/views/InAppMessageSlideupView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_2

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/braze/ui/support/ViewUtils;->removeViewFromParent(Landroid/view/View;)V

    :cond_2
    sget p1, Lcom/braze/ui/R$id;->com_braze_inappmessage_slideup_message:I

    invoke-virtual {p0, p1}, Lcom/braze/ui/inappmessage/views/InAppMessageSlideupView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/braze/ui/inappmessage/views/InAppMessageSlideupView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/braze/ui/R$dimen;->com_braze_inappmessage_slideup_left_message_margin_no_image:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :goto_2
    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void
.end method

.method public setMessageBackgroundColor(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/braze/ui/inappmessage/views/InAppMessageSlideupView;->getMessageBackgroundObject()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    instance-of v0, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/braze/ui/inappmessage/views/InAppMessageSlideupView;->getMessageBackgroundObject()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0, p1}, Lcom/braze/ui/inappmessage/utils/InAppMessageViewUtils;->setViewBackgroundColorFilter(Landroid/view/View;I)V

    goto :goto_1

    :cond_1
    invoke-super {p0, p1}, Lcom/braze/ui/inappmessage/views/InAppMessageBaseView;->setMessageBackgroundColor(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final setMessageChevron(ILcom/braze/enums/inappmessage/ClickAction;)V
    .locals 1

    const-string v0, "clickAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/braze/enums/inappmessage/ClickAction;->NONE:Lcom/braze/enums/inappmessage/ClickAction;

    if-ne p2, v0, :cond_1

    invoke-direct {p0}, Lcom/braze/ui/inappmessage/views/InAppMessageSlideupView;->getMessageChevronView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/braze/ui/inappmessage/views/InAppMessageSlideupView;->getMessageChevronView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-static {p2, p1}, Lcom/braze/ui/inappmessage/utils/InAppMessageViewUtils;->setViewBackgroundColorFilter(Landroid/view/View;I)V

    :cond_2
    :goto_0
    return-void
.end method
