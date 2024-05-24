.class public abstract Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;
.super Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;
.source "EquivalentAtmComboScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RETURN_TYPE:",
        "Ljava/lang/Object;",
        "PARAM:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor<",
        "TRETURN_TYPE;TPARAM;>;"
    }
.end annotation


# instance fields
.field protected final visited:Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner<",
            "TRETURN_TYPE;TPARAM;>.Visited;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;, "Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner<TRETURN_TYPE;TPARAM;>;"
    invoke-direct {p0}, Lorg/checkerframework/framework/type/visitor/AbstractAtmComboVisitor;-><init>()V

    .line 29
    new-instance v0, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;

    invoke-direct {v0, p0}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;-><init>(Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;)V

    iput-object v0, p0, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->visited:Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;

    return-void
.end method


# virtual methods
.method protected reduce(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRETURN_TYPE;TRETURN_TYPE;)TRETURN_TYPE;"
        }
    .end annotation

    .line 93
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;, "Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner<TRETURN_TYPE;TPARAM;>;"
    .local p1, "r1":Ljava/lang/Object;, "TRETURN_TYPE;"
    .local p2, "r2":Ljava/lang/Object;, "TRETURN_TYPE;"
    if-nez p1, :cond_0

    .line 94
    return-object p2

    .line 96
    :cond_0
    return-object p1
.end method

.method protected scan(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
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
            ">;TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 63
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;, "Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner<TRETURN_TYPE;TPARAM;>;"
    .local p1, "types1":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .local p2, "types2":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    const/4 v0, 0x0

    .line 64
    .local v0, "r":Ljava/lang/Object;, "TRETURN_TYPE;"
    const/4 v1, 0x1

    .line 66
    .local v1, "first":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 67
    .local v2, "tIter1":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 69
    .local v3, "tIter2":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 70
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 71
    .local v4, "type1":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 73
    .local v5, "type2":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-eqz v1, :cond_0

    invoke-virtual {p0, v4, v5, p3}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v4, v5, p3, v0}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->scanAndReduce(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :goto_1
    move-object v0, v6

    .line 74
    .end local v4    # "type1":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v5    # "type2":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 76
    :cond_1
    return-object v0
.end method

.method protected scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 52
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;, "Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {p1, p2, p3, p0}, Lorg/checkerframework/framework/util/AtmCombo;->accept(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;Lorg/checkerframework/framework/type/visitor/AtmComboVisitor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 53
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->scanWithNull(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
            ">;TPARAM;TRETURN_TYPE;)TRETURN_TYPE;"
        }
    .end annotation

    .line 84
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;, "Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner<TRETURN_TYPE;TPARAM;>;"
    .local p1, "types1":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .local p2, "types2":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    .local p4, "r":Ljava/lang/Object;, "TRETURN_TYPE;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p4}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->reduce(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected scanAndReduce(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "TPARAM;TRETURN_TYPE;)TRETURN_TYPE;"
        }
    .end annotation

    .line 89
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;, "Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    .local p4, "r":Ljava/lang/Object;, "TRETURN_TYPE;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p4}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->reduce(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract scanWithNull(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation
.end method

.method public visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 35
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;, "Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->visited:Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;->clear()V

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitArray_Array(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 102
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;, "Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->visited:Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;->contains(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->visited:Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;->getResult(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->visited:Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;->add(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)V

    .line 107
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitDeclared_Declared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 113
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;, "Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->visited:Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;->contains(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->visited:Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;->getResult(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->visited:Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;->add(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)V

    .line 118
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitExecutable_Executable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 124
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;, "Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->visited:Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;->contains(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->visited:Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;->getResult(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 127
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->visited:Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;->add(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)V

    .line 129
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 130
    .local v0, "r":Ljava/lang/Object;, "TRETURN_TYPE;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v1

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p3, v0}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->scanAndReduce(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 131
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p3, v0}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 132
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getThrownTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getThrownTypes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p3, v0}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 133
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p3, v0}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 134
    return-object v0
.end method

.method public visitIntersection_Intersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 140
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;, "Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->visited:Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;->contains(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->visited:Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;->getResult(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 143
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->visited:Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;->add(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)V

    .line 145
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitNone_None(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 150
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;, "Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitNull_Null(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 156
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;, "Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitPrimitive_Primitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 162
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;, "Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitTypevar_Typevar(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 180
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;, "Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->visited:Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;->contains(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->visited:Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;->getResult(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 184
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->visited:Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;->add(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)V

    .line 186
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 187
    .local v0, "r":Ljava/lang/Object;, "TRETURN_TYPE;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p3, v0}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->scanAndReduce(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 188
    return-object v0
.end method

.method public visitUnion_Union(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 168
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;, "Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->visited:Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;->contains(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->visited:Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;->getResult(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 172
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->visited:Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;->add(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)V

    .line 174
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;->getAlternatives()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;->getAlternatives()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitWildcard_Wildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "type1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .param p2, "type2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "TPARAM;)TRETURN_TYPE;"
        }
    .end annotation

    .line 194
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;, "Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner<TRETURN_TYPE;TPARAM;>;"
    .local p3, "param":Ljava/lang/Object;, "TPARAM;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->visited:Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;->contains(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->visited:Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;->getResult(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 198
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->visited:Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner$Visited;->add(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)V

    .line 200
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 201
    .local v0, "r":Ljava/lang/Object;, "TRETURN_TYPE;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p3, v0}, Lorg/checkerframework/framework/type/visitor/EquivalentAtmComboScanner;->scanAndReduce(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 202
    return-object v0
.end method
