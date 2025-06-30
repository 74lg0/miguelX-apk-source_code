.class public Lcom/microsoft/xbox/toolkit/ui/SwitchPanelItem;
.super Landroid/widget/FrameLayout;
.source "SwitchPanelItem.java"

# interfaces
.implements Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$SwitchPanelChild;


# instance fields
.field private final INVALID_STATE_ID:I

.field private state:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanelItem;->INVALID_STATE_ID:I

    const-string v1, "SwitchPanelItem"

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValueArray(Ljava/lang/String;)[I

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "SwitchPanelItem_state"

    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanelItem;->state:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget p1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanelItem;->state:I

    if-ltz p1, :cond_0

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanelItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You must specify the state attribute in the xml, and the value must be positive."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getState()I
    .locals 1

    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanelItem;->state:I

    return v0
.end method
