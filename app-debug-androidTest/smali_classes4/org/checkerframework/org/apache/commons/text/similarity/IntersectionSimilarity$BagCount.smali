.class Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$BagCount;
.super Ljava/lang/Object;
.source "IntersectionSimilarity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BagCount"
.end annotation


# instance fields
.field count:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$BagCount;->count:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$1;

    .line 49
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$BagCount;-><init>()V

    return-void
.end method
