.class public Lorg/checkerframework/framework/type/typeannotator/IrrelevantTypeAnnotator;
.super Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;
.source "IrrelevantTypeAnnotator.java"


# instance fields
.field private allFoundRelevantTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;"
        }
    .end annotation
.end field

.field private annotations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation
.end field

.field private arraysAreRelevant:Z

.field private relevantTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/util/Set;[Ljava/lang/Class;)V
    .locals 6
    .param p1, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 52
    .local p2, "annotations":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    .local p3, "relevantClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 53
    iput-object p2, p0, Lorg/checkerframework/framework/type/typeannotator/IrrelevantTypeAnnotator;->annotations:Ljava/util/Set;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/framework/type/typeannotator/IrrelevantTypeAnnotator;->arraysAreRelevant:Z

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/checkerframework/framework/type/typeannotator/IrrelevantTypeAnnotator;->relevantTypes:Ljava/util/List;

    .line 56
    array-length v1, p3

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p3, v0

    .line 57
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, [Ljava/lang/Object;

    if-ne v2, v3, :cond_0

    .line 58
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/checkerframework/framework/type/typeannotator/IrrelevantTypeAnnotator;->arraysAreRelevant:Z

    goto :goto_1

    .line 60
    :cond_0
    iget-object v3, p0, Lorg/checkerframework/framework/type/typeannotator/IrrelevantTypeAnnotator;->relevantTypes:Ljava/util/List;

    .line 63
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v4

    invoke-interface {v4}, Lorg/checkerframework/framework/util/CFContext;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v4

    .line 64
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v5

    .line 61
    invoke-static {v2, v4, v5}, Lorg/checkerframework/javacutil/TypesUtils;->typeFromClass(Ljava/lang/Class;Ljavax/lang/model/util/Types;Ljavax/lang/model/util/Elements;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    .line 60
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_1
    const/16 v0, 0x12c

    invoke-static {v0}, Lorg/checkerframework/javacutil/CollectionUtils;->createLRUCache(I)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/type/typeannotator/IrrelevantTypeAnnotator;->allFoundRelevantTypes:Ljava/util/Set;

    .line 68
    return-void
.end method


# virtual methods
.method protected bridge synthetic scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/typeannotator/IrrelevantTypeAnnotator;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 72
    sget-object v0, Lorg/checkerframework/framework/type/typeannotator/IrrelevantTypeAnnotator$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 87
    iget-object v0, p0, Lorg/checkerframework/framework/type/typeannotator/IrrelevantTypeAnnotator;->typeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/framework/util/CFContext;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v0

    .line 88
    .local v0, "types":Ljavax/lang/model/util/Types;
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 90
    .local v1, "typeMirror":Ljavax/lang/model/type/TypeMirror;
    invoke-static {v1}, Lorg/checkerframework/javacutil/TypesUtils;->isPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    move-object v2, v1

    check-cast v2, Ljavax/lang/model/type/PrimitiveType;

    invoke-interface {v0, v2}, Ljavax/lang/model/util/Types;->boxedClass(Ljavax/lang/model/type/PrimitiveType;)Ljavax/lang/model/element/TypeElement;

    move-result-object v2

    invoke-interface {v2}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    goto :goto_0

    .line 82
    .end local v0    # "types":Ljavax/lang/model/util/Types;
    .end local v1    # "typeMirror":Ljavax/lang/model/type/TypeMirror;
    :pswitch_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0

    .line 94
    .restart local v0    # "types":Ljavax/lang/model/util/Types;
    .restart local v1    # "typeMirror":Ljavax/lang/model/type/TypeMirror;
    :cond_0
    :goto_0
    const/4 v2, 0x1

    .line 95
    .local v2, "shouldAnnotate":Z
    iget-object v3, p0, Lorg/checkerframework/framework/type/typeannotator/IrrelevantTypeAnnotator;->allFoundRelevantTypes:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    const/4 v2, 0x0

    goto :goto_3

    .line 97
    :cond_1
    invoke-interface {v1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v3, v4, :cond_4

    .line 98
    iget-object v3, p0, Lorg/checkerframework/framework/type/typeannotator/IrrelevantTypeAnnotator;->relevantTypes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/type/TypeMirror;

    .line 99
    .local v4, "supportedType":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {v0, v1, v4}, Ljavax/lang/model/util/Types;->isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 100
    const/4 v2, 0x0

    .line 101
    iget-object v3, p0, Lorg/checkerframework/framework/type/typeannotator/IrrelevantTypeAnnotator;->allFoundRelevantTypes:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    goto :goto_2

    .line 104
    .end local v4    # "supportedType":Ljavax/lang/model/type/TypeMirror;
    :cond_2
    goto :goto_1

    :cond_3
    :goto_2
    goto :goto_3

    .line 105
    :cond_4
    invoke-interface {v1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v3, v4, :cond_5

    .line 106
    iget-boolean v2, p0, Lorg/checkerframework/framework/type/typeannotator/IrrelevantTypeAnnotator;->arraysAreRelevant:Z

    .line 107
    iget-boolean v3, p0, Lorg/checkerframework/framework/type/typeannotator/IrrelevantTypeAnnotator;->arraysAreRelevant:Z

    if-eqz v3, :cond_5

    .line 108
    iget-object v3, p0, Lorg/checkerframework/framework/type/typeannotator/IrrelevantTypeAnnotator;->allFoundRelevantTypes:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    .line 113
    iget-object v3, p0, Lorg/checkerframework/framework/type/typeannotator/IrrelevantTypeAnnotator;->annotations:Ljava/util/Set;

    invoke-virtual {p1, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addMissingAnnotations(Ljava/lang/Iterable;)V

    .line 115
    :cond_6
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Void;

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
