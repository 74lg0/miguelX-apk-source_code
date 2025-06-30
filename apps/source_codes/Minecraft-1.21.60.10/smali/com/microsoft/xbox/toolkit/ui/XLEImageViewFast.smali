.class public Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;
.super Lcom/microsoft/xbox/toolkit/ui/XLEImageView;
.source "XLEImageViewFast.java"


# instance fields
.field private option:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

.field protected pendingBitmapResourceId:I

.field private pendingFilePath:Ljava/lang/String;

.field protected pendingUri:Ljava/net/URI;

.field private useFileCache:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingBitmapResourceId:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingUri:Ljava/net/URI;

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingFilePath:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->useFileCache:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->setSoundEffectsEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingBitmapResourceId:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingUri:Ljava/net/URI;

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingFilePath:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->useFileCache:Z

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "XLEImageViewFast"

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValueArray(Ljava/lang/String;)[I

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "XLEImageViewFast_src"

    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->setImageResource(I)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->setSoundEffectsEnabled(Z)V

    return-void
.end method

.method private bindToFilePath(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingFilePath:Ljava/lang/String;

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->Instance()Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->getHeight()I

    move-result v2

    invoke-virtual {v0, p1, p0, v1, v2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bindToViewFromFile(Ljava/lang/String;Landroid/widget/ImageView;II)V

    return-void
.end method

.method private bindToResourceId(I)V
    .locals 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingBitmapResourceId:I

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->Instance()Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->getHeight()I

    move-result v2

    invoke-virtual {v0, p1, p0, v1, v2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bindToView(ILandroid/widget/ImageView;II)V

    return-void
.end method

.method private bindToUri(Ljava/net/URI;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingUri:Ljava/net/URI;

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->option:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->Instance()Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bindToView(Ljava/net/URI;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V

    return-void
.end method


# virtual methods
.method protected bindToUri(Ljava/net/URI;)V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingUri:Ljava/net/URI;

    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->getHeight()I

    move-result v2

    iget-boolean v3, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->useFileCache:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;-><init>(IIZ)V

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->bindToUri(Ljava/net/URI;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V

    return-void
.end method

.method protected hasSize()Z
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onMeasure(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->resolveSize(II)I

    move-result p1

    invoke-static {v0, p2}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->hasSize()Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingBitmapResourceId:I

    if-ltz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->bindToResourceId(I)V

    :cond_0
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingUri:Ljava/net/URI;

    if-nez p1, :cond_1

    if-nez p1, :cond_3

    iget-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->option:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    if-eqz p2, :cond_3

    :cond_1
    iget-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->option:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    if-eqz p2, :cond_2

    new-instance p1, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->getHeight()I

    move-result v2

    iget-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->option:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    iget v3, p2, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->resourceIdForLoading:I

    iget-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->option:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    iget v4, p2, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->resourceIdForError:I

    iget-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->option:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    iget-boolean v5, p2, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->useFileCache:Z

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;-><init>(IIIIZ)V

    iget-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingUri:Ljava/net/URI;

    invoke-direct {p0, p2, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->bindToUri(Ljava/net/URI;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->bindToUri(Ljava/net/URI;)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingFilePath:Ljava/lang/String;

    if-eqz p1, :cond_4

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->bindToFilePath(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public setImageFilePath(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->hasSize()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->bindToFilePath(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingFilePath:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->hasSize()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->bindToResourceId(I)V

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingBitmapResourceId:I

    :goto_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setImageURI2(Ljava/net/URI;)V
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->hasSize()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->bindToUri(Ljava/net/URI;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingUri:Ljava/net/URI;

    :goto_0
    return-void
.end method

.method public setImageURI2(Ljava/net/URI;II)V
    .locals 7

    new-instance v6, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->getHeight()I

    move-result v2

    iget-boolean v5, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->useFileCache:Z

    move-object v0, v6

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;-><init>(IIIIZ)V

    iput-object v6, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->option:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->hasSize()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->option:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->bindToUri(Ljava/net/URI;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingUri:Ljava/net/URI;

    :goto_0
    return-void
.end method

.method public setImageURI2(Ljava/net/URI;Z)V
    .locals 3

    iput-boolean p2, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->useFileCache:Z

    new-instance p2, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->getHeight()I

    move-result v1

    iget-boolean v2, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->useFileCache:Z

    invoke-direct {p2, v0, v1, v2}, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;-><init>(IIZ)V

    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->option:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->hasSize()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->option:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->bindToUri(Ljava/net/URI;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageViewFast;->pendingUri:Ljava/net/URI;

    :goto_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/ui/TouchUtil;->createOnClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
