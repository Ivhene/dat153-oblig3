.class final Lannotator/Main$2;
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
        "Lannotator/find/Insertion;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lannotator/find/Insertion;Lannotator/find/Insertion;)I
    .locals 3
    .param p1, "i1"    # Lannotator/find/Insertion;
    .param p2, "i2"    # Lannotator/find/Insertion;

    .line 591
    invoke-virtual {p1}, Lannotator/find/Insertion;->getCriteria()Lannotator/find/Criteria;

    move-result-object v0

    invoke-virtual {v0}, Lannotator/find/Criteria;->getASTPath()Lscenelib/annotations/io/ASTPath;

    move-result-object v0

    .line 592
    .local v0, "p1":Lscenelib/annotations/io/ASTPath;
    invoke-virtual {p2}, Lannotator/find/Insertion;->getCriteria()Lannotator/find/Criteria;

    move-result-object v1

    invoke-virtual {v1}, Lannotator/find/Criteria;->getASTPath()Lscenelib/annotations/io/ASTPath;

    move-result-object v1

    .line 593
    .local v1, "p2":Lscenelib/annotations/io/ASTPath;
    if-nez v0, :cond_1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    .line 595
    :cond_2
    invoke-virtual {v0, v1}, Lscenelib/annotations/io/ASTPath;->compareTo(Lscenelib/annotations/io/ASTPath;)I

    move-result v2

    .line 593
    :goto_0
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 588
    check-cast p1, Lannotator/find/Insertion;

    check-cast p2, Lannotator/find/Insertion;

    invoke-virtual {p0, p1, p2}, Lannotator/Main$2;->compare(Lannotator/find/Insertion;Lannotator/find/Insertion;)I

    move-result p1

    return p1
.end method
