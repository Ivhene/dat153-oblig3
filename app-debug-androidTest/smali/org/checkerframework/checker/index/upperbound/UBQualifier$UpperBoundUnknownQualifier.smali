.class public Lorg/checkerframework/checker/index/upperbound/UBQualifier$UpperBoundUnknownQualifier;
.super Lorg/checkerframework/checker/index/upperbound/UBQualifier;
.source "UBQualifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/index/upperbound/UBQualifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpperBoundUnknownQualifier"
.end annotation


# static fields
.field static final UNKNOWN:Lorg/checkerframework/checker/index/upperbound/UBQualifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 999
    new-instance v0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$UpperBoundUnknownQualifier;

    invoke-direct {v0}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$UpperBoundUnknownQualifier;-><init>()V

    sput-object v0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$UpperBoundUnknownQualifier;->UNKNOWN:Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1001
    invoke-direct {p0}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;-><init>()V

    return-void
.end method


# virtual methods
.method public glb(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 0
    .param p1, "other"    # Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    .line 1020
    return-object p1
.end method

.method public isSubtype(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Z
    .locals 1
    .param p1, "superType"    # Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    .line 1005
    invoke-virtual {p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isUnknown()Z

    move-result v0

    return v0
.end method

.method public isUnknown()Z
    .locals 1

    .line 1010
    const/4 v0, 0x1

    return v0
.end method

.method public lub(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 0
    .param p1, "other"    # Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    .line 1015
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1025
    const-string v0, "UNKNOWN"

    return-object v0
.end method
