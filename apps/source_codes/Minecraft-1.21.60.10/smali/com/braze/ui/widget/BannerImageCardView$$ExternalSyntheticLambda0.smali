.class public final synthetic Lcom/braze/ui/widget/BannerImageCardView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/braze/ui/widget/BannerImageCardView;

.field public final synthetic f$1:Lcom/braze/models/cards/BannerImageCard;


# direct methods
.method public synthetic constructor <init>(Lcom/braze/ui/widget/BannerImageCardView;Lcom/braze/models/cards/BannerImageCard;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/ui/widget/BannerImageCardView$$ExternalSyntheticLambda0;->f$0:Lcom/braze/ui/widget/BannerImageCardView;

    iput-object p2, p0, Lcom/braze/ui/widget/BannerImageCardView$$ExternalSyntheticLambda0;->f$1:Lcom/braze/models/cards/BannerImageCard;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/braze/ui/widget/BannerImageCardView$$ExternalSyntheticLambda0;->f$0:Lcom/braze/ui/widget/BannerImageCardView;

    iget-object v1, p0, Lcom/braze/ui/widget/BannerImageCardView$$ExternalSyntheticLambda0;->f$1:Lcom/braze/models/cards/BannerImageCard;

    invoke-virtual {v0, v1, p1}, Lcom/braze/ui/widget/BannerImageCardView;->lambda$onSetCard$0$com-braze-ui-widget-BannerImageCardView(Lcom/braze/models/cards/BannerImageCard;Landroid/view/View;)V

    return-void
.end method
