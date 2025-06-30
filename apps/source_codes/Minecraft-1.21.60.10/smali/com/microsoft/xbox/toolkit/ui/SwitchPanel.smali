.class public Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;
.super Landroid/widget/LinearLayout;
.source "SwitchPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$SwitchPanelChild;
    }
.end annotation


# static fields
.field private static final LAYOUT_BLOCK_TIMEOUT_MS:I = 0x96


# instance fields
.field private AnimateInListener:Landroid/animation/AnimatorListenerAdapter;

.field private AnimateOutListener:Landroid/animation/AnimatorListenerAdapter;

.field private final INVALID_STATE_ID:I

.field private final VALID_CONTENT_STATE:I

.field private active:Z

.field private blocking:Z

.field private newView:Landroid/view/View;

.field private oldView:Landroid/view/View;

.field private selectedState:I

.field private shouldAnimate:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->INVALID_STATE_ID:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->VALID_CONTENT_STATE:I

    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->blocking:Z

    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->active:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->oldView:Landroid/view/View;

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->newView:Landroid/view/View;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->shouldAnimate:Z

    new-instance p1, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$1;

    invoke-direct {p1, p0}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$1;-><init>(Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;)V

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->AnimateInListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance p1, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$2;

    invoke-direct {p1, p0}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$2;-><init>(Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;)V

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->AnimateOutListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->INVALID_STATE_ID:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->VALID_CONTENT_STATE:I

    iput-boolean v1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->blocking:Z

    iput-boolean v1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->active:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->oldView:Landroid/view/View;

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->newView:Landroid/view/View;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->shouldAnimate:Z

    new-instance v1, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$1;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$1;-><init>(Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;)V

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->AnimateInListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v1, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$2;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$2;-><init>(Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;)V

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->AnimateOutListener:Landroid/animation/AnimatorListenerAdapter;

    const-string v1, "SwitchPanel"

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValueArray(Ljava/lang/String;)[I

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "SwitchPanel_selectedState"

    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->selectedState:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget p1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->selectedState:I

    if-ltz p1, :cond_0

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You must specify the selectedState attribute in the xml, and the value must be positive."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->onAnimateInEnd()V

    return-void
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->onAnimateInStart()V

    return-void
.end method

.method static synthetic access$200(Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->onAnimateOutEnd()V

    return-void
.end method

.method static synthetic access$300(Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->onAnimateOutStart()V

    return-void
.end method

.method private onAnimateInEnd()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->setBlocking(Z)V

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->newView:Landroid/view/View;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private onAnimateInStart()V
    .locals 3

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->newView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->setBlocking(Z)V

    :cond_0
    return-void
.end method

.method private onAnimateOutEnd()V
    .locals 3

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->oldView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->oldView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private onAnimateOutStart()V
    .locals 3

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->oldView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->setBlocking(Z)V

    :cond_0
    return-void
.end method

.method private updateVisibility(II)V
    .locals 6

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$SwitchPanelChild;

    if-eqz v5, :cond_2

    move-object v5, v4

    check-cast v5, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$SwitchPanelChild;

    invoke-interface {v5}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$SwitchPanelChild;->getState()I

    move-result v5

    if-ne v5, p1, :cond_0

    iput-object v4, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->oldView:Landroid/view/View;

    goto :goto_1

    :cond_0
    if-ne v5, p2, :cond_1

    iput-object v4, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->newView:Landroid/view/View;

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "All children of SwitchPanel must implement the SwitchPanelChild interface. All other types are not supported and should be removed."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->shouldAnimate:Z

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_5

    if-nez p2, :cond_5

    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->newView:Landroid/view/View;

    if-eqz p1, :cond_5

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->newView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->requestLayout()V

    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->oldView:Landroid/view/View;

    const-wide/16 v1, 0x96

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->AnimateOutListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_4
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->newView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->AnimateInListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->oldView:Landroid/view/View;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->newView:Landroid/view/View;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->newView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->requestLayout()V

    :goto_2
    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->selectedState:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const/4 v0, -0x1

    iget v1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->selectedState:I

    invoke-direct {p0, v0, v1}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->updateVisibility(II)V

    return-void
.end method

.method public setActive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->active:Z

    return-void
.end method

.method public setBlocking(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->blocking:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->blocking:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->getInstance()Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;

    move-result-object p1

    sget-object v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->ListLayout:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    const/16 v1, 0x96

    invoke-virtual {p1, v0, v1}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->setBlocking(Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->getInstance()Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;

    move-result-object p1

    sget-object v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->ListLayout:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->clearBlocking(Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setShouldAnimate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->shouldAnimate:Z

    return-void
.end method

.method public setState(I)V
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->selectedState:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->selectedState:I

    invoke-direct {p0, v0, p1}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->updateVisibility(II)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "New state must be a positive value."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
