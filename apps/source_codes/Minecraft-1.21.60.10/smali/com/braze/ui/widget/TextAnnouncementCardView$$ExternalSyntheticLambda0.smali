.class public final synthetic Lcom/braze/ui/widget/TextAnnouncementCardView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/braze/ui/widget/TextAnnouncementCardView;

.field public final synthetic f$1:Lcom/braze/models/cards/TextAnnouncementCard;


# direct methods
.method public synthetic constructor <init>(Lcom/braze/ui/widget/TextAnnouncementCardView;Lcom/braze/models/cards/TextAnnouncementCard;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/ui/widget/TextAnnouncementCardView$$ExternalSyntheticLambda0;->f$0:Lcom/braze/ui/widget/TextAnnouncementCardView;

    iput-object p2, p0, Lcom/braze/ui/widget/TextAnnouncementCardView$$ExternalSyntheticLambda0;->f$1:Lcom/braze/models/cards/TextAnnouncementCard;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/braze/ui/widget/TextAnnouncementCardView$$ExternalSyntheticLambda0;->f$0:Lcom/braze/ui/widget/TextAnnouncementCardView;

    iget-object v1, p0, Lcom/braze/ui/widget/TextAnnouncementCardView$$ExternalSyntheticLambda0;->f$1:Lcom/braze/models/cards/TextAnnouncementCard;

    invoke-virtual {v0, v1, p1}, Lcom/braze/ui/widget/TextAnnouncementCardView;->lambda$onSetCard$0$com-braze-ui-widget-TextAnnouncementCardView(Lcom/braze/models/cards/TextAnnouncementCard;Landroid/view/View;)V

    return-void
.end method
