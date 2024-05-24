.class final Lscenelib/annotations/io/ASTPath$1;
.super Ljava/lang/Object;
.source "ASTPath.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscenelib/annotations/io/ASTPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lscenelib/annotations/io/ASTPath;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 267
    check-cast p1, Lscenelib/annotations/io/ASTPath;

    check-cast p2, Lscenelib/annotations/io/ASTPath;

    invoke-virtual {p0, p1, p2}, Lscenelib/annotations/io/ASTPath$1;->compare(Lscenelib/annotations/io/ASTPath;Lscenelib/annotations/io/ASTPath;)I

    move-result p1

    return p1
.end method

.method public compare(Lscenelib/annotations/io/ASTPath;Lscenelib/annotations/io/ASTPath;)I
    .locals 1
    .param p1, "p1"    # Lscenelib/annotations/io/ASTPath;
    .param p2, "p2"    # Lscenelib/annotations/io/ASTPath;

    .line 270
    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Lscenelib/annotations/io/ASTPath;->compareTo(Lscenelib/annotations/io/ASTPath;)I

    move-result v0

    :goto_0
    return v0
.end method
