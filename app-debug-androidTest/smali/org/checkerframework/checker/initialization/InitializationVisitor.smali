.class public Lorg/checkerframework/checker/initialization/InitializationVisitor;
.super Lorg/checkerframework/common/basetype/BaseTypeVisitor;
.source "InitializationVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Factory:",
        "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<",
        "TValue;TStore;**>;Value:",
        "Lorg/checkerframework/framework/flow/CFAbstractValue<",
        "TValue;>;Store:",
        "Lorg/checkerframework/checker/initialization/InitializationStore<",
        "TValue;TStore;>;>",
        "Lorg/checkerframework/common/basetype/BaseTypeVisitor<",
        "TFactory;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final COMMITMENT_FIELDS_UNINITIALIZED:Ljava/lang/String; = "initialization.fields.uninitialized"

.field private static final COMMITMENT_INVALID_CAST:Ljava/lang/String; = "initialization.invalid.cast"

.field private static final COMMITMENT_INVALID_CONSTRUCTOR_RETURN_TYPE:Ljava/lang/String; = "initialization.invalid.constructor.return.type"

.field private static final COMMITMENT_INVALID_FIELD_TYPE:Ljava/lang/String; = "initialization.invalid.field.type"

.field private static final COMMITMENT_INVALID_FIELD_WRITE_INITIALIZED:Ljava/lang/String; = "initialization.invalid.field.write.initialized"

.field private static final COMMITMENT_INVALID_FIELD_WRITE_UNKNOWN_INITIALIZATION:Ljava/lang/String; = "initialization.invalid.field.write.unknown"

.field private static final COMMITMENT_STATIC_FIELDS_UNINITIALIZED:Ljava/lang/String; = "initialization.static.fields.uninitialized"


# instance fields
.field protected final annoFormatter:Lorg/checkerframework/framework/util/AnnotationFormatter;

.field protected final initializedFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sun/source/tree/VariableTree;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 1
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 78
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationVisitor;, "Lorg/checkerframework/checker/initialization/InitializationVisitor<TFactory;TValue;TStore;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 79
    new-instance v0, Lorg/checkerframework/framework/util/DefaultAnnotationFormatter;

    invoke-direct {v0}, Lorg/checkerframework/framework/util/DefaultAnnotationFormatter;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->annoFormatter:Lorg/checkerframework/framework/util/AnnotationFormatter;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->initializedFields:Ljava/util/List;

    .line 81
    return-void
.end method

.method private getAllReceiverAnnotations(Lcom/sun/source/tree/MethodTree;)Ljava/util/List;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/MethodTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/MethodTree;",
            ")",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 347
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationVisitor;, "Lorg/checkerframework/checker/initialization/InitializationVisitor<TFactory;TValue;TStore;>;"
    const/4 v0, 0x0

    .line 348
    .local v0, "rcvannos":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isConstructor(Lcom/sun/source/tree/MethodTree;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    nop

    .line 350
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/MethodTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Symbol;

    .line 351
    .local v1, "meth":Lcom/sun/tools/javac/code/Symbol;
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol;->getRawTypeAttributes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 352
    if-nez v0, :cond_0

    .line 353
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 356
    .end local v1    # "meth":Lcom/sun/tools/javac/code/Symbol;
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected checkConstructorInvocation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lcom/sun/source/tree/NewClassTree;)V
    .locals 0
    .param p1, "dt"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "constructor"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p3, "src"    # Lcom/sun/source/tree/NewClassTree;

    .line 98
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationVisitor;, "Lorg/checkerframework/checker/initialization/InitializationVisitor<TFactory;TValue;TStore;>;"
    return-void
.end method

.method protected checkConstructorResult(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljavax/lang/model/element/ExecutableElement;)V
    .locals 0
    .param p1, "constructorType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p2, "constructorElement"    # Ljavax/lang/model/element/ExecutableElement;

    .line 104
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationVisitor;, "Lorg/checkerframework/checker/initialization/InitializationVisitor<TFactory;TValue;TStore;>;"
    return-void
.end method

