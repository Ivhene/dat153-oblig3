.class public Lorg/checkerframework/framework/type/AnnotatedTypeReplacer$Visitor;
.super Lorg/checkerframework/framework/type/AnnotatedTypeCopier;
.source "AnnotatedTypeReplacer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/type/AnnotatedTypeReplacer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Visitor"
.end annotation


# instance fields
.field private final originalMappings:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "+",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "+",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "+",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p1, "mappings":Ljava/util/Map;, "Ljava/util/Map<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-direct {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;-><init>()V

    .line 41
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0, p1}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeReplacer$Visitor;->originalMappings:Ljava/util/IdentityHashMap;

    .line 42
    return-void
.end method


# virtual methods
.method public bridge synthetic visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeReplacer$Visitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 46
    new-instance v0, Ljava/util/IdentityHashMap;

    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeReplacer$Visitor;->originalMappings:Ljava/util/IdentityHashMap;

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->accept(Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    return-object v0
.end method

.method public bridge synthetic visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p2, Ljava/util/IdentityHashMap;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeReplacer$Visitor;->visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p1, "original"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "Ljava/util/IdentityHashMap<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;"
        }
    .end annotation

    .line 59
    .local p2, "originalToCopy":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    iget-boolean v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeReplacer$Visitor;->visitingExecutableTypeParam:Z

    if-eqz v0, :cond_2

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeReplacer$Visitor;->visitingExecutableTypeParam:Z

    .line 61
    nop

    .line 64
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v0

    iget-object v1, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 66
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->isDeclaration()Z

    move-result v2

    .line 63
    invoke-static {v0, v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->createType(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 67
    .local v0, "copy":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeReplacer$Visitor;->maybeCopyPrimaryAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 68
    invoke-virtual {p2, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBoundField()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBoundField()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeReplacer$Visitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->setUpperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 74
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBoundField()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBoundField()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeReplacer$Visitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->setLowerBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 77
    :cond_1
    return-object v0

    .line 80
    .end local v0    # "copy":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method
