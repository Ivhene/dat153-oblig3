.class public Lorg/checkerframework/org/apache/commons/text/similarity/EditDistanceFrom;
.super Ljava/lang/Object;
.source "EditDistanceFrom.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final editDistance:Lorg/checkerframework/org/apache/commons/text/similarity/EditDistance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/org/apache/commons/text/similarity/EditDistance<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final left:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/apache/commons/text/similarity/EditDistance;Ljava/lang/CharSequence;)V
    .locals 3
    .param p2, "left"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/org/apache/commons/text/similarity/EditDistance<",
            "TR;>;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 74
    .local p0, "this":Lorg/checkerframework/org/apache/commons/text/similarity/EditDistanceFrom;, "Lorg/checkerframework/org/apache/commons/text/similarity/EditDistanceFrom<TR;>;"
    .local p1, "editDistance":Lorg/checkerframework/org/apache/commons/text/similarity/EditDistance;, "Lorg/checkerframework/org/apache/commons/text/similarity/EditDistance<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "The edit distance may not be null."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lorg/checkerframework/org/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/similarity/EditDistanceFrom;->editDistance:Lorg/checkerframework/org/apache/commons/text/similarity/EditDistance;

    .line 78
    iput-object p2, p0, Lorg/checkerframework/org/apache/commons/text/similarity/EditDistanceFrom;->left:Ljava/lang/CharSequence;

    .line 79
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 2
    .param p1, "right"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TR;"
        }
    .end annotation

    .line 91
    .local p0, "this":Lorg/checkerframework/org/apache/commons/text/similarity/EditDistanceFrom;, "Lorg/checkerframework/org/apache/commons/text/similarity/EditDistanceFrom<TR;>;"
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/similarity/EditDistanceFrom;->editDistance:Lorg/checkerframework/org/apache/commons/text/similarity/EditDistance;

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/similarity/EditDistanceFrom;->left:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, p1}, Lorg/checkerframework/org/apache/commons/text/similarity/EditDistance;->apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getEditDistance()Lorg/checkerframework/org/apache/commons/text/similarity/EditDistance;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/org/apache/commons/text/similarity/EditDistance<",
            "TR;>;"
        }
    .end annotation

    .line 109
    .local p0, "this":Lorg/checkerframework/org/apache/commons/text/similarity/EditDistanceFrom;, "Lorg/checkerframework/org/apache/commons/text/similarity/EditDistanceFrom<TR;>;"
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/similarity/EditDistanceFrom;->editDistance:Lorg/checkerframework/org/apache/commons/text/similarity/EditDistance;

    return-object v0
.end method

.method public getLeft()Ljava/lang/CharSequence;
    .locals 1

    .line 100
    .local p0, "this":Lorg/checkerframework/org/apache/commons/text/similarity/EditDistanceFrom;, "Lorg/checkerframework/org/apache/commons/text/similarity/EditDistanceFrom<TR;>;"
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/similarity/EditDistanceFrom;->left:Ljava/lang/CharSequence;

    return-object v0
.end method
