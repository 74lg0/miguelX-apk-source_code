.class public Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;
.super Ljava/lang/Object;
.source "XleProjectSpecificDataProvider.java"

# interfaces
.implements Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$ContentRestrictions;
    }
.end annotation


# static fields
.field private static final displayLocales:[[Ljava/lang/String;

.field private static instance:Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;


# instance fields
.field private androidId:Ljava/lang/String;

.field private blockFeaturedChild:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private gotSettings:Z

.field private isMeAdult:Z

.field private meXuid:Ljava/lang/String;

.field private musicBlocked:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private privileges:Ljava/lang/String;

.field private promotionalRestrictedRegions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private purchaseBlocked:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private scdRpsTicket:Ljava/lang/String;

.field private serviceLocaleMapTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private serviceLocales:[[Ljava/lang/String;

.field private videoBlocked:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;

    invoke-direct {v0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->instance:Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;

    const/16 v0, 0x17

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "zh_SG"

    const-string v2, "zh"

    const-string v3, "CN"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v0, v4

    const-string v1, "zh_CN"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "zh_HK"

    const-string v3, "TW"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "zh_TW"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "da"

    const-string v2, "DK"

    filled-new-array {v1, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "nl"

    const-string v2, "NL"

    filled-new-array {v1, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "GB"

    const-string v2, "en"

    filled-new-array {v2, v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    const-string v1, "en_US"

    const-string v3, "US"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "fi"

    const-string v2, "FI"

    filled-new-array {v1, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "fr"

    const-string v2, "FR"

    filled-new-array {v1, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "de"

    const-string v2, "DE"

    filled-new-array {v1, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "it"

    const-string v2, "IT"

    filled-new-array {v1, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "ja"

    const-string v2, "JP"

    filled-new-array {v1, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "ko"

    const-string v2, "KR"

    filled-new-array {v1, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "nb"

    const-string v2, "NO"

    filled-new-array {v1, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "pl"

    const-string v2, "PL"

    filled-new-array {v1, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "PT"

    const-string v2, "pt_PT"

    const-string v3, "pt"

    filled-new-array {v2, v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "BR"

    filled-new-array {v3, v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "ru"

    const-string v2, "RU"

    filled-new-array {v1, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "ES"

    const-string v2, "es_ES"

    const-string v3, "es"

    filled-new-array {v2, v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "MX"

    filled-new-array {v3, v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "sv"

    const-string v2, "SE"

    filled-new-array {v1, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "tr"

    const-string v2, "TR"

    filled-new-array {v1, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sput-object v0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->displayLocales:[[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->serviceLocaleMapTable:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->musicBlocked:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->videoBlocked:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->purchaseBlocked:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->blockFeaturedChild:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->promotionalRestrictedRegions:Ljava/util/Set;

    const/16 v0, 0x59

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "es_AR"

    const-string v2, "es-AR"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string v1, "AR"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "en_AU"

    const-string v4, "en-AU"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x2

    aput-object v1, v0, v5

    const-string v1, "AU"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    const-string v1, "de_AT"

    const-string v4, "de-AT"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x4

    aput-object v1, v0, v5

    const-string v1, "AT"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x5

    aput-object v1, v0, v4

    const-string v1, "fr_BE"

    const-string v4, "fr-BE"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x6

    aput-object v1, v0, v5

    const-string v1, "nl_BE"

    const-string v5, "nl-BE"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x7

    aput-object v1, v0, v5

    const-string v1, "BE"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x8

    aput-object v1, v0, v4

    const-string v1, "pt_BR"

    const-string v4, "pt-BR"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x9

    aput-object v1, v0, v5

    const-string v1, "BR"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xa

    aput-object v1, v0, v4

    const-string v1, "en_CA"

    const-string v4, "en-CA"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0xb

    aput-object v1, v0, v5

    const-string v1, "fr_CA"

    const-string v5, "fr-CA"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0xc

    aput-object v1, v0, v5

    const-string v1, "CA"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xd

    aput-object v1, v0, v4

    const-string v1, "en_CZ"

    const-string v4, "en-CZ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0xe

    aput-object v1, v0, v5

    const-string v1, "CZ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xf

    aput-object v1, v0, v4

    const-string v1, "da_DK"

    const-string v4, "da-DK"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x10

    aput-object v1, v0, v5

    const-string v1, "DK"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x11

    aput-object v1, v0, v4

    const-string v1, "fi_FI"

    const-string v4, "fi-FI"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x12

    aput-object v1, v0, v5

    const-string v1, "FI"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x13

    aput-object v1, v0, v4

    const-string v1, "fr_FR"

    const-string v4, "fr-FR"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x14

    aput-object v1, v0, v5

    const-string v1, "FR"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x15

    aput-object v1, v0, v4

    const-string v1, "de_DE"

    const-string v4, "de-DE"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x16

    aput-object v1, v0, v5

    const-string v1, "DE"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x17

    aput-object v1, v0, v4

    const-string v1, "en_GR"

    const-string v4, "en-GR"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x18

    aput-object v1, v0, v5

    const-string v1, "GR"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x19

    aput-object v1, v0, v4

    const-string v1, "en_HK"

    const-string v4, "en-HK"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x1a

    aput-object v1, v0, v5

    const-string v1, "zh_HK"

    const-string v5, "zh-HK"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x1b

    aput-object v1, v0, v5

    const-string v1, "HK"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x1c

    aput-object v1, v0, v4

    const-string v1, "en_HU"

    const-string v4, "en-HU"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x1d

    aput-object v1, v0, v5

    const-string v1, "HU"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x1e

    aput-object v1, v0, v4

    const-string v1, "en_IN"

    const-string v4, "en-IN"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x1f

    aput-object v1, v0, v5

    const-string v1, "IN"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x20

    aput-object v1, v0, v4

    const-string v1, "en_GB"

    const-string v4, "en-GB"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x21

    aput-object v1, v0, v5

    const-string v1, "GB"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x22

    aput-object v1, v0, v4

    const-string v1, "en_IL"

    const-string v4, "en-IL"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x23

    aput-object v1, v0, v5

    const-string v1, "IL"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x24

    aput-object v1, v0, v4

    const-string v1, "it_IT"

    const-string v4, "it-IT"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x25

    aput-object v1, v0, v5

    const-string v1, "IT"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x26

    aput-object v1, v0, v4

    const-string v1, "ja_JP"

    const-string v4, "ja-JP"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x27

    aput-object v1, v0, v5

    const-string v1, "JP"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x28

    aput-object v1, v0, v4

    const-string v1, "zh_CN"

    const-string v4, "zh-CN"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x29

    aput-object v1, v0, v5

    const-string v1, "CN"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x2a

    aput-object v1, v0, v4

    const-string v1, "es_MX"

    const-string v4, "es-MX"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x2b

    aput-object v1, v0, v4

    const-string v1, "MX"

    const-string v4, "es-MX"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x2c

    aput-object v1, v0, v4

    const-string v1, "es_CL"

    const-string v4, "es-CL"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x2d

    aput-object v1, v0, v4

    const-string v1, "CL"

    const-string v4, "es-CL"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x2e

    aput-object v1, v0, v4

    const-string v1, "es_CO"

    const-string v4, "es-CO"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x2f

    aput-object v1, v0, v4

    const-string v1, "CO"

    const-string v4, "es-CO"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x30

    aput-object v1, v0, v4

    const-string v1, "nl_NL"

    const-string v4, "nl-NL"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x31

    aput-object v1, v0, v4

    const-string v1, "NL"

    const-string v4, "nl-NL"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x32

    aput-object v1, v0, v4

    const-string v1, "en_NZ"

    const-string v4, "en-NZ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x33

    aput-object v1, v0, v4

    const-string v1, "NZ"

    const-string v4, "en-NZ"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x34

    aput-object v1, v0, v4

    const-string v1, "nb_NO"

    const-string v4, "nb-NO"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x35

    aput-object v1, v0, v4

    const-string v1, "NO"

    const-string v4, "nb-NO"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x36

    aput-object v1, v0, v4

    const-string v1, "pl_PL"

    const-string v4, "pl-PL"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x37

    aput-object v1, v0, v4

    const-string v1, "PL"

    const-string v4, "pl-PL"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x38

    aput-object v1, v0, v4

    const-string v1, "pt_PT"

    const-string v4, "pt-PT"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x39

    aput-object v1, v0, v4

    const-string v1, "PT"

    const-string v4, "pt-PT"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x3a

    aput-object v1, v0, v4

    const-string v1, "ru_RU"

    const-string v4, "ru-RU"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x3b

    aput-object v1, v0, v4

    const-string v1, "RU"

    const-string v4, "ru-RU"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x3c

    aput-object v1, v0, v4

    const-string v1, "en_SA"

    const-string v4, "en-SA"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x3d

    aput-object v1, v0, v4

    const-string v1, "SA"

    const-string v4, "en-SA"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x3e

    aput-object v1, v0, v4

    const-string v1, "en_SG"

    const-string v4, "en-SG"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x3f

    aput-object v1, v0, v4

    const-string v1, "zh_SG"

    const-string v4, "zh-SG"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x40

    aput-object v1, v0, v4

    const-string v1, "SG"

    const-string v4, "en-SG"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x41

    aput-object v1, v0, v4

    const-string v1, "en_SK"

    const-string v4, "en-SK"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x42

    aput-object v1, v0, v4

    const-string v1, "SK"

    const-string v4, "en-SK"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x43

    aput-object v1, v0, v4

    const-string v1, "en_ZA"

    const-string v4, "en-ZA"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x44

    aput-object v1, v0, v4

    const-string v1, "ZA"

    const-string v4, "en-ZA"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x45

    aput-object v1, v0, v4

    const-string v1, "ko_KR"

    const-string v4, "ko-KR"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x46

    aput-object v1, v0, v4

    const-string v1, "KR"

    const-string v4, "ko-KR"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x47

    aput-object v1, v0, v4

    const-string v1, "es_ES"

    const-string v4, "es-ES"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x48

    aput-object v1, v0, v4

    const-string v1, "es"

    const-string v4, "es-ES"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x49

    aput-object v1, v0, v4

    const-string v1, "de_CH"

    const-string v4, "de-CH"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x4a

    aput-object v1, v0, v4

    const-string v1, "fr_CH"

    const-string v4, "fr-CH"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x4b

    aput-object v1, v0, v4

    const-string v1, "CH"

    const-string v4, "fr-CH"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x4c

    aput-object v1, v0, v4

    const-string v1, "zh_TW"

    const-string v4, "zh-TW"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x4d

    aput-object v1, v0, v4

    const-string v1, "TW"

    const-string v4, "zh-TW"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x4e

    aput-object v1, v0, v4

    const-string v1, "en_AE"

    const-string v4, "en-AE"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x4f

    aput-object v1, v0, v4

    const-string v1, "AE"

    const-string v4, "en-AE"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x50

    aput-object v1, v0, v4

    const-string v1, "en_US"

    const-string v4, "en-US"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x51

    aput-object v1, v0, v4

    const-string v1, "US"

    const-string v4, "en-US"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x52

    aput-object v1, v0, v4

    const-string v1, "sv_SE"

    const-string v4, "sv-SE"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x53

    aput-object v1, v0, v4

    const-string v1, "SE"

    const-string v4, "sv-SE"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x54

    aput-object v1, v0, v4

    const-string v1, "tr_Tr"

    const-string v4, "tr-TR"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x55

    aput-object v1, v0, v4

    const-string v1, "Tr"

    const-string v4, "tr-TR"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x56

    aput-object v1, v0, v4

    const-string v1, "en_IE"

    const-string v4, "en-IE"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x57

    aput-object v1, v0, v4

    const-string v1, "IE"

    const-string v4, "en-IE"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x58

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->serviceLocales:[[Ljava/lang/String;

    move v0, v3

    :goto_0
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->serviceLocales:[[Ljava/lang/String;

    array-length v4, v1

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->serviceLocaleMapTable:Ljava/util/Hashtable;

    aget-object v1, v1, v0

    aget-object v5, v1, v3

    aget-object v1, v1, v2

    invoke-virtual {v4, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->serviceLocales:[[Ljava/lang/String;

    return-void
.end method

.method private addRegions(Ljava/lang/String;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "[|]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/xbox/xle/app/XLEUtil;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2}, Ljava/util/Set;->clear()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getDeviceLocale()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->serviceLocaleMapTable:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->serviceLocaleMapTable:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->serviceLocaleMapTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->serviceLocaleMapTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    const-string v0, "en-US"

    return-object v0
.end method

.method public static getInstance()Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->instance:Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;

    return-object v0
.end method


# virtual methods
.method public ensureDisplayLocale()V
    .locals 9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    sget-object v5, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->displayLocales:[[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v4, v6, :cond_2

    aget-object v6, v5, v4

    aget-object v6, v6, v3

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    aget-object v1, v5, v4

    aget-object v1, v1, v8

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v1, v5, v4

    aget-object v1, v1, v7

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/Locale;

    aget-object v1, v5, v4

    aget-object v4, v1, v8

    aget-object v1, v1, v7

    invoke-direct {v0, v4, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    move v1, v3

    :goto_2
    sget-object v4, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->displayLocales:[[Ljava/lang/String;

    array-length v5, v4

    if-ge v1, v5, :cond_4

    aget-object v5, v4, v1

    aget-object v5, v5, v3

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v0, Ljava/util/Locale;

    aget-object v1, v4, v1

    aget-object v2, v1, v8

    aget-object v1, v1, v7

    invoke-direct {v0, v2, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iput-object v0, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_5
    return-void
.end method

.method public getAllowExplicitContent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAutoSuggestdDataSource()Ljava/lang/String;
    .locals 1

    const-string v0, "bbxall2"

    return-object v0
.end method

.method public getCombinedContentRating()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getConnectedLocale()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->getDeviceLocale()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectedLocale(Z)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->getConnectedLocale()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getContentRestrictions()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->getMeMaturityLevel()I

    move-result v1

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    new-instance v2, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$ContentRestrictions;

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->isPromotionalRestricted()Z

    move-result v3

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$ContentRestrictions;-><init>(Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;Ljava/lang/String;IZ)V

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/GsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentSandboxID()Ljava/lang/String;
    .locals 1

    const-string v0, "PROD"

    return-object v0
.end method

.method public getInitializeComplete()Z
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->getXuidString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIsForXboxOne()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getIsFreeAccount()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIsXboxMusicSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getLegalLocale()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->getConnectedLocale()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeMaturityLevel()I
    .locals 1

    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMaturityLevel()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMembershipLevel()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getAccountTier()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Gold"

    return-object v0

    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getAccountTier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivileges()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->privileges:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSCDRpsTicket()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->scdRpsTicket:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCheckUrl()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$1;->$SwitchMap$com$microsoft$xbox$toolkit$network$XboxLiveEnvironment$Environment:[I

    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getEnvironment()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_1
    const-string v0, "http://www.rtm.vint.xbox.com/en-US/Platform/Android/XboxLIVE/sgversion"

    return-object v0

    :cond_2
    :goto_0
    const-string v0, "http://www.xbox.com/en-US/Platform/Android/XboxLIVE/sgversion"

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getWindowsLiveClientId()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$1;->$SwitchMap$com$microsoft$xbox$toolkit$network$XboxLiveEnvironment$Environment:[I

    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getEnvironment()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const-string v0, "0000000068036303"

    return-object v0

    :cond_2
    const-string v0, "0000000048093EE3"

    return-object v0
.end method

.method public getXuidString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->meXuid:Ljava/lang/String;

    return-object v0
.end method

.method public gotSettings()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->gotSettings:Z

    return v0
.end method

.method public isDeviceLocaleKnown()Z
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->serviceLocaleMapTable:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->serviceLocaleMapTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isFeaturedBlocked()Z
    .locals 2

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->isMeAdult()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->blockFeaturedChild:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMeAdult()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->isMeAdult:Z

    return v0
.end method

.method public isMusicBlocked()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPromotionalRestricted()Z
    .locals 2

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->isMeAdult()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->promotionalRestrictedRegions:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPurchaseBlocked()Z
    .locals 2

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->purchaseBlocked:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVideoBlocked()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public processContentBlockedList(Lcom/microsoft/xbox/xle/app/SmartglassSettings;)V
    .locals 2

    iget-object v0, p1, Lcom/microsoft/xbox/xle/app/SmartglassSettings;->VIDEO_BLOCKED:Ljava/lang/String;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->videoBlocked:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->addRegions(Ljava/lang/String;Ljava/util/Set;)V

    iget-object v0, p1, Lcom/microsoft/xbox/xle/app/SmartglassSettings;->MUSIC_BLOCKED:Ljava/lang/String;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->musicBlocked:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->addRegions(Ljava/lang/String;Ljava/util/Set;)V

    iget-object v0, p1, Lcom/microsoft/xbox/xle/app/SmartglassSettings;->PURCHASE_BLOCKED:Ljava/lang/String;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->purchaseBlocked:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->addRegions(Ljava/lang/String;Ljava/util/Set;)V

    iget-object v0, p1, Lcom/microsoft/xbox/xle/app/SmartglassSettings;->BLOCK_FEATURED_CHILD:Ljava/lang/String;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->blockFeaturedChild:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->addRegions(Ljava/lang/String;Ljava/util/Set;)V

    iget-object p1, p1, Lcom/microsoft/xbox/xle/app/SmartglassSettings;->PROMOTIONAL_CONTENT_RESTRICTED_REGIONS:Ljava/lang/String;

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->promotionalRestrictedRegions:Ljava/util/Set;

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->addRegions(Ljava/lang/String;Ljava/util/Set;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->gotSettings:Z

    return-void
.end method

.method public resetModels(Z)V
    .locals 0

    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->reset()V

    return-void
.end method

.method public setIsMeAdult(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->isMeAdult:Z

    return-void
.end method

.method public setPrivileges(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->privileges:Ljava/lang/String;

    return-void
.end method

.method public setSCDRpsTicket(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->scdRpsTicket:Ljava/lang/String;

    return-void
.end method

.method public setXuidString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->meXuid:Ljava/lang/String;

    return-void
.end method
