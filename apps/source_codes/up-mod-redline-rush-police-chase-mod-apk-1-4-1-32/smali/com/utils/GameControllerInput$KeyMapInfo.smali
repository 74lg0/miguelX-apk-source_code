.class Lcom/utils/GameControllerInput$KeyMapInfo;
.super Ljava/lang/Object;
.source "GameControllerInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/utils/GameControllerInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyMapInfo"
.end annotation


# instance fields
.field public code:I

.field public key:I

.field final synthetic this$0:Lcom/utils/GameControllerInput;


# direct methods
.method public constructor <init>(Lcom/utils/GameControllerInput;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "k",
            "c"
        }
    .end annotation

    .line 322
    iput-object p1, p0, Lcom/utils/GameControllerInput$KeyMapInfo;->this$0:Lcom/utils/GameControllerInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    iput p2, p0, Lcom/utils/GameControllerInput$KeyMapInfo;->key:I

    .line 324
    iput p3, p0, Lcom/utils/GameControllerInput$KeyMapInfo;->code:I

    return-void
.end method
