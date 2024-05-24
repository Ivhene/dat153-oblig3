.class public final Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;
.super Ljava/lang/Object;
.source "UnicodeEscapeProcessingProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PositionMapping"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$DeltaInfo;,
        Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$PositionUpdate;
    }
.end annotation


# instance fields
.field private final _deltas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$DeltaInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;->_deltas:Ljava/util/List;

    .line 329
    return-void
.end method


# virtual methods
.method add(IIII)V
    .locals 2
    .param p1, "line"    # I
    .param p2, "column"    # I
    .param p3, "lineDelta"    # I
    .param p4, "columnDelta"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "line",
            "column",
            "lineDelta",
            "columnDelta"
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;->_deltas:Ljava/util/List;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$DeltaInfo;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$DeltaInfo;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 335
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;->_deltas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public lookup(Lorg/checkerframework/com/github/javaparser/Position;)Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$PositionUpdate;
    .locals 4
    .param p1, "position"    # Lorg/checkerframework/com/github/javaparser/Position;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;->_deltas:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 347
    .local v0, "result":I
    if-ltz v0, :cond_0

    .line 348
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;->_deltas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$PositionUpdate;

    return-object v1

    .line 350
    :cond_0
    neg-int v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 351
    .local v1, "insertIndex":I
    if-nez v1, :cond_1

    .line 353
    sget-object v2, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$PositionUpdate;->NONE:Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$PositionUpdate;

    return-object v2

    .line 357
    :cond_1
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;->_deltas:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$PositionUpdate;

    return-object v2
.end method

.method public transform(Lorg/checkerframework/com/github/javaparser/Position;)Lorg/checkerframework/com/github/javaparser/Position;
    .locals 1
    .param p1, "pos"    # Lorg/checkerframework/com/github/javaparser/Position;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 456
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;->lookup(Lorg/checkerframework/com/github/javaparser/Position;)Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$PositionUpdate;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping$PositionUpdate;->transform(Lorg/checkerframework/com/github/javaparser/Position;)Lorg/checkerframework/com/github/javaparser/Position;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lorg/checkerframework/com/github/javaparser/Range;)Lorg/checkerframework/com/github/javaparser/Range;
    .locals 3
    .param p1, "range"    # Lorg/checkerframework/com/github/javaparser/Range;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "range"
        }
    .end annotation

    .line 463
    iget-object v0, p1, Lorg/checkerframework/com/github/javaparser/Range;->begin:Lorg/checkerframework/com/github/javaparser/Position;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;->transform(Lorg/checkerframework/com/github/javaparser/Position;)Lorg/checkerframework/com/github/javaparser/Position;

    move-result-object v0

    .line 464
    .local v0, "begin":Lorg/checkerframework/com/github/javaparser/Position;
    iget-object v1, p1, Lorg/checkerframework/com/github/javaparser/Range;->end:Lorg/checkerframework/com/github/javaparser/Position;

    invoke-virtual {p0, v1}, Lorg/checkerframework/com/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;->transform(Lorg/checkerframework/com/github/javaparser/Position;)Lorg/checkerframework/com/github/javaparser/Position;

    move-result-object v1

    .line 465
    .local v1, "end":Lorg/checkerframework/com/github/javaparser/Position;
    iget-object v2, p1, Lorg/checkerframework/com/github/javaparser/Range;->begin:Lorg/checkerframework/com/github/javaparser/Position;

    if-ne v0, v2, :cond_0

    iget-object v2, p1, Lorg/checkerframework/com/github/javaparser/Range;->end:Lorg/checkerframework/com/github/javaparser/Position;

    if-ne v1, v2, :cond_0

    .line 467
    return-object p1

    .line 469
    :cond_0
    new-instance v2, Lorg/checkerframework/com/github/javaparser/Range;

    invoke-direct {v2, v0, v1}, Lorg/checkerframework/com/github/javaparser/Range;-><init>(Lorg/checkerframework/com/github/javaparser/Position;Lorg/checkerframework/com/github/javaparser/Position;)V

    return-object v2
.end method
