.class public Lcom/braze/ui/inappmessage/views/InAppMessageBoundedLayout;
.super Landroid/widget/RelativeLayout;
.source "InAppMessageBoundedLayout.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\tH\u0014R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/braze/ui/inappmessage/views/InAppMessageBoundedLayout;",
        "Landroid/widget/RelativeLayout;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "maxDefinedHeightPixels",
        "",
        "maxDefinedWidthPixels",
        "minDefinedHeightPixels",
        "minDefinedWidthPixels",
        "onMeasure",
        "",
        "widthMeasureSpec",
        "heightMeasureSpec",
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
.field private maxDefinedHeightPixels:I

.field private maxDefinedWidthPixels:I

.field private minDefinedHeightPixels:I

.field private minDefinedWidthPixels:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/braze/ui/R$styleable;->InAppMessageBoundedLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "context.obtainStyledAttr\u2026nAppMessageBoundedLayout)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lcom/braze/ui/R$styleable;->InAppMessageBoundedLayout_inAppMessageBoundedLayoutMaxWidth:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/braze/ui/inappmessage/views/InAppMessageBoundedLayout;->maxDefinedWidthPixels:I

    sget p2, Lcom/braze/ui/R$styleable;->InAppMessageBoundedLayout_inAppMessageBoundedLayoutMinWidth:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/braze/ui/inappmessage/views/InAppMessageBoundedLayout;->minDefinedWidthPixels:I

    sget p2, Lcom/braze/ui/R$styleable;->InAppMessageBoundedLayout_inAppMessageBoundedLayoutMaxHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/braze/ui/inappmessage/views/InAppMessageBoundedLayout;->maxDefinedHeightPixels:I

    sget p2, Lcom/braze/ui/R$styleable;->InAppMessageBoundedLayout_inAppMessageBoundedLayoutMinHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/braze/ui/inappmessage/views/InAppMessageBoundedLayout;->minDefinedHeightPixels:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/braze/ui/inappmessage/views/InAppMessageBoundedLayout;->minDefinedWidthPixels:I

    if-lez v1, :cond_0

    if-ge v0, v1, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iget v0, p0, Lcom/braze/ui/inappmessage/views/InAppMessageBoundedLayout;->minDefinedWidthPixels:I

    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/braze/ui/inappmessage/views/InAppMessageBoundedLayout;->maxDefinedWidthPixels:I

    if-lez v1, :cond_1

    if-le v0, v1, :cond_1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iget v0, p0, Lcom/braze/ui/inappmessage/views/InAppMessageBoundedLayout;->maxDefinedWidthPixels:I

    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_1
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/braze/ui/inappmessage/views/InAppMessageBoundedLayout;->minDefinedHeightPixels:I

    if-lez v1, :cond_2

    if-ge v0, v1, :cond_2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    iget v0, p0, Lcom/braze/ui/inappmessage/views/InAppMessageBoundedLayout;->minDefinedHeightPixels:I

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/braze/ui/inappmessage/views/InAppMessageBoundedLayout;->maxDefinedHeightPixels:I

    if-lez v1, :cond_3

    if-le v0, v1, :cond_3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    iget v0, p0, Lcom/braze/ui/inappmessage/views/InAppMessageBoundedLayout;->maxDefinedHeightPixels:I

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method
