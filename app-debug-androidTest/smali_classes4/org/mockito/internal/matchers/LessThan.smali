.class public Lorg/mockito/internal/matchers/LessThan;
.super Lorg/mockito/internal/matchers/CompareTo;
.source "LessThan.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable<",
        "TT;>;>",
        "Lorg/mockito/internal/matchers/CompareTo<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Comparable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 12
    .local p0, "this":Lorg/mockito/internal/matchers/LessThan;, "Lorg/mockito/internal/matchers/LessThan<TT;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TT;"
    invoke-direct {p0, p1}, Lorg/mockito/internal/matchers/CompareTo;-><init>(Ljava/lang/Comparable;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected getName()Ljava/lang/String;
    .locals 1

    .line 17
    .local p0, "this":Lorg/mockito/internal/matchers/LessThan;, "Lorg/mockito/internal/matchers/LessThan<TT;>;"
    const-string v0, "lt"

    return-object v0
.end method

.method protected matchResult(I)Z
    .locals 1
    .param p1, "result"    # I

    .line 22
    .local p0, "this":Lorg/mockito/internal/matchers/LessThan;, "Lorg/mockito/internal/matchers/LessThan<TT;>;"
    if-gez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
