.class public Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;
.super Ljava/lang/Object;
.source "AnnotatedTypeScanner.java"

# interfaces
.implements Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor<",
        "TR;TP;>;"
    }
.end annotation


# instance fields
.field protected final visitedNodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner<TR;TP;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visitedNodes:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected reduce(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TR;)TR;"
        }
    .end annotation

    .line 151
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner<TR;TP;>;"
    .local p1, "r1":Ljava/lang/Object;, "TR;"
    .local p2, "r2":Ljava/lang/Object;, "TR;"
    if-nez p1, :cond_0

    .line 152
    return-object p2

    .line 154
    :cond_0
    return-object p1
.end method

.method public reset()V
    .locals 1

    .line 67
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner<TR;TP;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visitedNodes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 68
    return-void
.end method

.method protected scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;TP;)TR;"
        }
    .end annotation

    .line 114
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner<TR;TP;>;"
    .local p1, "types":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    if-nez p1, :cond_0

    .line 115
    const/4 v0, 0x0

    return-object v0

    .line 117
    :cond_0
    const/4 v0, 0x0

    .line 118
    .local v0, "r":Ljava/lang/Object;, "TR;"
    const/4 v1, 0x1

    .line 119
    .local v1, "first":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 120
    .local v3, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-eqz v1, :cond_1

    invoke-virtual {p0, v3, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v3, p2, v0}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->scanAndReduce(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_1
    move-object v0, v4

    .line 121
    const/4 v1, 0x0

    .line 122
    .end local v3    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 123
    :cond_2
    return-object v0
.end method

.method protected scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "TP;)TR;"
        }
    .end annotation

    .line 103
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p1, p0, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->accept(Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;TP;TR;)TR;"
        }
    .end annotation

    .line 127
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner<TR;TP;>;"
    .local p1, "types":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    .local p3, "r":Ljava/lang/Object;, "TR;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->reduce(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected scanAndReduce(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "TP;TR;)TR;"
        }
    .end annotation

    .line 139
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    .local p3, "r":Ljava/lang/Object;, "TR;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->reduce(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ")TR;"
        }
    .end annotation

    .line 78
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner<TR;TP;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "TP;)TR;"
        }
    .end annotation

    .line 90
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->reset()V

    .line 91
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitArray(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "TP;)TR;"
        }
    .end annotation

    .line 196
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 197
    .local v0, "r":Ljava/lang/Object;, "TR;"
    return-object v0
.end method

.method public visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;",
            "TP;)TR;"
        }
    .end annotation

    .line 159
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visitedNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visitedNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 164
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visitedNodes:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_1
    const/4 v0, 0x0

    .line 167
    .local v0, "r":Ljava/lang/Object;, "TR;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getEnclosingType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 168
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getEnclosingType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, p2, v0}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 171
    return-object v0
.end method

.method public visitExecutable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;",
            "TP;)TR;"
        }
    .end annotation

    .line 202
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 203
    .local v0, "r":Ljava/lang/Object;, "TR;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 204
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v1

    invoke-virtual {p0, v1, p2, v0}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->scanAndReduce(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 206
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, p2, v0}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 207
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getThrownTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, p2, v0}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 208
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, p2, v0}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 209
    return-object v0
.end method

.method public visitIntersection(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;",
            "TP;)TR;"
        }
    .end annotation

    .line 176
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visitedNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visitedNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 179
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visitedNodes:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;->directSuperTypes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 181
    .local v0, "r":Ljava/lang/Object;, "TR;"
    return-object v0
.end method

.method public visitNoType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;",
            "TP;)TR;"
        }
    .end annotation

    .line 227
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitNull(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;",
            "TP;)TR;"
        }
    .end annotation

    .line 232
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitPrimitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;",
            "TP;)TR;"
        }
    .end annotation

    .line 237
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "TP;)TR;"
        }
    .end annotation

    .line 214
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visitedNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visitedNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 217
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visitedNodes:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 219
    .local v0, "r":Ljava/lang/Object;, "TR;"
    iget-object v1, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visitedNodes:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p0, v1, p2, v0}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->scanAndReduce(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visitedNodes:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    return-object v0
.end method

.method public visitUnion(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;",
            "TP;)TR;"
        }
    .end annotation

    .line 186
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visitedNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visitedNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 189
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visitedNodes:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;->getAlternatives()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 191
    .local v0, "r":Ljava/lang/Object;, "TR;"
    return-object v0
.end method

.method public visitWildcard(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "TP;)TR;"
        }
    .end annotation

    .line 242
    .local p0, "this":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visitedNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visitedNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 245
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visitedNodes:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 247
    .local v0, "r":Ljava/lang/Object;, "TR;"
    iget-object v1, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visitedNodes:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p0, v1, p2, v0}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->scanAndReduce(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visitedNodes:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    return-object v0
.end method
