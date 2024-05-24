.class public Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenes;
.super Ljava/lang/Object;
.source "WholeProgramInferenceScenes.java"

# interfaces
.implements Lorg/checkerframework/common/wholeprograminference/WholeProgramInference;


# instance fields
.field private final storage:Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "ignoreNullAssignments"    # Z

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;

    invoke-direct {v0, p1}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;-><init>(Z)V

    iput-object v0, p0, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenes;->storage:Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;

    .line 90
    return-void
.end method

.method private getEnclosingClassName(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;
    .locals 1
    .param p1, "executableElement"    # Ljavax/lang/model/element/ExecutableElement;

    .line 336
    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->enclClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flatName()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEnclosingClassName(Ljavax/lang/model/element/VariableElement;)Ljava/lang/String;
    .locals 1
    .param p1, "variableElement"    # Ljavax/lang/model/element/VariableElement;

    .line 346
    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->enclClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flatName()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEnclosingClassName(Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;)Ljava/lang/String;
    .locals 1
    .param p1, "localVariableNode"    # Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    .line 324
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;->getElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/ElementUtils;->enclosingClass(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 325
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flatName()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    return-object v0
.end method

.method private updateInferredExecutableParameterTypes(Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/lang/String;Lscenelib/annotations/el/AMethod;Ljava/util/List;)V
    .locals 18
    .param p1, "methodElt"    # Ljavax/lang/model/element/ExecutableElement;
    .param p2, "atf"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p3, "jaifPath"    # Ljava/lang/String;
    .param p4, "method"    # Lscenelib/annotations/el/AMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            "Ljava/lang/String;",
            "Lscenelib/annotations/el/AMethod;",
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;)V"
        }
    .end annotation

    .line 143
    .local p5, "arguments":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    move-object/from16 v7, p2

    const/4 v0, 0x0

    move v8, v0

    .local v8, "i":I
    :goto_0
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 144
    invoke-interface/range {p1 .. p1}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljavax/lang/model/element/VariableElement;

    .line 145
    .local v9, "ve":Ljavax/lang/model/element/VariableElement;
    invoke-virtual {v7, v9}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v10

    .line 147
    .local v10, "paramATM":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    move-object/from16 v11, p5

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 148
    .local v12, "arg":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {v12}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v13

    .line 149
    .local v13, "treeNode":Lcom/sun/source/tree/Tree;
    if-nez v13, :cond_0

    .line 155
    move-object/from16 v15, p4

    goto :goto_1

    .line 157
    :cond_0
    invoke-virtual {v7, v13}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v14

    .line 158
    .local v14, "argATM":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    move-object/from16 v15, p4

    iget-object v0, v15, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lscenelib/annotations/el/AField;

    .line 159
    .local v6, "param":Lscenelib/annotations/el/AField;
    move-object/from16 v5, p0

    iget-object v0, v5, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenes;->storage:Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;

    iget-object v1, v6, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    sget-object v16, Lorg/checkerframework/framework/qual/TypeUseLocation;->PARAMETER:Lorg/checkerframework/framework/qual/TypeUseLocation;

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v14

    move-object v5, v10

    move-object/from16 v17, v6

    .end local v6    # "param":Lscenelib/annotations/el/AField;
    .local v17, "param":Lscenelib/annotations/el/AField;
    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->updateAnnotationSetInScene(Lscenelib/annotations/el/ATypeElement;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/lang/String;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;)V

    .line 143
    .end local v9    # "ve":Ljavax/lang/model/element/VariableElement;
    .end local v10    # "paramATM":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v12    # "arg":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v13    # "treeNode":Lcom/sun/source/tree/Tree;
    .end local v14    # "argATM":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v17    # "param":Lscenelib/annotations/el/AField;
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v15, p4

    move-object/from16 v11, p5

    .line 162
    .end local v8    # "i":I
    return-void
.end method


# virtual methods
.method public saveResults()V
    .locals 1

    .line 314
    iget-object v0, p0, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenes;->storage:Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;

    invoke-virtual {v0}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->writeScenesToJaif()V

    .line 315
    return-void
