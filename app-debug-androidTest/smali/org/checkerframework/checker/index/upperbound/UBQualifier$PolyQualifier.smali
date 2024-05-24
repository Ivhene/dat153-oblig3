.class Lorg/checkerframework/checker/index/upperbound/UBQualifier$PolyQualifier;
.super Lorg/checkerframework/checker/index/upperbound/UBQualifier;
.source "UBQualifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/index/upperbound/UBQualifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PolyQualifier"
.end annotation


# static fields
.field static final POLY:Lorg/checkerframework/checker/index/upperbound/UBQualifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1059
    new-instance v0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$PolyQualifier;

    invoke-direct {v0}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$PolyQualifier;-><init>()V

    sput-object v0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$PolyQualifier;->POLY:Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1058
    invoke-direct {p0}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;-><init>()V

    return-void
.end method


# virtual methods
.method public glb(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 1
    .param p1, "other"    # Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    .line 1081
    invoke-virtual {p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isPoly()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1084
    :cond_0
    sget-object v0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$UpperBoundBottomQualifier;->BOTTOM:Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    return-object v0

    .line 1082
    :cond_1
    :goto_0
    return-object p0
.end method

.method public isPoly()Z
    .locals 1

    .line 1063
    const/4 v0, 0x1

    return v0
.end method

.method public isSubtype(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Z
    .locals 1
    .param p1, "superType"    # Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    .line 1068
    invoke-virtual {p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isUnknown()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isPoly()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public lub(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 1
    .param p1, "other"    # Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    .line 1073
    invoke-virtual {p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isPoly()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1076
    :cond_0
    sget-object v0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$UpperBoundUnknownQualifier;->UNKNOWN:Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    return-object v0

    .line 1074
    :cond_1
    :goto_0
    return-object p0
.end method
