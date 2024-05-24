.class Lorg/checkerframework/checker/index/upperbound/UBQualifier$UpperBoundBottomQualifier;
.super Lorg/checkerframework/checker/index/upperbound/UBQualifier;
.source "UBQualifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/index/upperbound/UBQualifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpperBoundBottomQualifier"
.end annotation


# static fields
.field static final BOTTOM:Lorg/checkerframework/checker/index/upperbound/UBQualifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1030
    new-instance v0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$UpperBoundBottomQualifier;

    invoke-direct {v0}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$UpperBoundBottomQualifier;-><init>()V

    sput-object v0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$UpperBoundBottomQualifier;->BOTTOM:Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1029
    invoke-direct {p0}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;-><init>()V

    return-void
.end method


# virtual methods
.method public glb(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 0
    .param p1, "other"    # Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    .line 1049
    return-object p0
.end method

.method public isBottom()Z
    .locals 1

    .line 1034
    const/4 v0, 0x1

    return v0
.end method

.method public isSubtype(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Z
    .locals 1
    .param p1, "superType"    # Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    .line 1039
    const/4 v0, 0x1

    return v0
.end method

.method public lub(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 0
    .param p1, "other"    # Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    .line 1044
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1054
    const-string v0, "BOTTOM"

    return-object v0
.end method
