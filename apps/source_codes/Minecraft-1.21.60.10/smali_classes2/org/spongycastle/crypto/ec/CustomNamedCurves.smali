.class public Lorg/spongycastle/crypto/ec/CustomNamedCurves;
.super Ljava/lang/Object;
.source "CustomNamedCurves.java"


# static fields
.field static curve25519:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static final nameToCurve:Ljava/util/Hashtable;

.field static final nameToOID:Ljava/util/Hashtable;

.field static final names:Ljava/util/Vector;

.field static final oidToCurve:Ljava/util/Hashtable;

.field static final oidToName:Ljava/util/Hashtable;

.field static secp128r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static secp160k1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static secp160r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static secp160r2:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static secp192k1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static secp192r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static secp224k1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static secp224r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static secp256k1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static secp256r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static secp384r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static secp521r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static sect113r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static sect113r2:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static sect131r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static sect131r2:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static sect163k1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static sect163r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static sect163r2:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static sect193r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static sect193r2:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static sect233k1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static sect233r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static sect239k1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static sect283k1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static sect283r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static sect409k1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static sect409r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static sect571k1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static sect571r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

.field static sm2p256v1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$1;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$1;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->curve25519:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$2;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$2;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->secp128r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$3;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$3;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->secp160k1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$4;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$4;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->secp160r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$5;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$5;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->secp160r2:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$6;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$6;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->secp192k1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$7;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$7;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->secp192r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$8;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$8;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->secp224k1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$9;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$9;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->secp224r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$10;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$10;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->secp256k1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$11;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$11;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->secp256r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$12;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$12;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->secp384r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$13;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$13;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->secp521r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$14;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$14;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->sect113r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$15;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$15;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->sect113r2:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$16;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$16;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->sect131r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$17;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$17;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->sect131r2:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$18;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$18;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->sect163k1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$19;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$19;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->sect163r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$20;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$20;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->sect163r2:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$21;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$21;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->sect193r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$22;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$22;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->sect193r2:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$23;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$23;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->sect233k1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$24;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$24;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->sect233r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$25;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$25;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->sect239k1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$26;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$26;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->sect283k1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$27;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$27;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->sect283r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$28;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$28;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->sect409k1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$29;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$29;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->sect409r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$30;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$30;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->sect571k1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$31;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$31;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->sect571r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves$32;

    invoke-direct {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves$32;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->sm2p256v1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->nameToOID:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->oidToCurve:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->oidToName:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->names:Ljava/util/Vector;

    const-string v0, "curve25519"

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->curve25519:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurve(Ljava/lang/String;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->secp128r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->secp128r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp128r1"

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->secp160k1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->secp160k1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp160k1"

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->secp160r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->secp160r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp160r1"

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->secp160r2:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->secp160r2:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp160r2"

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->secp192k1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->secp192k1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp192k1"

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->secp192r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->secp192r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp192r1"

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->secp224k1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->secp224k1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp224k1"

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->secp224r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->secp224r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp224r1"

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->secp256k1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->secp256k1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp256k1"

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->secp256r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp256r1"

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->secp384r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->secp384r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp384r1"

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->secp521r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->secp521r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp521r1"

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->sect113r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->sect113r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect113r1"

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->sect113r2:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->sect113r2:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect113r2"

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->sect131r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->sect131r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect131r1"

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->sect131r2:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->sect131r2:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect131r2"

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->sect163k1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->sect163k1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect163k1"

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->sect163r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->sect163r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect163r1"

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->sect163r2:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->sect163r2:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect163r2"

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->sect193r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->sect193r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect193r1"

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->sect193r2:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->sect193r2:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect193r2"

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->sect233k1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->sect233k1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect233k1"

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->sect233r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->sect233r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect233r1"

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->sect239k1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->sect239k1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect239k1"

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->sect283k1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->sect283k1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect283k1"

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->sect283r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->sect283r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect283r1"

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->sect409k1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->sect409k1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect409k1"

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->sect409r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->sect409r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect409r1"

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->sect571k1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->sect571k1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect571k1"

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->sect571r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->sect571r1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect571r1"

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    sget-object v0, Lorg/spongycastle/asn1/gm/GMObjectIdentifiers;->sm2p256v1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->sm2p256v1:Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sm2p256v1"

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V

    const-string v0, "B-163"

    sget-object v1, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->sect163r2:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "B-233"

    sget-object v1, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->sect233r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "B-283"

    sget-object v1, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->sect283r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "B-409"

    sget-object v1, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->sect409r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "B-571"

    sget-object v1, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->sect571r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "K-163"

    sget-object v1, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->sect163k1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "K-233"

    sget-object v1, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->sect233k1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "K-283"

    sget-object v1, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->sect283k1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "K-409"

    sget-object v1, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->sect409k1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "K-571"

    sget-object v1, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->sect571k1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "P-192"

    sget-object v1, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->secp192r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "P-224"

    sget-object v1, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->secp224r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "P-256"

    sget-object v1, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "P-384"

    sget-object v1, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->secp384r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "P-521"

    sget-object v1, Lorg/spongycastle/asn1/sec/SECObjectIdentifiers;->secp521r1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/spongycastle/math/ec/ECCurve;)Lorg/spongycastle/math/ec/ECCurve;
    .locals 0

    invoke-static {p0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->configureCurve(Lorg/spongycastle/math/ec/ECCurve;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;)Lorg/spongycastle/math/ec/ECCurve;
    .locals 0

    invoke-static {p0, p1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->configureCurveGLV(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object p0

    return-object p0
.end method

.method private static configureCurve(Lorg/spongycastle/math/ec/ECCurve;)Lorg/spongycastle/math/ec/ECCurve;
    .locals 0

    return-object p0
.end method

.method private static configureCurveGLV(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;)Lorg/spongycastle/math/ec/ECCurve;
    .locals 2

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->configure()Lorg/spongycastle/math/ec/ECCurve$Config;

    move-result-object v0

    new-instance v1, Lorg/spongycastle/math/ec/endo/GLVTypeBEndomorphism;

    invoke-direct {v1, p0, p1}, Lorg/spongycastle/math/ec/endo/GLVTypeBEndomorphism;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECCurve$Config;->setEndomorphism(Lorg/spongycastle/math/ec/endo/ECEndomorphism;)Lorg/spongycastle/math/ec/ECCurve$Config;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve$Config;->create()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object p0

    return-object p0
.end method

.method static defineCurve(Ljava/lang/String;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V
    .locals 1

    sget-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->names:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {p0}, Lorg/spongycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static defineCurveAlias(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 2

    sget-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->oidToCurve:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/spongycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->nameToOID:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    invoke-virtual {p1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method static defineCurveWithOID(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParametersHolder;)V
    .locals 1

    sget-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->names:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->oidToName:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->oidToCurve:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lorg/spongycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->nameToOID:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    invoke-virtual {p1, p0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getByName(Ljava/lang/String;)Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 1

    sget-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/spongycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;->getParameters()Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getByOID(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 1

    sget-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->oidToCurve:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;->getParameters()Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getName(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->oidToName:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getNames()Ljava/util/Enumeration;
    .locals 1

    sget-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->names:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static getOID(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    sget-object v0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->nameToOID:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/spongycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object p0
.end method
