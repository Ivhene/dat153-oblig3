.class public abstract Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;
.super Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;
.source "AnnotatedTypeComparer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner<",
        "TR;",
        "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer<TR;>;"
    invoke-direct {p0}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract combineRs(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TR;)TR;"
        }
    .end annotation
.end method

.method protected abstract compare(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ")TR;"
        }
    .end annotation
.end method

.method protected reduce(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TR;)TR;"
        }
    .end annotation

    .line 49
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer<TR;>;"
    .local p1, "r1":Ljava/lang/Object;, "TR;"
    .local p2, "r2":Ljava/lang/Object;, "TR;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->combineRs(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected scan(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)TR;"
        }
    .end annotation

    .line 31
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer<TR;>;"
    .local p1, "types":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .local p2, "p":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    if-nez p1, :cond_0

    .line 32
    const/4 v0, 0x0

    return-object v0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    .local v0, "r":Ljava/lang/Object;, "TR;"
    const/4 v1, 0x1

    .line 36
    .local v1, "first":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "tIter":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 37
    .local v3, "pIter":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 39
    if-eqz v1, :cond_1

    .line 40
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, v4, v5}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 41
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, v4, v5, v0}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->scanAndReduce(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_1
    move-object v0, v4

    .line 42
    const/4 v1, 0x0

    goto :goto_0

    .line 44
    :cond_2
    return-object v0
.end method

.method protected bridge synthetic scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer<TR;>;"
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "p"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ")TR;"
        }
    .end annotation

    .line 74
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer<TR;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->compare(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->reduce(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;TR;)TR;"
        }
    .end annotation

    .line 60
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer<TR;>;"
    .local p1, "types":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .local p2, "p":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .local p3, "r":Ljava/lang/Object;, "TR;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->scan(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->reduce(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer<TR;>;"
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->scanAndReduce(Ljava/lang/Iterable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected scanAndReduce(Ljava/lang/Iterable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p2, "p"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "TR;)TR;"
        }
    .end annotation

    .line 66
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer<TR;>;"
    .local p1, "types":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .local p3, "r":Ljava/lang/Object;, "TR;"
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnnotatedTypeComparer.scanAndReduce: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is not Iterable<? extends AnnotatedTypeMirror>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic visitArray(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer<TR;>;"
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->visitArray(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final visitArray(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "p"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ")TR;"
        }
    .end annotation

    .line 93
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer<TR;>;"
    instance-of v0, p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;

    move-result-object v0

    .line 95
    .local v0, "r":Ljava/lang/Object;, "TR;"
    return-object v0

    .line 93
    .end local v0    # "r":Ljava/lang/Object;, "TR;"
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer<TR;>;"
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "p"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ")TR;"
        }
    .end annotation

    .line 79
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer<TR;>;"
    instance-of v0, p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->scan(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    .line 81
    .local v0, "r":Ljava/lang/Object;, "TR;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getEnclosingType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 82
    nop

    .line 84
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getEnclosingType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 85
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getEnclosingType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v2

    .line 83
    invoke-virtual {p0, v1, v2, v0}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->scanAndReduce(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 88
    :cond_0
    return-object v0

    .line 79
    .end local v0    # "r":Ljava/lang/Object;, "TR;"
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic visitExecutable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer<TR;>;"
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->visitExecutable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final visitExecutable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;
    .locals 4
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p2, "p"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ")TR;"
        }
    .end annotation

    .line 100
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer<TR;>;"
    instance-of v0, p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    if-eqz v0, :cond_1

    .line 101
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 102
    .local v0, "ex":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;

    move-result-object v1

    .line 103
    .local v1, "r":Ljava/lang/Object;, "TR;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 104
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v1}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->scanAndReduce(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 106
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v1}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 107
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getThrownTypes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getThrownTypes()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v1}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 108
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v1}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 109
    return-object v1

    .line 100
    .end local v0    # "ex":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .end local v1    # "r":Ljava/lang/Object;, "TR;"
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic visitIntersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer<TR;>;"
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->visitIntersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitIntersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p2, "p"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ")TR;"
        }
    .end annotation

    .line 154
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer<TR;>;"
    instance-of v0, p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->visitedNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->visitedNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 159
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->visitedNodes:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypes()Ljava/util/List;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->scan(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    .line 161
    .local v0, "r":Ljava/lang/Object;, "TR;"
    return-object v0

    .line 154
    .end local v0    # "r":Ljava/lang/Object;, "TR;"
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer<TR;>;"
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;
    .locals 4
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "p"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ")TR;"
        }
    .end annotation

    .line 115
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer<TR;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->visitedNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->visitedNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 119
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->visitedNodes:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    instance-of v0, p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    if-eqz v0, :cond_1

    .line 122
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 123
    .local v0, "tv":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;

    move-result-object v1

    .line 124
    .local v1, "r":Ljava/lang/Object;, "TR;"
    iget-object v2, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->visitedNodes:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v1}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->scanAndReduce(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 126
    iget-object v2, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->visitedNodes:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .end local v0    # "tv":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    goto :goto_0

    .line 128
    .end local v1    # "r":Ljava/lang/Object;, "TR;"
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getErased()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;

    move-result-object v0

    .line 129
    .local v0, "r":Ljava/lang/Object;, "TR;"
    iget-object v1, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->visitedNodes:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getErased()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->scanAndReduce(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 131
    .end local v0    # "r":Ljava/lang/Object;, "TR;"
    .restart local v1    # "r":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->visitedNodes:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :goto_0
    return-object v1
.end method

.method public bridge synthetic visitUnion(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer<TR;>;"
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->visitUnion(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitUnion(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .param p2, "p"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ")TR;"
        }
    .end annotation

    .line 166
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer<TR;>;"
    instance-of v0, p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->visitedNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->visitedNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 170
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->visitedNodes:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;->getAlternatives()Ljava/util/List;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;->getAlternatives()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->scan(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    .line 172
    .local v0, "r":Ljava/lang/Object;, "TR;"
    return-object v0

    .line 166
    .end local v0    # "r":Ljava/lang/Object;, "TR;"
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic visitWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer<TR;>;"
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->visitWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;
    .locals 4
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "p"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ")TR;"
        }
    .end annotation

    .line 138
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer<TR;>;"
    instance-of v0, p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    if-eqz v0, :cond_1

    .line 139
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 140
    .local v0, "w":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    iget-object v1, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->visitedNodes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->visitedNodes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 144
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->visitedNodes:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;

    move-result-object v1

    .line 146
    .local v1, "r":Ljava/lang/Object;, "TR;"
    iget-object v2, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->visitedNodes:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v1}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->scanAndReduce(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 148
    iget-object v2, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->visitedNodes:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    return-object v1

    .line 138
    .end local v0    # "w":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .end local v1    # "r":Ljava/lang/Object;, "TR;"
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