.end method

.method public updateFromFieldAssignment(Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;Lorg/checkerframework/dataflow/cfg/node/Node;Lcom/sun/source/tree/ClassTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 15
    .param p1, "lhs"    # Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;
    .param p2, "rhs"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "classTree"    # Lcom/sun/source/tree/ClassTree;
    .param p4, "atf"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 251
    move-object v0, p0

    move-object/from16 v8, p4

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->getElement()Ljavax/lang/model/element/VariableElement;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/javacutil/ElementUtils;->isElementFromByteCode(Ljavax/lang/model/element/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    return-void

    .line 257
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->getElement()Ljavax/lang/model/element/VariableElement;

    move-result-object v1

    const-class v2, Lorg/checkerframework/framework/qual/IgnoreInWholeProgramInference;

    invoke-virtual {v8, v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    if-nez v1, :cond_2

    .line 259
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->getElement()Ljavax/lang/model/element/VariableElement;

    move-result-object v1

    const-class v2, Lorg/checkerframework/framework/qual/IgnoreInWholeProgramInference;

    .line 258
    invoke-virtual {v8, v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getDeclAnnotationWithMetaAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 260
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_0

    .line 265
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->getElement()Ljavax/lang/model/element/VariableElement;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenes;->getEnclosingClassName(Ljavax/lang/model/element/VariableElement;)Ljava/lang/String;

    move-result-object v9

    .line 266
    .local v9, "className":Ljava/lang/String;
    iget-object v1, v0, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenes;->storage:Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;

    invoke-virtual {v1, v9}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->getJaifPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 267
    .local v10, "jaifPath":Ljava/lang/String;
    iget-object v1, v0, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenes;->storage:Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;

    invoke-virtual {v1, v9, v10}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->getAClass(Ljava/lang/String;Ljava/lang/String;)Lscenelib/annotations/el/AClass;

    move-result-object v11

    .line 269
    .local v11, "clazz":Lscenelib/annotations/el/AClass;
    iget-object v1, v11, Lscenelib/annotations/el/AClass;->fields:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lscenelib/annotations/el/AField;

    .line 270
    .local v12, "field":Lscenelib/annotations/el/AField;
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v1

    invoke-virtual {v8, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v13

    .line 273
    .local v13, "lhsATM":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual/range {p2 .. p2}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v1

    invoke-virtual {v8, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v14

    .line 274
    .local v14, "rhsATM":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v1, v0, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenes;->storage:Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;

    iget-object v2, v12, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    sget-object v7, Lorg/checkerframework/framework/qual/TypeUseLocation;->FIELD:Lorg/checkerframework/framework/qual/TypeUseLocation;

    move-object/from16 v3, p4

    move-object v4, v10

    move-object v5, v14

    move-object v6, v13

    invoke-virtual/range {v1 .. v7}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->updateAnnotationSetInScene(Lscenelib/annotations/el/ATypeElement;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/lang/String;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;)V

    .line 276
    return-void

    .line 262
    .end local v9    # "className":Ljava/lang/String;
    .end local v10    # "jaifPath":Ljava/lang/String;
    .end local v11    # "clazz":Lscenelib/annotations/el/AClass;
    .end local v12    # "field":Lscenelib/annotations/el/AField;
    .end local v13    # "lhsATM":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v14    # "rhsATM":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_2
    :goto_0
    return-void
.end method

.method public updateFromLocalAssignment(Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;Lorg/checkerframework/dataflow/cfg/node/Node;Lcom/sun/source/tree/ClassTree;Lcom/sun/source/tree/MethodTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 22
    .param p1, "lhs"    # Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    .param p2, "rhs"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "classTree"    # Lcom/sun/source/tree/ClassTree;
    .param p4, "methodTree"    # Lcom/sun/source/tree/MethodTree;
    .param p5, "atf"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 212
    move-object/from16 v0, p0

    move-object/from16 v8, p5

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;->getElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/javacutil/ElementUtils;->isElementFromByteCode(Ljavax/lang/model/element/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    return-void

    .line 216
    :cond_0
    invoke-direct/range {p0 .. p1}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenes;->getEnclosingClassName(Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;)Ljava/lang/String;

    move-result-object v9

    .line 217
    .local v9, "className":Ljava/lang/String;
    iget-object v1, v0, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenes;->storage:Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;

    invoke-virtual {v1, v9}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->getJaifPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 218
    .local v10, "jaifPath":Ljava/lang/String;
    iget-object v1, v0, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenes;->storage:Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;

    invoke-virtual {v1, v9, v10}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->getAClass(Ljava/lang/String;Ljava/lang/String;)Lscenelib/annotations/el/AClass;

    move-result-object v11

    .line 219
    .local v11, "clazz":Lscenelib/annotations/el/AClass;
    invoke-static/range {p4 .. p4}, Lscenelib/annotations/util/JVMNames;->getJVMMethodName(Lcom/sun/source/tree/MethodTree;)Ljava/lang/String;

    move-result-object v12

    .line 220
    .local v12, "methodName":Ljava/lang/String;
    iget-object v1, v11, Lscenelib/annotations/el/AClass;->methods:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v1, v12}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lscenelib/annotations/el/AMethod;

    .line 222
    .local v13, "method":Lscenelib/annotations/el/AMethod;
    invoke-interface/range {p4 .. p4}, Lcom/sun/source/tree/MethodTree;->getParameters()Ljava/util/List;

    move-result-object v14

    .line 224
    .local v14, "params":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/VariableTree;>;"
    const/4 v1, 0x0

    move v15, v1

    .local v15, "i":I
    :goto_0
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-ge v15, v1, :cond_3

    .line 225
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/sun/source/tree/VariableTree;

    .line 226
    .local v7, "vt":Lcom/sun/source/tree/VariableTree;
    invoke-interface {v7}, Lcom/sun/source/tree/VariableTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 227
    invoke-virtual/range {p2 .. p2}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v6

    .line 228
    .local v6, "treeNode":Lcom/sun/source/tree/Tree;
    if-nez v6, :cond_1

    .line 234
    goto :goto_1

    .line 236
    :cond_1
    invoke-virtual {v8, v7}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v16

    .line 237
    .local v16, "paramATM":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v8, v6}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v17

    .line 238
    .local v17, "argATM":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v1, v13, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lscenelib/annotations/el/AField;

    .line 239
    .local v5, "param":Lscenelib/annotations/el/AField;
    iget-object v1, v0, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenes;->storage:Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;

    iget-object v2, v5, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    sget-object v18, Lorg/checkerframework/framework/qual/TypeUseLocation;->PARAMETER:Lorg/checkerframework/framework/qual/TypeUseLocation;

    move-object/from16 v3, p5

    move-object v4, v10

    move-object/from16 v19, v5

    .end local v5    # "param":Lscenelib/annotations/el/AField;
    .local v19, "param":Lscenelib/annotations/el/AField;
    move-object/from16 v5, v17

    move-object/from16 v20, v6

    .end local v6    # "treeNode":Lcom/sun/source/tree/Tree;
    .local v20, "treeNode":Lcom/sun/source/tree/Tree;
    move-object/from16 v6, v16

    move-object/from16 v21, v7

    .end local v7    # "vt":Lcom/sun/source/tree/VariableTree;
    .local v21, "vt":Lcom/sun/source/tree/VariableTree;
    move-object/from16 v7, v18

    invoke-virtual/range {v1 .. v7}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->updateAnnotationSetInScene(Lscenelib/annotations/el/ATypeElement;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/lang/String;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;)V

    .line 241
    goto :goto_2

    .line 226
    .end local v16    # "paramATM":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v17    # "argATM":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v19    # "param":Lscenelib/annotations/el/AField;
    .end local v20    # "treeNode":Lcom/sun/source/tree/Tree;
    .end local v21    # "vt":Lcom/sun/source/tree/VariableTree;
    .restart local v7    # "vt":Lcom/sun/source/tree/VariableTree;
    :cond_2
    move-object/from16 v21, v7

    .line 224
    .end local v7    # "vt":Lcom/sun/source/tree/VariableTree;
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 244
    .end local v15    # "i":I
    :cond_3
    :goto_2
    return-void
.end method

.method public updateFromMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 14
    .param p1, "methodInvNode"    # Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .param p2, "receiverTree"    # Lcom/sun/source/tree/Tree;
    .param p3, "methodElt"    # Ljavax/lang/model/element/ExecutableElement;
    .param p4, "atf"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 121
    move-object v6, p0

    invoke-static/range {p3 .. p3}, Lorg/checkerframework/javacutil/ElementUtils;->isElementFromByteCode(Ljavax/lang/model/element/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    return-void

    .line 125
    :cond_0
    move-object/from16 v7, p3

    invoke-direct {p0, v7}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenes;->getEnclosingClassName(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object v8

    .line 126
    .local v8, "className":Ljava/lang/String;
    iget-object v0, v6, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenes;->storage:Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;

    invoke-virtual {v0, v8}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->getJaifPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 127
    .local v9, "jaifPath":Ljava/lang/String;
    iget-object v0, v6, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenes;->storage:Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;

    invoke-virtual {v0, v8, v9}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->getAClass(Ljava/lang/String;Ljava/lang/String;)Lscenelib/annotations/el/AClass;

    move-result-object v10

    .line 129
    .local v10, "clazz":Lscenelib/annotations/el/AClass;
    invoke-static/range {p3 .. p3}, Lscenelib/annotations/util/JVMNames;->getJVMMethodName(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object v11

    .line 130
    .local v11, "methodName":Ljava/lang/String;
    iget-object v0, v10, Lscenelib/annotations/el/AClass;->methods:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0, v11}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lscenelib/annotations/el/AMethod;

    .line 132
    .local v12, "method":Lscenelib/annotations/el/AMethod;
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getArguments()Ljava/util/List;

    move-result-object v13

    .line 133
    .local v13, "arguments":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object v3, v9

    move-object v4, v12

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenes;->updateInferredExecutableParameterTypes(Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/lang/String;Lscenelib/annotations/el/AMethod;Ljava/util/List;)V

    .line 134
    return-void
.end method

.method public updateFromObjectCreation(Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 12
    .param p1, "objectCreationNode"    # Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;
    .param p2, "constructorElt"    # Ljavax/lang/model/element/ExecutableElement;
    .param p3, "atf"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 99
    invoke-static {p2}, Lorg/checkerframework/javacutil/ElementUtils;->isElementFromByteCode(Ljavax/lang/model/element/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    return-void

    .line 103
    :cond_0
    invoke-direct {p0, p2}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenes;->getEnclosingClassName(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "className":Ljava/lang/String;
    iget-object v1, p0, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenes;->storage:Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;

    invoke-virtual {v1, v0}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->getJaifPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "jaifPath":Ljava/lang/String;
    iget-object v2, p0, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenes;->storage:Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;

    invoke-virtual {v2, v0, v1}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->getAClass(Ljava/lang/String;Ljava/lang/String;)Lscenelib/annotations/el/AClass;

    move-result-object v8

    .line 106
    .local v8, "clazz":Lscenelib/annotations/el/AClass;
    invoke-static {p2}, Lscenelib/annotations/util/JVMNames;->getJVMMethodName(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object v9

    .line 107
    .local v9, "methodName":Ljava/lang/String;
    iget-object v2, v8, Lscenelib/annotations/el/AClass;->methods:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v2, v9}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lscenelib/annotations/el/AMethod;

    .line 109
    .local v10, "method":Lscenelib/annotations/el/AMethod;
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;->getArguments()Ljava/util/List;

    move-result-object v11

    .line 110
    .local v11, "arguments":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v1

    move-object v6, v10

    move-object v7, v11

    invoke-direct/range {v2 .. v7}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenes;->updateInferredExecutableParameterTypes(Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/lang/String;Lscenelib/annotations/el/AMethod;Ljava/util/List;)V

    .line 111
    return-void
.end method

.method public updateFromOverride(Lcom/sun/source/tree/MethodTree;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 21
    .param p1, "methodTree"    # Lcom/sun/source/tree/MethodTree;
    .param p2, "methodElt"    # Ljavax/lang/model/element/ExecutableElement;
    .param p3, "overriddenMethod"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p4, "atf"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 172
    move-object/from16 v0, p0

    move-object/from16 v8, p4

    invoke-static/range {p2 .. p2}, Lorg/checkerframework/javacutil/ElementUtils;->isElementFromByteCode(Ljavax/lang/model/element/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    return-void

    .line 176
    :cond_0
    move-object/from16 v9, p2

    invoke-direct {v0, v9}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenes;->getEnclosingClassName(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object v10

    .line 177
    .local v10, "className":Ljava/lang/String;
    iget-object v1, v0, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenes;->storage:Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;

    invoke-virtual {v1, v10}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->getJaifPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 178
    .local v11, "jaifPath":Ljava/lang/String;
    iget-object v1, v0, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenes;->storage:Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;

    invoke-virtual {v1, v10, v11}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->getAClass(Ljava/lang/String;Ljava/lang/String;)Lscenelib/annotations/el/AClass;

    move-result-object v12

    .line 179
    .local v12, "clazz":Lscenelib/annotations/el/AClass;
    invoke-static/range {p2 .. p2}, Lscenelib/annotations/util/JVMNames;->getJVMMethodName(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object v13

    .line 180
    .local v13, "methodName":Ljava/lang/String;
    iget-object v1, v12, Lscenelib/annotations/el/AClass;->methods:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v1, v13}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lscenelib/annotations/el/AMethod;

    .line 182
    .local v14, "method":Lscenelib/annotations/el/AMethod;
    const/4 v1, 0x0

    move v15, v1

    .local v15, "i":I
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v15, v1, :cond_1

    .line 183
    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljavax/lang/model/element/VariableElement;

    .line 184
    .local v7, "ve":Ljavax/lang/model/element/VariableElement;
    invoke-virtual {v8, v7}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v16

    .line 186
    .local v16, "paramATM":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual/range {p3 .. p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 187
    .local v17, "argATM":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v1, v14, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lscenelib/annotations/el/AField;

    .line 188
    .local v6, "param":Lscenelib/annotations/el/AField;
    iget-object v1, v0, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenes;->storage:Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;

    iget-object v2, v6, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    sget-object v18, Lorg/checkerframework/framework/qual/TypeUseLocation;->PARAMETER:Lorg/checkerframework/framework/qual/TypeUseLocation;

    move-object/from16 v3, p4

    move-object v4, v11

    move-object/from16 v5, v17

    move-object/from16 v19, v6

    .end local v6    # "param":Lscenelib/annotations/el/AField;
    .local v19, "param":Lscenelib/annotations/el/AField;
    move-object/from16 v6, v16

    move-object/from16 v20, v7

    .end local v7    # "ve":Ljavax/lang/model/element/VariableElement;
    .local v20, "ve":Ljavax/lang/model/element/VariableElement;
    move-object/from16 v7, v18

    invoke-virtual/range {v1 .. v7}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->updateAnnotationSetInScene(Lscenelib/annotations/el/ATypeElement;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/lang/String;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;)V

    .line 182
    .end local v16    # "paramATM":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v17    # "argATM":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v19    # "param":Lscenelib/annotations/el/AField;
    .end local v20    # "ve":Ljavax/lang/model/element/VariableElement;
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 192
    .end local v15    # "i":I
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v15

    .line 193
    .local v15, "argADT":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    if-eqz v15, :cond_2

    .line 194
    move-object/from16 v7, p1

    invoke-virtual {v8, v7}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/MethodTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v16

    .line 195
    .restart local v16    # "paramATM":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-eqz v16, :cond_2

    .line 196
    iget-object v6, v14, Lscenelib/annotations/el/AMethod;->receiver:Lscenelib/annotations/el/AField;

    .line 197
    .local v6, "receiver":Lscenelib/annotations/el/AField;
    iget-object v1, v0, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenes;->storage:Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;

    iget-object v2, v6, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    sget-object v17, Lorg/checkerframework/framework/qual/TypeUseLocation;->RECEIVER:Lorg/checkerframework/framework/qual/TypeUseLocation;

    move-object/from16 v3, p4

    move-object v4, v11

    move-object v5, v15

    move-object/from16 v18, v6

    .end local v6    # "receiver":Lscenelib/annotations/el/AField;
    .local v18, "receiver":Lscenelib/annotations/el/AField;
    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-virtual/range {v1 .. v7}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->updateAnnotationSetInScene(Lscenelib/annotations/el/ATypeElement;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/lang/String;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;)V

    .line 201
    .end local v16    # "paramATM":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v18    # "receiver":Lscenelib/annotations/el/AField;
    :cond_2
    return-void
.end method

.method public updateFromReturn(Lorg/checkerframework/dataflow/cfg/node/ReturnNode;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/source/tree/MethodTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 17
    .param p1, "retNode"    # Lorg/checkerframework/dataflow/cfg/node/ReturnNode;
    .param p2, "classSymbol"    # Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    .param p3, "methodTree"    # Lcom/sun/source/tree/MethodTree;
    .param p4, "atf"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 286
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v10, p4

    if-eqz v2, :cond_2

    .line 288
    invoke-static/range {p3 .. p3}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/MethodTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v3

    .line 287
    invoke-static {v3}, Lorg/checkerframework/javacutil/ElementUtils;->isElementFromByteCode(Ljavax/lang/model/element/Element;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    if-nez v1, :cond_1

    .line 295
    return-void

    .line 297
    :cond_1
    iget-object v3, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flatname:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v3}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v11

    .line 299
    .local v11, "className":Ljava/lang/String;
    iget-object v3, v0, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenes;->storage:Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;

    invoke-virtual {v3, v11}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->getJaifPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 300
    .local v12, "jaifPath":Ljava/lang/String;
    iget-object v3, v0, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenes;->storage:Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;

    invoke-virtual {v3, v11, v12}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->getAClass(Ljava/lang/String;Ljava/lang/String;)Lscenelib/annotations/el/AClass;

    move-result-object v13

    .line 302
    .local v13, "clazz":Lscenelib/annotations/el/AClass;
    iget-object v3, v13, Lscenelib/annotations/el/AClass;->methods:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static/range {p3 .. p3}, Lscenelib/annotations/util/JVMNames;->getJVMMethodName(Lcom/sun/source/tree/MethodTree;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lscenelib/annotations/el/AMethod;

    .line 304
    .local v14, "method":Lscenelib/annotations/el/AMethod;
    invoke-virtual {v10, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/MethodTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v15

    .line 306
    .local v15, "lhsATM":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/dataflow/cfg/node/ReturnNode;->getTree()Lcom/sun/source/tree/ReturnTree;

    move-result-object v3

    invoke-interface {v3}, Lcom/sun/source/tree/ReturnTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v3

    invoke-virtual {v10, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v16

    .line 307
    .local v16, "rhsATM":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v3, v0, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenes;->storage:Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;

    iget-object v4, v14, Lscenelib/annotations/el/AMethod;->returnType:Lscenelib/annotations/el/ATypeElement;

    sget-object v9, Lorg/checkerframework/framework/qual/TypeUseLocation;->RETURN:Lorg/checkerframework/framework/qual/TypeUseLocation;

    move-object/from16 v5, p4

    move-object v6, v12

    move-object/from16 v7, v16

    move-object v8, v15

    invoke-virtual/range {v3 .. v9}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInferenceScenesStorage;->updateAnnotationSetInScene(Lscenelib/annotations/el/ATypeElement;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljava/lang/String;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;)V

    .line 309
    return-void

    .line 289
    .end local v11    # "className":Ljava/lang/String;
    .end local v12    # "jaifPath":Ljava/lang/String;
    .end local v13    # "clazz":Lscenelib/annotations/el/AClass;
    .end local v14    # "method":Lscenelib/annotations/el/AMethod;
    .end local v15    # "lhsATM":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v16    # "rhsATM":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_2
    :goto_0
    return-void
.end method
