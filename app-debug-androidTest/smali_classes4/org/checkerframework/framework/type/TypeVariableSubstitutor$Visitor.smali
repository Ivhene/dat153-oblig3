.class public Lorg/checkerframework/framework/type/TypeVariableSubstitutor$Visitor;
.super Lorg/checkerframework/framework/type/AnnotatedTypeCopier;
.source "TypeVariableSubstitutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/type/TypeVariableSubstitutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Visitor"
.end annotation


# instance fields
.field private final elementToArgMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/TypeParameterElement;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/checkerframework/framework/type/TypeVariableSubstitutor;


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/type/TypeVariableSubstitutor;Ljava/util/Map;)V
    .locals 5
    .param p1, "this$0"    # Lorg/checkerframework/framework/type/TypeVariableSubstitutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)V"
        }
    .end annotation

    .line 62
    .local p2, "typeParamToArg":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    iput-object p1, p0, Lorg/checkerframework/framework/type/TypeVariableSubstitutor$Visitor;->this$0:Lorg/checkerframework/framework/type/TypeVariableSubstitutor;

    invoke-direct {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/type/TypeVariableSubstitutor$Visitor;->elementToArgMap:Ljava/util/Map;

    .line 65
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 66
    .local v1, "paramToArg":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    iget-object v2, p0, Lorg/checkerframework/framework/type/TypeVariableSubstitutor$Visitor;->elementToArgMap:Ljava/util/Map;

    .line 67
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/type/TypeVariable;

    invoke-interface {v3}, Ljavax/lang/model/type/TypeVariable;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/TypeParameterElement;

    .line 68
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 66
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .end local v1    # "paramToArg":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic visitArray(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    check-cast p2, Ljava/util/IdentityHashMap;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeVariableSubstitutor$Visitor;->visitArray(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitArray(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 6
    .param p1, "original"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;",
            "Ljava/util/IdentityHashMap<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;"
        }
    .end annotation

    .line 76
    .local p2, "originalToCopy":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-virtual {p2, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    return-object v0

    .line 80
    :cond_0
    nop

    .line 83
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getUnderlyingType()Ljavax/lang/model/type/ArrayType;

    move-result-object v0

    iget-object v1, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 85
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->isDeclaration()Z

    move-result v2

    .line 82
    invoke-static {v0, v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->createType(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    .line 86
    .local v0, "copy":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/framework/type/TypeVariableSubstitutor$Visitor;->maybeCopyPrimaryAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 87
    invoke-virtual {p2, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    nop

    .line 97
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/framework/type/TypeVariableSubstitutor$Visitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 98
    .local v1, "componentType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v2, v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->types:Ljavax/lang/model/util/Types;

    .line 101
    .local v2, "types":Ljavax/lang/model/util/Types;
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getUnderlyingType()Ljavax/lang/model/type/ArrayType;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljavax/lang/model/util/Types;->isSameType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 102
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-eq v3, v4, :cond_1

    .line 104
    nop

    .line 105
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/lang/model/util/Types;->getArrayType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/ArrayType;

    move-result-object v3

    .line 106
    .local v3, "underlyingType":Ljavax/lang/model/type/TypeMirror;
    iget-object v4, v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 108
    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->createType(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    .line 110
    .local v4, "correctedCopy":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getAnnotations()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->addAnnotations(Ljava/lang/Iterable;)V

    .line 112
    .end local v3    # "underlyingType":Ljavax/lang/model/type/TypeMirror;
    goto :goto_0

    .line 113
    .end local v4    # "correctedCopy":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    :cond_1
    move-object v4, v0

    .line 116
    .restart local v4    # "correctedCopy":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    :goto_0
    invoke-virtual {v4, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->setComponentType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 118
    return-object v4
.end method

.method public bridge synthetic visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    check-cast p2, Ljava/util/IdentityHashMap;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeVariableSubstitutor$Visitor;->visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

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

    .line 126
    .local p2, "originalToCopy":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    iget-boolean v0, p0, Lorg/checkerframework/framework/type/TypeVariableSubstitutor$Visitor;->visitingExecutableTypeParam:Z

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/framework/type/TypeVariableSubstitutor$Visitor;->visitingExecutableTypeParam:Z

    .line 135
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0

    .line 138
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/TypeVariable;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 139
    .local v0, "typeVarElem":Ljavax/lang/model/element/Element;
    iget-object v1, p0, Lorg/checkerframework/framework/type/TypeVariableSubstitutor$Visitor;->elementToArgMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Lorg/checkerframework/framework/type/TypeVariableSubstitutor$Visitor;->elementToArgMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 141
    .local v1, "argument":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v2, p0, Lorg/checkerframework/framework/type/TypeVariableSubstitutor$Visitor;->this$0:Lorg/checkerframework/framework/type/TypeVariableSubstitutor;

    invoke-virtual {v2, v1, p1}, Lorg/checkerframework/framework/type/TypeVariableSubstitutor;->substituteTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    return-object v2

    .line 145
    .end local v0    # "typeVarElem":Ljavax/lang/model/element/Element;
    .end local v1    # "argument":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/util/IdentityHashMap;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method
