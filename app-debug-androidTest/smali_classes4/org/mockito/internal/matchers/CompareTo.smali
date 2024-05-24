.class public abstract Lorg/mockito/internal/matchers/CompareTo;
.super Ljava/lang/Object;
.source "CompareTo.java"

# interfaces
.implements Lorg/mockito/ArgumentMatcher;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lorg/mockito/ArgumentMatcher<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final wanted:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Comparable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 15
    .local p0, "this":Lorg/mockito/internal/matchers/CompareTo;, "Lorg/mockito/internal/matchers/CompareTo<TT;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/mockito/internal/matchers/CompareTo;->wanted:Ljava/lang/Comparable;

    .line 17
    return-void
.end method


# virtual methods
.method protected abstract getName()Ljava/lang/String;
.end method

.method protected abstract matchResult(I)Z
.end method

.method public final matches(Ljava/lang/Comparable;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 21
    .local p0, "this":Lorg/mockito/internal/matchers/CompareTo;, "Lorg/mockito/internal/matchers/CompareTo<TT;>;"
    .local p1, "actual":Ljava/lang/Comparable;, "TT;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 22
    return v0

    .line 24
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lorg/mockito/internal/matchers/CompareTo;->wanted:Ljava/lang/Comparable;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 25
    return v0

    .line 28
    :cond_1
    iget-object v0, p0, Lorg/mockito/internal/matchers/CompareTo;->wanted:Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 29
    .local v0, "result":I
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/CompareTo;->matchResult(I)Z

    move-result v1

    return v1
.end method

.method public bridge synthetic matches(Ljava/lang/Object;)Z
    .locals 0

    .line 11
    .local p0, "this":Lorg/mockito/internal/matchers/CompareTo;, "Lorg/mockito/internal/matchers/CompareTo<TT;>;"
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lorg/mockito/internal/matchers/CompareTo;->matches(Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 34
    .local p0, "this":Lorg/mockito/internal/matchers/CompareTo;, "Lorg/mockito/internal/matchers/CompareTo<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/mockito/internal/matchers/CompareTo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/matchers/CompareTo;->wanted:Ljava/lang/Comparable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
