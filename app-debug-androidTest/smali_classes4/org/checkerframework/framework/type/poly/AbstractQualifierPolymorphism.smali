.class public abstract Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;
.super Ljava/lang/Object;
.source "AbstractQualifierPolymorphism.java"

# interfaces
.implements Lorg/checkerframework/framework/type/poly/QualifierPolymorphism;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;,
        Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$Completer;,
        Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$Replacer;
    }
.end annotation


# instance fields
.field protected final atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

.field private collector:Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;

.field private completer:Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$Completer;

.field protected final polyQuals:Lorg/checkerframework/framework/util/AnnotationMirrorMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/framework/util/AnnotationMirrorMap<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation
.end field

.field protected final qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

.field private replacer:Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner<",
            "Ljava/lang/Void;",
            "Lorg/checkerframework/framework/util/AnnotationMirrorMap<",
            "Lorg/checkerframework/framework/util/AnnotationMirrorSet;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final topQuals:Lorg/checkerframework/framework/util/AnnotationMirrorSet;


# direct methods
.method public constructor <init>(Ljavax/annotation/processing/ProcessingEnvironment;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 2
    .param p1, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;
    .param p2, "factory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    invoke-direct {v0}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->polyQuals:Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    .line 76
    new-instance v0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;-><init>(Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$1;)V

    iput-object v0, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->collector:Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;

    .line 79
    new-instance v0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$Replacer;

    invoke-direct {v0, p0}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$Replacer;-><init>(Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;)V

    iput-object v0, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->replacer:Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;

    .line 86
    new-instance v0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$Completer;

    invoke-direct {v0, p0}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$Completer;-><init>(Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;)V

    iput-object v0, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->completer:Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$Completer;

    .line 97
    iput-object p2, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 98
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    .line 99
    new-instance v1, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotations()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->topQuals:Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 100
    return-void
.end method

.method static synthetic access$300(Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;
    .param p1, "x1"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "x2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 55
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->mapQualifierToPoly(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object v0

    return-object v0
.end method

.method private mapQualifierToPoly(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;
    .locals 7
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "actualType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ")",
            "Lorg/checkerframework/framework/util/AnnotationMirrorMap<",
            "Lorg/checkerframework/framework/util/AnnotationMirrorSet;",
            ">;"
        }
    .end annotation

    .line 243
    new-instance v0, Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    invoke-direct {v0}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;-><init>()V

    .line 245
    .local v0, "result":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    iget-object v1, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->polyQuals:Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    invoke-virtual {v1}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 246
    .local v2, "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/AnnotationMirror;

    .line 247
    .local v3, "top":Ljavax/lang/model/element/AnnotationMirror;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/AnnotationMirror;

    .line 248
    .local v4, "poly":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 249
    invoke-virtual {p1, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    .line 250
    .local v5, "typeQual":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v5, :cond_0

    .line 251
    invoke-static {v5}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;->singleElementSet(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->put(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .end local v2    # "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v3    # "top":Ljavax/lang/model/element/AnnotationMirror;
    .end local v4    # "poly":Ljavax/lang/model/element/AnnotationMirror;
    .end local v5    # "typeQual":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 255
    :cond_1
    return-object v0
.end method


# virtual methods
.method protected abstract combine(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/util/AnnotationMirrorSet;Lorg/checkerframework/framework/util/AnnotationMirrorSet;)Lorg/checkerframework/framework/util/AnnotationMirrorSet;
.end method

.method protected abstract replace(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/util/AnnotationMirrorMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/util/AnnotationMirrorMap<",
            "Lorg/checkerframework/framework/util/AnnotationMirrorSet;",
            ">;)V"
        }
    .end annotation
.end method

.method protected reset()V
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->collector:Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->reset()V

    .line 109
    iget-object v0, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->replacer:Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->reset()V

    .line 110
    iget-object v0, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->completer:Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$Completer;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$Completer;->reset()V

    .line 111
    return-void
.end method

.method public resolve(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)V
    .locals 6
    .param p1, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 121
    iget-object v0, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->polyQuals:Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    invoke-virtual {v0}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    return-void

    .line 129
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isEnumSuper(Lcom/sun/source/tree/MethodInvocationTree;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 133
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lorg/checkerframework/framework/util/AnnotatedTypes;->expandVarArgs(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 134
    .local v0, "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    iget-object v1, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 135
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->getAnnotatedTypes(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 137
    .local v1, "arguments":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    iget-object v2, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->collector:Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;

    .line 138
    invoke-static {v2, v1, v0}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->access$100(Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;Ljava/lang/Iterable;Ljava/lang/Iterable;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object v2

    .line 143
    .local v2, "instantiationMapping":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 144
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isSuperConstructorCall(Lcom/sun/source/tree/MethodInvocationTree;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 145
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isThisConstructorCall(Lcom/sun/source/tree/MethodInvocationTree;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 146
    iget-object v3, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->collector:Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;

    iget-object v4, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 150
    invoke-virtual {v4, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getReceiverType(Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v5

    .line 149
    invoke-static {v3, v4, v5}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->access$200(Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object v4

    .line 147
    invoke-virtual {v3, v2, v4}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->reduce(Lorg/checkerframework/framework/util/AnnotationMirrorMap;Lorg/checkerframework/framework/util/AnnotationMirrorMap;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object v2

    .line 153
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 154
    iget-object v3, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->replacer:Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;

    invoke-virtual {v3, p2, v2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 156
    :cond_3
    iget-object v3, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->completer:Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$Completer;

    invoke-virtual {v3, p2}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$Completer;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;

    .line 158
    :goto_0
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->reset()V

    .line 159
    return-void
.end method

.method public resolve(Lcom/sun/source/tree/NewClassTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)V
    .locals 4
    .param p1, "tree"    # Lcom/sun/source/tree/NewClassTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 163
    iget-object v0, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->polyQuals:Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    invoke-virtual {v0}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 167
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getArguments()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lorg/checkerframework/framework/util/AnnotatedTypes;->expandVarArgs(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 168
    .local v0, "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    iget-object v1, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 169
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getArguments()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lorg/checkerframework/framework/util/AnnotatedTypes;->getAnnotatedTypes(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 171
    .local v1, "arguments":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    iget-object v2, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->collector:Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;

    .line 172
    invoke-static {v2, v1, v0}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->access$100(Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;Ljava/lang/Iterable;Ljava/lang/Iterable;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object v2

    .line 177
    .local v2, "instantiationMapping":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 178
    iget-object v3, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->replacer:Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;

    invoke-virtual {v3, p2, v2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 180
    :cond_1
    iget-object v3, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->completer:Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$Completer;

    invoke-virtual {v3, p2}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$Completer;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;

    .line 182
    :goto_0
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->reset()V

    .line 183
    return-void
.end method

.method public resolve(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)V
    .locals 5
    .param p1, "functionalInterface"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p2, "memberReference"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 188
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    .line 189
    .local v1, "type":Ljavax/lang/model/element/AnnotationMirror;
    invoke-static {v1}, Lorg/checkerframework/framework/type/poly/QualifierPolymorphism;->hasPolymorphicQualifier(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    return-void

    .line 194
    .end local v1    # "type":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v0

    .line 198
    .local v0, "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v1

    .line 199
    .local v1, "args":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ne v2, v3, :cond_2

    .line 203
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v2, "newParameters":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 206
    move-object v0, v2

    .line 207
    new-instance v3, Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    invoke-direct {v3}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;-><init>()V

    move-object v2, v3

    .line 208
    .local v2, "instantiationMapping":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    goto :goto_1

    .line 209
    .end local v2    # "instantiationMapping":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    :cond_2
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 210
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 211
    nop

    .line 213
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v2

    .line 214
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v3

    .line 212
    invoke-direct {p0, v2, v3}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->mapQualifierToPoly(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object v2

    .restart local v2    # "instantiationMapping":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    goto :goto_1

    .line 216
    .end local v2    # "instantiationMapping":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    :cond_3
    new-instance v2, Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    invoke-direct {v2}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;-><init>()V

    .line 220
    .restart local v2    # "instantiationMapping":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Lorg/checkerframework/framework/util/AnnotationMirrorSet;>;"
    :goto_1
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->isVarArgs()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->isVarArgs()Z

    move-result v3

    if-nez v3, :cond_4

    .line 221
    invoke-static {p2, v1}, Lorg/checkerframework/framework/util/AnnotatedTypes;->expandVarArgsFromTypes(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 224
    :cond_4
    iget-object v3, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->collector:Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;

    .line 225
    invoke-static {v3, v1, v0}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->access$100(Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;Ljava/lang/Iterable;Ljava/lang/Iterable;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$PolyCollector;->reduce(Lorg/checkerframework/framework/util/AnnotationMirrorMap;Lorg/checkerframework/framework/util/AnnotationMirrorMap;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    move-result-object v2

    .line 227
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 228
    iget-object v3, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->replacer:Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;

    invoke-virtual {v3, p2, v2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 231
    :cond_5
    iget-object v3, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->completer:Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$Completer;

    invoke-virtual {v3, p2}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$Completer;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;

    .line 233
    :goto_2
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->reset()V

    .line 234
    return-void
.end method