.method protected checkContract(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/flow/CFAbstractStore;)Z
    .locals 9
    .param p1, "expr"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .param p2, "necessaryAnnotation"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p3, "inferredAnnotation"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Lorg/checkerframework/framework/flow/CFAbstractStore<",
            "**>;)Z"
        }
    .end annotation

    .line 177
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationVisitor;, "Lorg/checkerframework/checker/initialization/InitializationVisitor<TFactory;TValue;TStore;>;"
    .local p4, "store":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<**>;"
    iget-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v0}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getFieldInvariantAnnotation()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 179
    .local v0, "invariantAnno":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v1, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v1}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v1

    if-eqz v1, :cond_9

    instance-of v1, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 184
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    .line 185
    .local v1, "fa":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getReceiver()Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v2

    instance-of v2, v2, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;

    const/4 v3, 0x1

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getReceiver()Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v2

    instance-of v2, v2, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    if-eqz v2, :cond_1

    goto :goto_2

    .line 198
    :cond_1
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getReceiver()Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v2

    invoke-virtual {p4, v2}, Lorg/checkerframework/framework/flow/CFAbstractStore;->getValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v2

    .line 200
    .local v2, "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TValue;"
    if-eqz v2, :cond_2

    .line 201
    invoke-virtual {v2}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getAnnotations()Ljava/util/Set;

    move-result-object v4

    .local v4, "recvAnnoSet":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    goto :goto_0

    .line 202
    .end local v4    # "recvAnnoSet":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_2
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getReceiver()Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v4

    instance-of v4, v4, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;

    if-eqz v4, :cond_5

    .line 203
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getReceiver()Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;

    invoke-virtual {v4}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;->getElement()Ljavax/lang/model/element/Element;

    move-result-object v4

    .line 204
    .local v4, "elem":Ljavax/lang/model/element/Element;
    iget-object v5, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v5, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v5, v4}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v5

    .line 205
    .local v5, "recvType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v4

    .line 206
    .end local v5    # "recvType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .local v4, "recvAnnoSet":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    nop

    .line 211
    :goto_0
    const/4 v5, 0x0

    .line 212
    .local v5, "isRecvCommitted":Z
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/lang/model/element/AnnotationMirror;

    .line 213
    .local v7, "anno":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v8, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v8, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v8, v7}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->isCommitted(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 214
    const/4 v5, 0x1

    .line 216
    .end local v7    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_3
    goto :goto_1

    .line 218
    :cond_4
    iget-object v6, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v6, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getField()Ljavax/lang/model/element/VariableElement;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v6

    .line 221
    .local v6, "fieldType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-eqz v5, :cond_8

    .line 222
    invoke-virtual {v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v7

    invoke-static {v7, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->containsSame(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 223
    return v3

    .line 208
    .end local v4    # "recvAnnoSet":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v5    # "isRecvCommitted":Z
    .end local v6    # "fieldType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_5
    const/4 v3, 0x0

    return v3

    .line 187
    .end local v2    # "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TValue;"
    :cond_6
    :goto_2
    move-object v2, p4

    check-cast v2, Lorg/checkerframework/checker/initialization/InitializationStore;

    .line 188
    .local v2, "s":Lorg/checkerframework/checker/initialization/InitializationStore;, "TStore;"
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getField()Ljavax/lang/model/element/VariableElement;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/checkerframework/checker/initialization/InitializationStore;->isFieldInitialized(Ljavax/lang/model/element/Element;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 189
    iget-object v4, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v4, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getField()Ljavax/lang/model/element/VariableElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    .line 191
    .local v4, "fieldType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v5

    invoke-static {v5, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->containsSame(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 192
    return v3

    .line 195
    .end local v2    # "s":Lorg/checkerframework/checker/initialization/InitializationStore;, "TStore;"
    .end local v4    # "fieldType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_7
    nop

    .line 226
    :cond_8
    invoke-super {p0, p1, p2, p3, p4}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkContract(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/flow/CFAbstractStore;)Z

    move-result v2

    return v2

    .line 181
    .end local v1    # "fa":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    :cond_9
    :goto_3
    invoke-super {p0, p1, p2, p3, p4}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkContract(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/flow/CFAbstractStore;)Z

    move-result v1

    return v1
.end method

.method protected checkFieldsInitialized(Lcom/sun/source/tree/Tree;ZLorg/checkerframework/checker/initialization/InitializationStore;Ljava/util/List;)V
    .locals 8
    .param p1, "blockNode"    # Lcom/sun/source/tree/Tree;
    .param p2, "staticFields"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/Tree;",
            "ZTStore;",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)V"
        }
    .end annotation

    .line 376
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationVisitor;, "Lorg/checkerframework/checker/initialization/InitializationVisitor<TFactory;TValue;TStore;>;"
    .local p3, "store":Lorg/checkerframework/checker/initialization/InitializationStore;, "TStore;"
    .local p4, "receiverAnnotations":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/AnnotationMirror;>;"
    if-nez p3, :cond_0

    .line 377
    return-void

    .line 381
    :cond_0
    if-eqz p2, :cond_1

    .line 382
    const-string v0, "initialization.static.fields.uninitialized"

    goto :goto_0

    .line 383
    :cond_1
    const-string v0, "initialization.fields.uninitialized"

    :goto_0
    nop

    .line 385
    .local v0, "COMMITMENT_FIELDS_UNINITIALIZED_KEY":Ljava/lang/String;
    iget-object v1, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    .line 387
    invoke-virtual {p0}, Lorg/checkerframework/checker/initialization/InitializationVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v2

    .line 386
    invoke-virtual {v1, p3, v2, p2, p4}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getUninitializedInvariantFields(Lorg/checkerframework/checker/initialization/InitializationStore;Lcom/sun/source/util/TreePath;ZLjava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 389
    .local v1, "violatingFields":Ljava/util/List;, "Ljava/util/List<Lcom/sun/source/tree/VariableTree;>;"
    if-eqz p2, :cond_2

    goto :goto_1

    .line 396
    :cond_2
    iget-object v2, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->initializedFields:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 400
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 401
    .local v2, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/source/tree/VariableTree;>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 402
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/source/tree/VariableTree;

    .line 403
    .local v3, "f":Lcom/sun/source/tree/VariableTree;
    invoke-static {v3}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v4

    .line 404
    .local v4, "e":Ljavax/lang/model/element/Element;
    iget-object v5, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v5, v4, v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->shouldSuppressWarnings(Ljavax/lang/model/element/Element;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 405
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 407
    .end local v3    # "f":Lcom/sun/source/tree/VariableTree;
    .end local v4    # "e":Ljavax/lang/model/element/Element;
    :cond_3
    goto :goto_2

    .line 409
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 410
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    .local v3, "fieldsString":Ljava/lang/StringBuilder;
    const/4 v4, 0x1

    .line 412
    .local v4, "first":Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/source/tree/VariableTree;

    .line 413
    .local v6, "f":Lcom/sun/source/tree/VariableTree;
    if-nez v4, :cond_5

    .line 414
    const-string v7, ", "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    :cond_5
    const/4 v4, 0x0

    .line 417
    invoke-interface {v6}, Lcom/sun/source/tree/VariableTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 418
    .end local v6    # "f":Lcom/sun/source/tree/VariableTree;
    goto :goto_3

    .line 419
    :cond_6
    iget-object v5, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v6

    .line 420
    invoke-static {v0, v6}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v6

    .line 419
    invoke-virtual {v5, v6, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 422
    .end local v3    # "fieldsString":Ljava/lang/StringBuilder;
    .end local v4    # "first":Z
    :cond_7
    return-void
.end method

.method protected checkThisOrSuperConstructorCall(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/String;)V
    .locals 0
    .param p1, "superCall"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "errorKey"    # Ljava/lang/String;

    .line 110
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationVisitor;, "Lorg/checkerframework/checker/initialization/InitializationVisitor<TFactory;TValue;TStore;>;"
    return-void
.end method

.method protected commonAssignmentCheck(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)V
    .locals 9
    .param p1, "varTree"    # Lcom/sun/source/tree/Tree;
    .param p2, "valueExp"    # Lcom/sun/source/tree/ExpressionTree;
    .param p3, "errorKey"    # Ljava/lang/String;

    .line 116
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationVisitor;, "Lorg/checkerframework/checker/initialization/InitializationVisitor<TFactory;TValue;TStore;>;"
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isFieldAccess(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    move-object v0, p1

    check-cast v0, Lcom/sun/source/tree/ExpressionTree;

    .line 120
    .local v0, "lhs":Lcom/sun/source/tree/ExpressionTree;
    move-object v1, p2

    .line 121
    .local v1, "y":Lcom/sun/source/tree/ExpressionTree;
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v2

    .line 122
    .local v2, "el":Ljavax/lang/model/element/Element;
    iget-object v3, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v3, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v3, v0}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getReceiverType(Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    .line 123
    .local v3, "xType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v4, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v4, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v4, v1}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    .line 126
    .local v4, "yType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v5, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v5, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    .line 127
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v5

    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v5

    .line 128
    .local v5, "fieldAnnotations":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v6, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v6, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    iget-object v6, v6, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->UNKNOWN_INITIALIZATION:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {v5, v6}, Lorg/checkerframework/javacutil/AnnotationUtils;->containsSameByName(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 130
    invoke-static {v2}, Lorg/checkerframework/javacutil/ElementUtils;->isStatic(Ljavax/lang/model/element/Element;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v6, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    .line 131
    invoke-virtual {v6, v4}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->isCommitted(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v6, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    .line 132
    invoke-virtual {v6, v3}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->isFree(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v6, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    .line 133
    invoke-virtual {v6, v4}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->isFbcBottom(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 135
    iget-object v6, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v6, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v6, v3}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->isCommitted(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 136
    const-string v6, "initialization.invalid.field.write.initialized"

    .local v6, "err":Ljava/lang/String;
    goto :goto_0

    .line 138
    .end local v6    # "err":Ljava/lang/String;
    :cond_0
    const-string v6, "initialization.invalid.field.write.unknown"

    .line 140
    .restart local v6    # "err":Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v8}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v8

    invoke-virtual {v7, v8, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 141
    return-void

    .line 145
    .end local v0    # "lhs":Lcom/sun/source/tree/ExpressionTree;
    .end local v1    # "y":Lcom/sun/source/tree/ExpressionTree;
    .end local v2    # "el":Ljavax/lang/model/element/Element;
    .end local v3    # "xType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v4    # "yType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v5    # "fieldAnnotations":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v6    # "err":Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->commonAssignmentCheck(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public processClassTree(Lcom/sun/source/tree/ClassTree;)V
    .locals 7
    .param p1, "node"    # Lcom/sun/source/tree/ClassTree;

    .line 280
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationVisitor;, "Lorg/checkerframework/checker/initialization/InitializationVisitor<TFactory;TValue;TStore;>;"
    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getMembers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/Tree;

    .line 281
    .local v1, "member":Lcom/sun/source/tree/Tree;
    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->BLOCK:Lcom/sun/source/tree/Tree$Kind;

    if-ne v2, v3, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/sun/source/tree/BlockTree;

    invoke-interface {v2}, Lcom/sun/source/tree/BlockTree;->isStatic()Z

    move-result v2

    if-nez v2, :cond_1

    .line 282
    move-object v2, v1

    check-cast v2, Lcom/sun/source/tree/BlockTree;

    .line 283
    .local v2, "block":Lcom/sun/source/tree/BlockTree;
    iget-object v3, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v3, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v3, v2}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getRegularExitStore(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/flow/CFAbstractStore;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/checker/initialization/InitializationStore;

    .line 286
    .local v3, "store":Lorg/checkerframework/checker/initialization/InitializationStore;, "TStore;"
    invoke-virtual {v3}, Lorg/checkerframework/checker/initialization/InitializationStore;->getAnalysis()Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getFieldValues()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/javacutil/Pair;

    .line 287
    .local v5, "t":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;"
    iget-object v6, v5, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljavax/lang/model/element/VariableElement;

    invoke-virtual {v3, v6}, Lorg/checkerframework/checker/initialization/InitializationStore;->addInitializedField(Ljavax/lang/model/element/VariableElement;)V

    .line 288
    .end local v5    # "t":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;"
    goto :goto_1

    .line 289
    :cond_0
    iget-object v4, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v4, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    .line 290
    invoke-virtual {p0}, Lorg/checkerframework/checker/initialization/InitializationVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getInitializedInvariantFields(Lorg/checkerframework/checker/initialization/InitializationStore;Lcom/sun/source/util/TreePath;)Ljava/util/List;

    move-result-object v4

    .line 291
    .local v4, "init":Ljava/util/List;, "Ljava/util/List<Lcom/sun/source/tree/VariableTree;>;"
    iget-object v5, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->initializedFields:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 293
    .end local v1    # "member":Lcom/sun/source/tree/Tree;
    .end local v2    # "block":Lcom/sun/source/tree/BlockTree;
    .end local v3    # "store":Lorg/checkerframework/checker/initialization/InitializationStore;, "TStore;"
    .end local v4    # "init":Ljava/util/List;, "Ljava/util/List<Lcom/sun/source/tree/VariableTree;>;"
    :cond_1
    goto :goto_0

    .line 295
    :cond_2
    invoke-super {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->processClassTree(Lcom/sun/source/tree/ClassTree;)V

    .line 298
    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->CLASS:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_4

    .line 299
    const/4 v0, 0x1

    .line 302
    .local v0, "isStatic":Z
    iget-object v1, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v1, p1}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getRegularExitStore(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/flow/CFAbstractStore;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/checker/initialization/InitializationStore;

    .line 304
    .local v1, "store":Lorg/checkerframework/checker/initialization/InitializationStore;, "TStore;"
    invoke-virtual {v1}, Lorg/checkerframework/checker/initialization/InitializationStore;->getAnalysis()Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getFieldValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/javacutil/Pair;

    .line 305
    .local v3, "t":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;"
    iget-object v4, v3, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljavax/lang/model/element/VariableElement;

    invoke-virtual {v1, v4}, Lorg/checkerframework/checker/initialization/InitializationStore;->addInitializedField(Ljavax/lang/model/element/VariableElement;)V

    .line 306
    .end local v3    # "t":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TValue;>;"
    goto :goto_2

    .line 307
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 308
    .local v2, "receiverAnnotations":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/checkerframework/checker/initialization/InitializationVisitor;->checkFieldsInitialized(Lcom/sun/source/tree/Tree;ZLorg/checkerframework/checker/initialization/InitializationStore;Ljava/util/List;)V

    .line 310
    .end local v0    # "isStatic":Z
    .end local v1    # "store":Lorg/checkerframework/checker/initialization/InitializationStore;, "TStore;"
    .end local v2    # "receiverAnnotations":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_4
    return-void
.end method

.method public setRoot(Lcom/sun/source/tree/CompilationUnitTree;)V
    .locals 1
    .param p1, "root"    # Lcom/sun/source/tree/CompilationUnitTree;

    .line 88
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationVisitor;, "Lorg/checkerframework/checker/initialization/InitializationVisitor<TFactory;TValue;TStore;>;"
    iget-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->initializedFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 89
    invoke-super {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->setRoot(Lcom/sun/source/tree/CompilationUnitTree;)V

    .line 90
    return-void
.end method

.method public bridge synthetic visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 52
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationVisitor;, "Lorg/checkerframework/checker/initialization/InitializationVisitor<TFactory;TValue;TStore;>;"
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationVisitor;->visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "node"    # Lcom/sun/source/tree/MethodTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 314
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationVisitor;, "Lorg/checkerframework/checker/initialization/InitializationVisitor<TFactory;TValue;TStore;>;"
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isConstructor(Lcom/sun/source/tree/MethodTree;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 315
    nop

    .line 316
    invoke-static {p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->getExplicitAnnotationsOnConstructorResult(Lcom/sun/source/tree/MethodTree;)Ljava/util/Set;

    move-result-object v0

    .line 319
    .local v0, "returnTypeAnnotations":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v1, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v1}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getInvalidConstructorReturnTypeAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 320
    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/AnnotationMirror;

    .line 321
    .local v4, "a":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v5, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v5, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v5, v4, v2}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 322
    iget-object v3, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v5

    .line 323
    const-string v6, "initialization.invalid.constructor.return.type"

    invoke-static {v6, v5}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v5

    .line 322
    invoke-virtual {v3, v5, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 325
    goto :goto_2

    .line 327
    .end local v4    # "a":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_1

    .line 328
    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_1
    :goto_2
    goto :goto_0

    .line 332
    :cond_2
    const/4 v1, 0x0

    .line 333
    .local v1, "isStatic":Z
    iget-object v2, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v2, p1}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getRegularExitStore(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/flow/CFAbstractStore;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/checker/initialization/InitializationStore;

    .line 334
    .local v2, "store":Lorg/checkerframework/checker/initialization/InitializationStore;, "TStore;"
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/initialization/InitializationVisitor;->getAllReceiverAnnotations(Lcom/sun/source/tree/MethodTree;)Ljava/util/List;

    move-result-object v3

    .line 335
    .local v3, "receiverAnnotations":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {p0, p1, v1, v2, v3}, Lorg/checkerframework/checker/initialization/InitializationVisitor;->checkFieldsInitialized(Lcom/sun/source/tree/Tree;ZLorg/checkerframework/checker/initialization/InitializationStore;Ljava/util/List;)V

    .line 337
    .end local v0    # "returnTypeAnnotations":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v1    # "isStatic":Z
    .end local v2    # "store":Lorg/checkerframework/checker/initialization/InitializationStore;, "TStore;"
    .end local v3    # "receiverAnnotations":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_3
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 52
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationVisitor;, "Lorg/checkerframework/checker/initialization/InitializationVisitor<TFactory;TValue;TStore;>;"
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationVisitor;->visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "node"    # Lcom/sun/source/tree/TypeCastTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 231
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationVisitor;, "Lorg/checkerframework/checker/initialization/InitializationVisitor<TFactory;TValue;TStore;>;"
    iget-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-interface {p1}, Lcom/sun/source/tree/TypeCastTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 232
    .local v0, "exprType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v1, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v1, p1}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 233
    .local v1, "castType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    const/4 v2, 0x0

    .local v2, "exprAnno":Ljavax/lang/model/element/AnnotationMirror;
    const/4 v3, 0x0

    .line 236
    .local v3, "castAnno":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v4, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v4, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v4}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getInitializationAnnotations()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 237
    .local v5, "a":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {v1, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 238
    if-nez v3, :cond_0

    .line 239
    invoke-virtual {v1, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    goto :goto_1

    .line 238
    :cond_0
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 241
    :cond_1
    :goto_1
    invoke-virtual {v0, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 242
    if-nez v2, :cond_2

    .line 243
    invoke-virtual {v0, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    goto :goto_2

    .line 242
    :cond_2
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 245
    .end local v5    # "a":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_3
    :goto_2
    goto :goto_0

    .line 253
    :cond_4
    if-eqz v2, :cond_7

    if-nez v3, :cond_5

    goto :goto_3

    .line 256
    :cond_5
    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    .line 257
    iget-object v4, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v4, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v4}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v4

    .local v4, "isSubtype":Z
    goto :goto_4

    .line 256
    .end local v4    # "isSubtype":Z
    :cond_6
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 254
    :cond_7
    :goto_3
    const/4 v4, 0x1

    .line 260
    .restart local v4    # "isSubtype":Z
    :goto_4
    if-nez v4, :cond_8

    .line 261
    iget-object v5, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    iget-object v6, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->annoFormatter:Lorg/checkerframework/framework/util/AnnotationFormatter;

    .line 264
    invoke-interface {v6, v2}, Lorg/checkerframework/framework/util/AnnotationFormatter;->formatAnnotationMirror(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->annoFormatter:Lorg/checkerframework/framework/util/AnnotationFormatter;

    .line 265
    invoke-interface {v7, v3}, Lorg/checkerframework/framework/util/AnnotationFormatter;->formatAnnotationMirror(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    .line 262
    const-string v7, "initialization.invalid.cast"

    invoke-static {v7, v6}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v6

    .line 261
    invoke-virtual {v5, v6, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 267
    return-object p2

    .line 270
    :cond_8
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v5

    return-object v5
.end method

.method public bridge synthetic visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 52
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationVisitor;, "Lorg/checkerframework/checker/initialization/InitializationVisitor<TFactory;TValue;TStore;>;"
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationVisitor;->visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "node"    # Lcom/sun/source/tree/VariableTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 151
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationVisitor;, "Lorg/checkerframework/checker/initialization/InitializationVisitor<TFactory;TValue;TStore;>;"
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/VariableTree;)Ljavax/lang/model/element/VariableElement;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/VariableElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/lang/model/element/ElementKind;->isField()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    iget-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    .line 153
    invoke-virtual {v0, p1}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getExplicitAnnotations()Ljava/util/Set;

    move-result-object v0

    .line 155
    .local v0, "annotationMirrors":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v1, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v1}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getInitializationAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 156
    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/AnnotationMirror;

    .line 157
    .local v4, "a":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v5, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v5, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v5, v4}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->isUnclassified(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 158
    goto :goto_1

    .line 160
    :cond_0
    iget-object v5, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v5, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    invoke-virtual {v5, v4, v2}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 161
    iget-object v3, p0, Lorg/checkerframework/checker/initialization/InitializationVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v5, "initialization.invalid.field.type"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v5

    invoke-virtual {v3, v5, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 162
    goto :goto_2

    .line 164
    .end local v4    # "a":Ljavax/lang/model/element/AnnotationMirror;
    :cond_1
    goto :goto_1

    .line 165
    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_2
    :goto_2
    goto :goto_0

    .line 167
    .end local v0    # "annotationMirrors":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_3
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
