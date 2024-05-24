.class final Lannotator/Main$3;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lannotator/Main;->main([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/checkerframework/org/plumelib/util/Pair<",
        "Ljava/lang/Integer;",
        "Lscenelib/annotations/io/ASTPath;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 759
    check-cast p1, Lorg/checkerframework/org/plumelib/util/Pair;

    check-cast p2, Lorg/checkerframework/org/plumelib/util/Pair;

    invoke-virtual {p0, p1, p2}, Lannotator/Main$3;->compare(Lorg/checkerframework/org/plumelib/util/Pair;Lorg/checkerframework/org/plumelib/util/Pair;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/checkerframework/org/plumelib/util/Pair;Lorg/checkerframework/org/plumelib/util/Pair;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/org/plumelib/util/Pair<",
            "Ljava/lang/Integer;",
            "Lscenelib/annotations/io/ASTPath;",
            ">;",
            "Lorg/checkerframework/org/plumelib/util/Pair<",
            "Ljava/lang/Integer;",
            "Lscenelib/annotations/io/ASTPath;",
            ">;)I"
        }
    .end annotation

    .line 763
    .local p1, "p1":Lorg/checkerframework/org/plumelib/util/Pair;, "Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/Integer;Lscenelib/annotations/io/ASTPath;>;"
    .local p2, "p2":Lorg/checkerframework/org/plumelib/util/Pair;, "Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/Integer;Lscenelib/annotations/io/ASTPath;>;"
    iget-object v0, p2, Lorg/checkerframework/org/plumelib/util/Pair;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p1, Lorg/checkerframework/org/plumelib/util/Pair;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 764
    .local v0, "c":I
    if-eqz v0, :cond_0

    .line 765
    return v0

    .line 767
    :cond_0
    iget-object v1, p2, Lorg/checkerframework/org/plumelib/util/Pair;->b:Ljava/lang/Object;

    if-nez v1, :cond_2

    iget-object v1, p1, Lorg/checkerframework/org/plumelib/util/Pair;->b:Ljava/lang/Object;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lorg/checkerframework/org/plumelib/util/Pair;->b:Ljava/lang/Object;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p2, Lorg/checkerframework/org/plumelib/util/Pair;->b:Ljava/lang/Object;

    check-cast v1, Lscenelib/annotations/io/ASTPath;

    iget-object v2, p1, Lorg/checkerframework/org/plumelib/util/Pair;->b:Ljava/lang/Object;

    check-cast v2, Lscenelib/annotations/io/ASTPath;

    .line 768
    invoke-virtual {v1, v2}, Lscenelib/annotations/io/ASTPath;->compareTo(Lscenelib/annotations/io/ASTPath;)I

    move-result v1

    .line 767
    :goto_0
    return v1
.end method
