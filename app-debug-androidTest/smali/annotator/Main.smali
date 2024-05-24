.class public Lannotator/Main;
.super Ljava/lang/Object;
.source "Main.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static abbreviate:Z
    .annotation runtime Lorg/checkerframework/org/plumelib/options/Option;
        value = "-a Abbreviate annotation names"
    .end annotation
.end field

.field private static classFilter:Lscenelib/annotations/el/ElementVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscenelib/annotations/el/ElementVisitor<",
            "Ljava/lang/Void;",
            "Lscenelib/annotations/el/AElement;",
            ">;"
        }
    .end annotation
.end field

.field public static comments:Z
    .annotation runtime Lorg/checkerframework/org/plumelib/options/Option;
        value = "-c Insert annotations in comments"
    .end annotation
.end field

.field public static convert_jaifs:Z
    .annotation runtime Lorg/checkerframework/org/plumelib/options/Option;
        value = "Convert JAIFs to AST Path format"
    .end annotation
.end field

.field public static debug:Z
    .annotation runtime Lorg/checkerframework/org/plumelib/options/Option;
        value = "Debug (print debug information)"
    .end annotation
.end field

.field public static help:Z
    .annotation runtime Lorg/checkerframework/org/plumelib/options/Option;
        value = "-h Print usage information and exit"
    .end annotation
.end field

.field public static in_place:Z
    .annotation runtime Lorg/checkerframework/org/plumelib/options/Option;
        value = "-i Overwrite original source files"
    .end annotation
.end field

.field private static javaLangClassPattern:Ljava/util/regex/Pattern;

.field public static nowarn:Z
    .annotation runtime Lorg/checkerframework/org/plumelib/options/Option;
        value = "Suppress warnings about disallowed insertions"
    .end annotation
.end field

.field public static omit_annotation:Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/org/plumelib/options/Option;
        value = "-o Omit given annotation"
    .end annotation
.end field

.field public static outdir:Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/org/plumelib/options/Option;
        value = "-d <directory> Directory in which output files are written"
    .end annotation

    .annotation runtime Lorg/checkerframework/org/plumelib/options/OptionGroup;
        value = "General options"
    .end annotation
.end field

.field public static print_error_stack:Z
    .annotation runtime Lorg/checkerframework/org/plumelib/options/Option;
        value = "Print error stack"
    .end annotation
.end field

.field public static temporaryDebug:Z

.field public static verbose:Z
    .annotation runtime Lorg/checkerframework/org/plumelib/options/Option;
        value = "-v Verbose (print progress information)"
    .end annotation

    .annotation runtime Lorg/checkerframework/org/plumelib/options/OptionGroup;
        value = "Debugging options"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 133
    nop

    .line 138
    const-string v0, "annotated/"

    sput-object v0, Lannotator/Main;->outdir:Ljava/lang/String;

    .line 159
    const/4 v0, 0x0

    sput-boolean v0, Lannotator/Main;->in_place:Z

    .line 163
    const/4 v1, 0x1

    sput-boolean v1, Lannotator/Main;->abbreviate:Z

    .line 166
    sput-boolean v0, Lannotator/Main;->comments:Z

    .line 177
    sput-boolean v0, Lannotator/Main;->convert_jaifs:Z

    .line 180
    sput-boolean v0, Lannotator/Main;->help:Z

    .line 189
    sput-boolean v0, Lannotator/Main;->debug:Z

    .line 192
    sput-boolean v0, Lannotator/Main;->print_error_stack:Z

    .line 195
    sput-boolean v0, Lannotator/Main;->temporaryDebug:Z

    .line 197
    new-instance v0, Lannotator/Main$1;

    invoke-direct {v0}, Lannotator/Main$1;-><init>()V

    sput-object v0, Lannotator/Main;->classFilter:Lscenelib/annotations/el/ElementVisitor;

    .line 1029
    const-string v0, "^java.lang.[A-Za-z0-9_]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lannotator/Main;->javaLangClassPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertInsertion(Ljava/lang/String;Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;Lscenelib/annotations/io/ASTRecord;Lannotator/find/Insertion;Lscenelib/annotations/el/AScene;Lorg/checkerframework/com/google/common/collect/Multimap;)V
    .locals 21
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "tree"    # Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;
    .param p2, "rec"    # Lscenelib/annotations/io/ASTRecord;
    .param p3, "ins"    # Lannotator/find/Insertion;
    .param p4, "scene"    # Lscenelib/annotations/el/AScene;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;",
            "Lscenelib/annotations/io/ASTRecord;",
            "Lannotator/find/Insertion;",
            "Lscenelib/annotations/el/AScene;",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "Lannotator/find/Insertion;",
            "Lscenelib/annotations/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 370
    .local p5, "insertionSources":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;"
    move-object/from16 v1, p1

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-interface {v4, v2}, Lorg/checkerframework/com/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v5

    .line 371
    .local v5, "annos":Ljava/util/Collection;, "Ljava/util/Collection<Lscenelib/annotations/Annotation;>;"
    if-nez v0, :cond_2

    .line 372
    invoke-virtual/range {p3 .. p3}, Lannotator/find/Insertion;->getCriteria()Lannotator/find/Criteria;

    move-result-object v6

    invoke-virtual {v6}, Lannotator/find/Criteria;->isOnPackage()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 373
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lscenelib/annotations/Annotation;

    .line 374
    .local v7, "anno":Lscenelib/annotations/Annotation;
    iget-object v8, v3, Lscenelib/annotations/el/AScene;->packages:Lscenelib/annotations/util/coll/VivifyingMap;

    move-object/from16 v9, p0

    invoke-virtual {v8, v9}, Lscenelib/annotations/util/coll/VivifyingMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lscenelib/annotations/el/AElement;

    iget-object v8, v8, Lscenelib/annotations/el/AElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 375
    .end local v7    # "anno":Lscenelib/annotations/Annotation;
    goto :goto_0

    :cond_0
    move-object/from16 v9, p0

    goto/16 :goto_e

    .line 372
    :cond_1
    move-object/from16 v9, p0

    goto/16 :goto_e

    .line 377
    :cond_2
    move-object/from16 v9, p0

    if-eqz v3, :cond_12

    iget-object v6, v0, Lscenelib/annotations/io/ASTRecord;->className:Ljava/lang/String;

    if-eqz v6, :cond_12

    .line 378
    iget-object v6, v3, Lscenelib/annotations/el/AScene;->classes:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v7, v0, Lscenelib/annotations/io/ASTRecord;->className:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lscenelib/annotations/el/AClass;

    .line 379
    .local v6, "clazz":Lscenelib/annotations/el/AClass;
    const/4 v7, 0x0

    .line 380
    .local v7, "decl":Lscenelib/annotations/el/ADeclaration;
    invoke-virtual/range {p3 .. p3}, Lannotator/find/Insertion;->getCriteria()Lannotator/find/Criteria;

    move-result-object v8

    invoke-virtual {v8}, Lannotator/find/Criteria;->onBoundZero()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 381
    iget-object v8, v0, Lscenelib/annotations/io/ASTRecord;->astPath:Lscenelib/annotations/io/ASTPath;

    invoke-virtual {v8}, Lscenelib/annotations/io/ASTPath;->size()I

    move-result v8

    .line 382
    .local v8, "n":I
    iget-object v10, v0, Lscenelib/annotations/io/ASTRecord;->astPath:Lscenelib/annotations/io/ASTPath;

    add-int/lit8 v11, v8, -0x1

    invoke-virtual {v10, v11}, Lscenelib/annotations/io/ASTPath;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lscenelib/annotations/io/ASTPath$ASTEntry;

    const-string v11, "bound"

    invoke-virtual {v10, v11}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 383
    invoke-static {}, Lscenelib/annotations/io/ASTPath;->empty()Lscenelib/annotations/io/ASTPath;

    move-result-object v10

    .line 384
    .local v10, "astPath":Lscenelib/annotations/io/ASTPath;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v8, :cond_3

    .line 385
    iget-object v13, v0, Lscenelib/annotations/io/ASTRecord;->astPath:Lscenelib/annotations/io/ASTPath;

    invoke-virtual {v13, v12}, Lscenelib/annotations/io/ASTPath;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lscenelib/annotations/io/ASTPath$ASTEntry;

    invoke-virtual {v10, v13}, Lscenelib/annotations/io/ASTPath;->extend(Lscenelib/annotations/io/ASTPath$ASTEntry;)Lscenelib/annotations/io/ASTPath;

    move-result-object v10

    .line 384
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 387
    .end local v12    # "i":I
    :cond_3
    new-instance v12, Lscenelib/annotations/io/ASTPath$ASTEntry;

    sget-object v13, Lcom/sun/source/tree/Tree$Kind;->TYPE_PARAMETER:Lcom/sun/source/tree/Tree$Kind;

    .line 389
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v12, v13, v11, v14}, Lscenelib/annotations/io/ASTPath$ASTEntry;-><init>(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 387
    invoke-virtual {v10, v12}, Lscenelib/annotations/io/ASTPath;->extend(Lscenelib/annotations/io/ASTPath$ASTEntry;)Lscenelib/annotations/io/ASTPath;

    move-result-object v10

    .line 390
    invoke-virtual {v0, v10}, Lscenelib/annotations/io/ASTRecord;->replacePath(Lscenelib/annotations/io/ASTPath;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v0

    move-object v8, v0

    .end local p2    # "rec":Lscenelib/annotations/io/ASTRecord;
    .local v0, "rec":Lscenelib/annotations/io/ASTRecord;
    goto :goto_2

    .line 393
    .end local v0    # "rec":Lscenelib/annotations/io/ASTRecord;
    .end local v8    # "n":I
    .end local v10    # "astPath":Lscenelib/annotations/io/ASTPath;
    .restart local p2    # "rec":Lscenelib/annotations/io/ASTRecord;
    :cond_4
    move-object v8, v0

    .end local p2    # "rec":Lscenelib/annotations/io/ASTRecord;
    .local v8, "rec":Lscenelib/annotations/io/ASTRecord;
    :goto_2
    iget-object v0, v8, Lscenelib/annotations/io/ASTRecord;->methodName:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 394
    iget-object v0, v8, Lscenelib/annotations/io/ASTRecord;->varName:Ljava/lang/String;

    if-nez v0, :cond_5

    move-object v0, v6

    goto :goto_3

    :cond_5
    iget-object v0, v6, Lscenelib/annotations/el/AClass;->fields:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v10, v8, Lscenelib/annotations/io/ASTRecord;->varName:Ljava/lang/String;

    .line 395
    invoke-virtual {v0, v10}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/ADeclaration;

    :goto_3
    move-object v7, v0

    move-object/from16 v19, v6

    goto/16 :goto_9

    .line 397
    :cond_6
    iget-object v0, v6, Lscenelib/annotations/el/AClass;->methods:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v10, v8, Lscenelib/annotations/io/ASTRecord;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v10}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lscenelib/annotations/el/AMethod;

    .line 398
    .local v10, "meth":Lscenelib/annotations/el/AMethod;
    iget-object v0, v8, Lscenelib/annotations/io/ASTRecord;->varName:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 399
    move-object v7, v10

    move-object/from16 v19, v6

    goto/16 :goto_9

    .line 402
    :cond_7
    :try_start_0
    iget-object v0, v8, Lscenelib/annotations/io/ASTRecord;->varName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 403
    .local v0, "i":I
    if-gez v0, :cond_8

    iget-object v11, v10, Lscenelib/annotations/el/AMethod;->receiver:Lscenelib/annotations/el/AField;

    goto :goto_4

    :cond_8
    iget-object v11, v10, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 404
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lscenelib/annotations/el/ADeclaration;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    move-object v7, v11

    .line 450
    .end local v0    # "i":I
    move-object/from16 v19, v6

    goto/16 :goto_9

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {v1, v8}, Lscenelib/annotations/io/ASTIndex;->getTreePath(Lcom/sun/source/tree/CompilationUnitTree;Lscenelib/annotations/io/ASTRecord;)Lcom/sun/source/util/TreePath;

    move-result-object v11

    .line 407
    .local v11, "path":Lcom/sun/source/util/TreePath;
    const/4 v12, 0x0

    .line 408
    .local v12, "varTree":Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;
    const/4 v13, 0x0

    .line 409
    .local v13, "methTree":Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;
    const/4 v14, 0x0

    .line 411
    .local v14, "classTree":Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;
    :goto_5
    if-eqz v11, :cond_9

    .line 412
    invoke-virtual {v11}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v15

    .line 413
    .local v15, "leaf":Lcom/sun/source/tree/Tree;
    sget-object v16, Lannotator/Main$4;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {v15}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_0

    .line 426
    invoke-virtual {v11}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v11

    goto :goto_6

    .line 424
    :pswitch_0
    goto :goto_7

    .line 418
    :pswitch_1
    move-object v13, v15

    check-cast v13, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 419
    goto :goto_6

    .line 415
    :pswitch_2
    move-object v12, v15

    check-cast v12, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    .line 416
    nop

    .line 428
    .end local v15    # "leaf":Lcom/sun/source/tree/Tree;
    :goto_6
    goto :goto_5

    .line 429
    :cond_9
    :goto_7
    if-eqz v11, :cond_c

    .line 430
    invoke-virtual {v11}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v15

    .line 431
    .restart local v15    # "leaf":Lcom/sun/source/tree/Tree;
    move-object/from16 p2, v0

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .local p2, "e":Ljava/lang/NumberFormatException;
    invoke-interface {v15}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    .line 432
    .local v0, "kind":Lcom/sun/source/tree/Tree$Kind;
    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v3, :cond_a

    .line 433
    move-object v3, v15

    check-cast v3, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 434
    .end local v13    # "methTree":Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;
    .local v3, "methTree":Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;
    iget-object v13, v8, Lscenelib/annotations/io/ASTRecord;->varName:Ljava/lang/String;

    invoke-static {v11, v12, v13}, Lannotator/scanner/LocalVariableScanner;->indexOfVarTree(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;Ljava/lang/String;)I

    move-result v13

    .line 436
    .local v13, "i":I
    invoke-virtual {v3}, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->getStartPosition()I

    move-result v16

    .line 437
    .local v16, "m":I
    invoke-virtual {v12}, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->getStartPosition()I

    move-result v17

    .line 438
    .local v17, "a":I
    move-object/from16 v18, v3

    .end local v3    # "methTree":Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;
    .local v18, "methTree":Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;
    iget-object v3, v1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->endPositions:Lcom/sun/tools/javac/tree/EndPosTable;

    invoke-virtual {v12, v3}, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->getEndPosition(Lcom/sun/tools/javac/tree/EndPosTable;)I

    move-result v3

    .line 439
    .local v3, "b":I
    move-object/from16 v19, v6

    .end local v6    # "clazz":Lscenelib/annotations/el/AClass;
    .local v19, "clazz":Lscenelib/annotations/el/AClass;
    new-instance v6, Lscenelib/annotations/el/LocalLocation;

    move-object/from16 v20, v7

    .end local v7    # "decl":Lscenelib/annotations/el/ADeclaration;
    .local v20, "decl":Lscenelib/annotations/el/ADeclaration;
    sub-int v7, v17, v16

    sub-int v9, v3, v17

    invoke-direct {v6, v13, v7, v9}, Lscenelib/annotations/el/LocalLocation;-><init>(III)V

    .line 440
    .local v6, "loc":Lscenelib/annotations/el/LocalLocation;
    iget-object v7, v10, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v7, v7, Lscenelib/annotations/el/ABlock;->locals:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v7, v6}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lscenelib/annotations/el/ADeclaration;

    .line 441
    .end local v20    # "decl":Lscenelib/annotations/el/ADeclaration;
    .restart local v7    # "decl":Lscenelib/annotations/el/ADeclaration;
    goto :goto_9

    .line 443
    .end local v3    # "b":I
    .end local v16    # "m":I
    .end local v17    # "a":I
    .end local v18    # "methTree":Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;
    .end local v19    # "clazz":Lscenelib/annotations/el/AClass;
    .local v6, "clazz":Lscenelib/annotations/el/AClass;
    .local v13, "methTree":Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;
    :cond_a
    move-object/from16 v19, v6

    move-object/from16 v20, v7

    .end local v6    # "clazz":Lscenelib/annotations/el/AClass;
    .end local v7    # "decl":Lscenelib/annotations/el/ADeclaration;
    .restart local v19    # "clazz":Lscenelib/annotations/el/AClass;
    .restart local v20    # "decl":Lscenelib/annotations/el/ADeclaration;
    invoke-static {v0}, Lscenelib/annotations/io/ASTPath;->isClassEquiv(Lcom/sun/source/tree/Tree$Kind;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 444
    move-object v3, v15

    check-cast v3, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 446
    .end local v14    # "classTree":Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;
    .local v3, "classTree":Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;
    goto :goto_8

    .line 448
    .end local v3    # "classTree":Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;
    .restart local v14    # "classTree":Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;
    :cond_b
    invoke-virtual {v11}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v11

    .line 449
    .end local v0    # "kind":Lcom/sun/source/tree/Tree$Kind;
    .end local v15    # "leaf":Lcom/sun/source/tree/Tree;
    move-object/from16 v9, p0

    move-object/from16 v0, p2

    move-object/from16 v3, p4

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    goto :goto_7

    .line 429
    .end local v19    # "clazz":Lscenelib/annotations/el/AClass;
    .end local v20    # "decl":Lscenelib/annotations/el/ADeclaration;
    .end local p2    # "e":Ljava/lang/NumberFormatException;
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v6    # "clazz":Lscenelib/annotations/el/AClass;
    .restart local v7    # "decl":Lscenelib/annotations/el/ADeclaration;
    :cond_c
    move-object/from16 p2, v0

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    .line 453
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "clazz":Lscenelib/annotations/el/AClass;
    .end local v7    # "decl":Lscenelib/annotations/el/ADeclaration;
    .end local v10    # "meth":Lscenelib/annotations/el/AMethod;
    .end local v11    # "path":Lcom/sun/source/util/TreePath;
    .end local v12    # "varTree":Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;
    .end local v13    # "methTree":Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;
    .end local v14    # "classTree":Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;
    .restart local v19    # "clazz":Lscenelib/annotations/el/AClass;
    .restart local v20    # "decl":Lscenelib/annotations/el/ADeclaration;
    :goto_8
    move-object/from16 v7, v20

    .end local v20    # "decl":Lscenelib/annotations/el/ADeclaration;
    .restart local v7    # "decl":Lscenelib/annotations/el/ADeclaration;
    :goto_9
    if-eqz v7, :cond_11

    .line 455
    iget-object v0, v8, Lscenelib/annotations/io/ASTRecord;->astPath:Lscenelib/annotations/io/ASTPath;

    invoke-virtual {v0}, Lscenelib/annotations/io/ASTPath;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 456
    move-object v0, v7

    .local v0, "el":Lscenelib/annotations/el/AElement;
    goto :goto_a

    .line 457
    .end local v0    # "el":Lscenelib/annotations/el/AElement;
    :cond_d
    invoke-virtual/range {p3 .. p3}, Lannotator/find/Insertion;->getKind()Lannotator/find/Insertion$Kind;

    move-result-object v0

    sget-object v3, Lannotator/find/Insertion$Kind;->CAST:Lannotator/find/Insertion$Kind;

    if-ne v0, v3, :cond_e

    .line 458
    iget-object v0, v7, Lscenelib/annotations/el/ADeclaration;->insertTypecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v3, v8, Lscenelib/annotations/io/ASTRecord;->astPath:Lscenelib/annotations/io/ASTPath;

    .line 459
    invoke-virtual {v0, v3}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/ATypeElementWithType;

    .line 460
    .local v0, "elem":Lscenelib/annotations/el/ATypeElementWithType;
    move-object v3, v2

    check-cast v3, Lannotator/find/CastInsertion;

    invoke-virtual {v3}, Lannotator/find/CastInsertion;->getType()Lscenelib/type/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Lscenelib/annotations/el/ATypeElementWithType;->setType(Lscenelib/type/Type;)V

    .line 461
    nop

    .line 462
    .local v0, "el":Lscenelib/annotations/el/AElement;
    goto :goto_a

    .line 463
    .end local v0    # "el":Lscenelib/annotations/el/AElement;
    :cond_e
    iget-object v0, v7, Lscenelib/annotations/el/ADeclaration;->insertAnnotations:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v3, v8, Lscenelib/annotations/io/ASTRecord;->astPath:Lscenelib/annotations/io/ASTPath;

    invoke-virtual {v0, v3}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/AElement;

    .line 465
    .restart local v0    # "el":Lscenelib/annotations/el/AElement;
    :goto_a
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lscenelib/annotations/Annotation;

    .line 466
    .local v6, "anno":Lscenelib/annotations/Annotation;
    iget-object v9, v0, Lscenelib/annotations/el/AElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v9, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 467
    .end local v6    # "anno":Lscenelib/annotations/Annotation;
    goto :goto_b

    .line 468
    :cond_f
    instance-of v3, v2, Lannotator/find/TypedInsertion;

    if-eqz v3, :cond_11

    .line 469
    move-object v3, v2

    check-cast v3, Lannotator/find/TypedInsertion;

    .line 470
    .local v3, "ti":Lannotator/find/TypedInsertion;
    iget-object v6, v8, Lscenelib/annotations/io/ASTRecord;->astPath:Lscenelib/annotations/io/ASTPath;

    invoke-virtual {v6}, Lscenelib/annotations/io/ASTPath;->isEmpty()Z

    .line 473
    invoke-virtual {v3}, Lannotator/find/TypedInsertion;->getInnerTypeInsertions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lannotator/find/Insertion;

    .line 474
    .local v9, "inner":Lannotator/find/Insertion;
    invoke-static {v1, v8}, Lscenelib/annotations/io/ASTIndex;->getNode(Lcom/sun/source/tree/CompilationUnitTree;Lscenelib/annotations/io/ASTRecord;)Lcom/sun/source/tree/Tree;

    move-result-object v10

    .line 475
    .local v10, "t":Lcom/sun/source/tree/Tree;
    if-eqz v10, :cond_10

    .line 476
    nop

    .line 477
    invoke-virtual {v3}, Lannotator/find/TypedInsertion;->getType()Lscenelib/type/Type;

    move-result-object v11

    .line 476
    invoke-static {v10, v8, v7, v11, v9}, Lannotator/Main;->findInnerTypeElement(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lscenelib/annotations/el/ADeclaration;Lscenelib/type/Type;Lannotator/find/Insertion;)Lscenelib/annotations/el/ATypeElement;

    move-result-object v11

    .line 478
    .local v11, "elem":Lscenelib/annotations/el/ATypeElement;
    invoke-interface {v4, v9}, Lorg/checkerframework/com/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lscenelib/annotations/Annotation;

    .line 479
    .local v13, "a":Lscenelib/annotations/Annotation;
    iget-object v14, v11, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 480
    .end local v13    # "a":Lscenelib/annotations/Annotation;
    goto :goto_d

    .line 482
    .end local v9    # "inner":Lannotator/find/Insertion;
    .end local v10    # "t":Lcom/sun/source/tree/Tree;
    .end local v11    # "elem":Lscenelib/annotations/el/ATypeElement;
    :cond_10
    goto :goto_c

    .line 486
    .end local v0    # "el":Lscenelib/annotations/el/AElement;
    .end local v3    # "ti":Lannotator/find/TypedInsertion;
    .end local v7    # "decl":Lscenelib/annotations/el/ADeclaration;
    .end local v19    # "clazz":Lscenelib/annotations/el/AClass;
    :cond_11
    move-object v0, v8

    .end local v8    # "rec":Lscenelib/annotations/io/ASTRecord;
    .local v0, "rec":Lscenelib/annotations/io/ASTRecord;
    :cond_12
    :goto_e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static filteredScene(Lscenelib/annotations/el/AScene;)Lscenelib/annotations/el/AScene;
    .locals 7
    .param p0, "scene"    # Lscenelib/annotations/el/AScene;

    .line 310
    new-instance v0, Lscenelib/annotations/el/AScene;

    invoke-direct {v0}, Lscenelib/annotations/el/AScene;-><init>()V

    .line 311
    .local v0, "filtered":Lscenelib/annotations/el/AScene;
    iget-object v1, v0, Lscenelib/annotations/el/AScene;->packages:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v2, p0, Lscenelib/annotations/el/AScene;->packages:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v1, v2}, Lscenelib/annotations/util/coll/VivifyingMap;->putAll(Ljava/util/Map;)V

    .line 312
    iget-object v1, v0, Lscenelib/annotations/el/AScene;->imports:Ljava/util/Map;

    iget-object v2, p0, Lscenelib/annotations/el/AScene;->imports:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 313
    iget-object v1, p0, Lscenelib/annotations/el/AScene;->classes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v1}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 314
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/el/AClass;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 315
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscenelib/annotations/el/AClass;

    .line 316
    .local v4, "clazz0":Lscenelib/annotations/el/AClass;
    iget-object v5, v0, Lscenelib/annotations/el/AScene;->classes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v5, v3}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lscenelib/annotations/el/AClass;

    .line 317
    .local v5, "clazz1":Lscenelib/annotations/el/AClass;
    sget-object v6, Lannotator/Main;->classFilter:Lscenelib/annotations/el/ElementVisitor;

    invoke-virtual {v4, v6, v5}, Lscenelib/annotations/el/AClass;->accept(Lscenelib/annotations/el/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/el/AClass;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "clazz0":Lscenelib/annotations/el/AClass;
    .end local v5    # "clazz1":Lscenelib/annotations/el/AClass;
    goto :goto_0

    .line 319
    :cond_0
    invoke-virtual {v0}, Lscenelib/annotations/el/AScene;->prune()V

    .line 320
    return-object v0
.end method

.method private static findInnerTypeElement(Lcom/sun/source/tree/Tree;Lscenelib/annotations/io/ASTRecord;Lscenelib/annotations/el/ADeclaration;Lscenelib/type/Type;Lannotator/find/Insertion;)Lscenelib/annotations/el/ATypeElement;
    .locals 10
    .param p0, "t"    # Lcom/sun/source/tree/Tree;
    .param p1, "rec"    # Lscenelib/annotations/io/ASTRecord;
    .param p2, "decl"    # Lscenelib/annotations/el/ADeclaration;
    .param p3, "type"    # Lscenelib/type/Type;
    .param p4, "ins"    # Lannotator/find/Insertion;

    .line 325
    iget-object v0, p1, Lscenelib/annotations/io/ASTRecord;->astPath:Lscenelib/annotations/io/ASTPath;

    .line 326
    .local v0, "astPath":Lscenelib/annotations/io/ASTPath;
    nop

    .line 327
    invoke-virtual {p4}, Lannotator/find/Insertion;->getCriteria()Lannotator/find/Criteria;

    move-result-object v1

    invoke-virtual {v1}, Lannotator/find/Criteria;->getGenericArrayLocation()Lannotator/find/GenericArrayLocationCriterion;

    move-result-object v1

    .line 328
    .local v1, "galc":Lannotator/find/GenericArrayLocationCriterion;
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 329
    invoke-virtual {v1}, Lannotator/find/GenericArrayLocationCriterion;->getLocation()Ljava/util/List;

    move-result-object v2

    .line 331
    .local v2, "tpes":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    .line 332
    .local v4, "tpe":Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;
    sget-object v5, Lannotator/Main$4;->$SwitchMap$com$sun$tools$javac$code$TypeAnnotationPosition$TypePathEntryKind:[I

    iget-object v6, v4, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    invoke-virtual {v6}, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 359
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown type tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 355
    :pswitch_0
    new-instance v5, Lscenelib/annotations/io/ASTPath$ASTEntry;

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->UNBOUNDED_WILDCARD:Lcom/sun/source/tree/Tree$Kind;

    const-string v7, "bound"

    invoke-direct {v5, v6, v7}, Lscenelib/annotations/io/ASTPath$ASTEntry;-><init>(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 357
    .local v5, "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto :goto_1

    .line 351
    .end local v5    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :pswitch_1
    new-instance v5, Lscenelib/annotations/io/ASTPath$ASTEntry;

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->PARAMETERIZED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    iget v7, v4, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->arg:I

    .line 352
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "typeArgument"

    invoke-direct {v5, v6, v8, v7}, Lscenelib/annotations/io/ASTPath$ASTEntry;-><init>(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 353
    .restart local v5    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto :goto_1

    .line 347
    .end local v5    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :pswitch_2
    new-instance v5, Lscenelib/annotations/io/ASTPath$ASTEntry;

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    const-string v7, "expression"

    invoke-direct {v5, v6, v7}, Lscenelib/annotations/io/ASTPath$ASTEntry;-><init>(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 349
    .restart local v5    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    goto :goto_1

    .line 334
    .end local v5    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :pswitch_3
    invoke-virtual {v0}, Lscenelib/annotations/io/ASTPath;->isEmpty()Z

    move-result v5

    const-string v6, "type"

    if-nez v5, :cond_0

    .line 335
    invoke-virtual {v0}, Lscenelib/annotations/io/ASTPath;->getLast()Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v5

    .line 336
    .restart local v5    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    invoke-virtual {v5}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getTreeKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v7

    sget-object v8, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    if-ne v7, v8, :cond_0

    .line 337
    invoke-virtual {v5, v6}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 338
    new-instance v7, Lscenelib/annotations/io/ASTPath$ASTEntry;

    sget-object v8, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    .line 339
    invoke-virtual {v5}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v6, v9}, Lscenelib/annotations/io/ASTPath$ASTEntry;-><init>(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;Ljava/lang/Integer;)V

    move-object v5, v7

    .line 340
    goto :goto_1

    .line 343
    .end local v5    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_0
    new-instance v5, Lscenelib/annotations/io/ASTPath$ASTEntry;

    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->ARRAY_TYPE:Lcom/sun/source/tree/Tree$Kind;

    invoke-direct {v5, v7, v6}, Lscenelib/annotations/io/ASTPath$ASTEntry;-><init>(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    .line 345
    .restart local v5    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    nop

    .line 361
    :goto_1
    invoke-virtual {v0, v5}, Lscenelib/annotations/io/ASTPath;->extend(Lscenelib/annotations/io/ASTPath$ASTEntry;)Lscenelib/annotations/io/ASTPath;

    move-result-object v0

    .line 362
    .end local v4    # "tpe":Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;
    goto/16 :goto_0

    .line 364
    .end local v5    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_1
    iget-object v3, p2, Lscenelib/annotations/el/ADeclaration;->insertAnnotations:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v3, v0}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/ATypeElement;

    return-object v3

    .line 328
    .end local v2    # "tpes":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    :cond_2
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static first80(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 1109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1110
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1111
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1114
    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v3, 0x50

    if-ge v2, v3, :cond_4

    .line 1115
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    .line 1116
    add-int/lit8 v1, v1, 0x1

    .line 1117
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1118
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1120
    :cond_1
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1122
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1123
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1125
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1127
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 1128
    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static firstLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 1090
    nop

    :goto_0
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1091
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1093
    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1094
    .local v0, "newlineIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1095
    return-object p0

    .line 1097
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static isJavaLangClass(Ljava/lang/String;)Z
    .locals 2
    .param p0, "classname"    # Ljava/lang/String;

    .line 1036
    sget-object v0, Lannotator/Main;->javaLangClassPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1037
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static leafString(Lcom/sun/source/util/TreePath;)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Lcom/sun/source/util/TreePath;

    .line 1061
    if-nez p0, :cond_0

    .line 1062
    const-string v0, "null"

    return-object v0

    .line 1064
    :cond_0
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-static {v0}, Lannotator/Main;->treeToString(Lcom/sun/source/tree/Tree;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 57
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 507
    sget-boolean v0, Lannotator/Main;->verbose:Z

    if-eqz v0, :cond_0

    .line 508
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Annotation File Utilities v3.6.47"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "insert-annotations-to-source (%s)"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 512
    :cond_0
    new-instance v0, Lorg/checkerframework/org/plumelib/options/Options;

    const-class v1, Lannotator/Main;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Main [options] { jaif-file | java-file | @arg-file } ...\n(Contents of argfiles are expanded into the argument list.)"

    invoke-direct {v0, v2, v1}, Lorg/checkerframework/org/plumelib/options/Options;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v0

    .line 518
    .local v1, "options":Lorg/checkerframework/org/plumelib/options/Options;
    const/4 v2, 0x1

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/sun/tools/javac/main/CommandLine;->parse([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 519
    .local v0, "cl_args":[Ljava/lang/String;
    invoke-virtual {v1, v2, v0}, Lorg/checkerframework/org/plumelib/options/Options;->parse(Z[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 527
    .local v0, "file_args":[Ljava/lang/String;
    goto :goto_0

    .line 520
    .end local v0    # "file_args":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 521
    .local v0, "ex":Ljava/io/IOException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 522
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "(For non-argfile beginning with \"@\", use \"@@\" for initial \"@\"."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 523
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Alternative for filenames: indicate directory, e.g. as \'./@file\'."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 524
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Alternative for flags: use \'=\', as in \'-o=@Deprecated\'.)"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 525
    const/4 v3, 0x0

    .line 526
    .local v3, "file_args":[Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 529
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_0
    new-instance v0, Lscenelib/annotations/io/DebugWriter;

    invoke-direct {v0}, Lscenelib/annotations/io/DebugWriter;-><init>()V

    move-object v4, v0

    .line 530
    .local v4, "dbug":Lscenelib/annotations/io/DebugWriter;
    new-instance v0, Lscenelib/annotations/io/DebugWriter;

    invoke-direct {v0}, Lscenelib/annotations/io/DebugWriter;-><init>()V

    move-object v5, v0

    .line 531
    .local v5, "verb":Lscenelib/annotations/io/DebugWriter;
    invoke-virtual {v4, v5}, Lscenelib/annotations/io/DebugWriter;->or(Lscenelib/annotations/io/DebugWriter;)Lscenelib/annotations/io/DebugWriter;

    move-result-object v6

    .line 532
    .local v6, "both":Lscenelib/annotations/io/DebugWriter;
    sget-boolean v0, Lannotator/Main;->debug:Z

    invoke-virtual {v4, v0}, Lscenelib/annotations/io/DebugWriter;->setEnabled(Z)V

    .line 533
    sget-boolean v0, Lannotator/Main;->verbose:Z

    invoke-virtual {v5, v0}, Lscenelib/annotations/io/DebugWriter;->setEnabled(Z)V

    .line 534
    sget-object v0, Lannotator/find/TreeFinder;->warn:Lscenelib/annotations/io/DebugWriter;

    sget-boolean v7, Lannotator/Main;->nowarn:Z

    xor-int/2addr v7, v2

    invoke-virtual {v0, v7}, Lscenelib/annotations/io/DebugWriter;->setEnabled(Z)V

    .line 535
    sget-object v0, Lannotator/find/TreeFinder;->stak:Lscenelib/annotations/io/DebugWriter;

    sget-boolean v7, Lannotator/Main;->print_error_stack:Z

    invoke-virtual {v0, v7}, Lscenelib/annotations/io/DebugWriter;->setEnabled(Z)V

    .line 536
    sget-object v0, Lannotator/find/TreeFinder;->dbug:Lscenelib/annotations/io/DebugWriter;

    sget-boolean v7, Lannotator/Main;->debug:Z

    invoke-virtual {v0, v7}, Lscenelib/annotations/io/DebugWriter;->setEnabled(Z)V

    .line 537
    sget-object v0, Lannotator/find/Criteria;->dbug:Lscenelib/annotations/io/DebugWriter;

    sget-boolean v7, Lannotator/Main;->debug:Z

    invoke-virtual {v0, v7}, Lscenelib/annotations/io/DebugWriter;->setEnabled(Z)V

    .line 539
    sget-boolean v0, Lannotator/Main;->help:Z

    const/4 v7, 0x0

    if-eqz v0, :cond_1

    .line 540
    invoke-virtual {v1}, Lorg/checkerframework/org/plumelib/options/Options;->printUsage()V

    .line 541
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    .line 544
    :cond_1
    sget-boolean v0, Lannotator/Main;->in_place:Z

    if-eqz v0, :cond_2

    sget-object v0, Lannotator/Main;->outdir:Ljava/lang/String;

    const-string v8, "annotated/"

    if-eq v0, v8, :cond_2

    .line 545
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "The --outdir and --in-place options are mutually exclusive."

    invoke-virtual {v0, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v1}, Lorg/checkerframework/org/plumelib/options/Options;->printUsage()V

    .line 547
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 550
    :cond_2
    array-length v0, v3

    const/4 v8, 0x2

    if-ge v0, v8, :cond_3

    .line 551
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    array-length v9, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "Supplied %d arguments, at least 2 needed%n"

    invoke-virtual {v0, v10, v9}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 552
    invoke-virtual {v1}, Lorg/checkerframework/org/plumelib/options/Options;->printUsage()V

    .line 553
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 557
    :cond_3
    new-instance v0, Lannotator/find/Insertions;

    invoke-direct {v0}, Lannotator/find/Insertions;-><init>()V

    move-object v9, v0

    .line 559
    .local v9, "insertions":Lannotator/find/Insertions;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 562
    .local v10, "javafiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v11, v0

    .line 564
    .local v11, "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v12, v0

    .line 565
    .local v12, "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v13, v0

    .line 570
    .local v13, "scenes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lscenelib/annotations/el/AScene;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v14, v0

    .line 572
    .local v14, "annotationImports":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    sget-boolean v0, Lannotator/Main;->abbreviate:Z

    invoke-static {v0}, Lscenelib/annotations/io/IndexFileParser;->setAbbreviate(Z)V

    .line 573
    array-length v15, v3

    move v8, v7

    :goto_1
    const-string v0, "  %s, isInserted=%s%n"

    if-ge v8, v15, :cond_13

    aget-object v7, v3, v8

    .line 574
    .local v7, "arg":Ljava/lang/String;
    const-string v2, ".java"

    invoke-virtual {v7, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 575
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v20, v1

    move-object/from16 v22, v3

    move-object/from16 v24, v5

    move/from16 v23, v15

    const/4 v5, 0x2

    goto/16 :goto_b

    .line 576
    :cond_4
    const-string v2, ".jaif"

    invoke-virtual {v7, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 577
    const-string v2, ".jann"

    invoke-virtual {v7, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    .line 651
    :cond_5
    new-instance v0, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized file extension: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_6
    :goto_2
    new-instance v2, Lannotator/specification/IndexFileSpecification;

    invoke-direct {v2, v7}, Lannotator/specification/IndexFileSpecification;-><init>(Ljava/lang/String;)V

    .line 580
    .local v2, "spec":Lannotator/specification/IndexFileSpecification;
    :try_start_1
    invoke-virtual {v2}, Lannotator/specification/IndexFileSpecification;->parse()Ljava/util/List;

    move-result-object v20

    move-object/from16 v21, v20

    .line 581
    .local v21, "parsedSpec":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    sget-boolean v20, Lannotator/Main;->temporaryDebug:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lorg/checkerframework/org/plumelib/util/FileIOException; {:try_start_1 .. :try_end_1} :catch_9

    if-eqz v20, :cond_7

    .line 582
    move-object/from16 v20, v1

    .end local v1    # "options":Lorg/checkerframework/org/plumelib/options/Options;
    .local v20, "options":Lorg/checkerframework/org/plumelib/options/Options;
    :try_start_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/checkerframework/org/plumelib/util/FileIOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v22, v3

    .end local v3    # "file_args":[Ljava/lang/String;
    .local v22, "file_args":[Ljava/lang/String;
    :try_start_3
    const-string v3, "parsedSpec (size %d):%n"
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/checkerframework/org/plumelib/util/FileIOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v24, v5

    move/from16 v23, v15

    const/4 v15, 0x1

    .end local v5    # "verb":Lscenelib/annotations/io/DebugWriter;
    .local v24, "verb":Lscenelib/annotations/io/DebugWriter;
    :try_start_4
    new-array v5, v15, [Ljava/lang/Object;

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v17, 0x0

    aput-object v15, v5, v17

    invoke-virtual {v1, v3, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 583
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lannotator/find/Insertion;

    .line 584
    .local v3, "insertion":Lannotator/find/Insertion;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v25, v1

    const/4 v15, 0x2

    new-array v1, v15, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v3, v1, v15

    invoke-virtual {v3}, Lannotator/find/Insertion;->isInserted()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const/16 v19, 0x1

    aput-object v15, v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 585
    move-object/from16 v1, v25

    .end local v3    # "insertion":Lannotator/find/Insertion;
    goto :goto_3

    .line 635
    .end local v21    # "parsedSpec":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .end local v24    # "verb":Lscenelib/annotations/io/DebugWriter;
    .restart local v5    # "verb":Lscenelib/annotations/io/DebugWriter;
    :catch_1
    move-exception v0

    move-object/from16 v24, v5

    move/from16 v23, v15

    const/4 v5, 0x2

    .end local v5    # "verb":Lscenelib/annotations/io/DebugWriter;
    .restart local v24    # "verb":Lscenelib/annotations/io/DebugWriter;
    goto/16 :goto_7

    .line 627
    .end local v24    # "verb":Lscenelib/annotations/io/DebugWriter;
    .restart local v5    # "verb":Lscenelib/annotations/io/DebugWriter;
    :catch_2
    move-exception v0

    move-object/from16 v24, v5

    move/from16 v23, v15

    const/4 v5, 0x2

    .end local v5    # "verb":Lscenelib/annotations/io/DebugWriter;
    .restart local v24    # "verb":Lscenelib/annotations/io/DebugWriter;
    goto/16 :goto_8

    .line 635
    .end local v22    # "file_args":[Ljava/lang/String;
    .end local v24    # "verb":Lscenelib/annotations/io/DebugWriter;
    .local v3, "file_args":[Ljava/lang/String;
    .restart local v5    # "verb":Lscenelib/annotations/io/DebugWriter;
    :catch_3
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v24, v5

    move/from16 v23, v15

    const/4 v5, 0x2

    .end local v3    # "file_args":[Ljava/lang/String;
    .end local v5    # "verb":Lscenelib/annotations/io/DebugWriter;
    .restart local v22    # "file_args":[Ljava/lang/String;
    .restart local v24    # "verb":Lscenelib/annotations/io/DebugWriter;
    goto/16 :goto_7

    .line 627
    .end local v22    # "file_args":[Ljava/lang/String;
    .end local v24    # "verb":Lscenelib/annotations/io/DebugWriter;
    .restart local v3    # "file_args":[Ljava/lang/String;
    .restart local v5    # "verb":Lscenelib/annotations/io/DebugWriter;
    :catch_4
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v24, v5

    move/from16 v23, v15

    const/4 v5, 0x2

    .end local v3    # "file_args":[Ljava/lang/String;
    .end local v5    # "verb":Lscenelib/annotations/io/DebugWriter;
    .restart local v22    # "file_args":[Ljava/lang/String;
    .restart local v24    # "verb":Lscenelib/annotations/io/DebugWriter;
    goto/16 :goto_8

    .line 581
    .end local v20    # "options":Lorg/checkerframework/org/plumelib/options/Options;
    .end local v22    # "file_args":[Ljava/lang/String;
    .end local v24    # "verb":Lscenelib/annotations/io/DebugWriter;
    .restart local v1    # "options":Lorg/checkerframework/org/plumelib/options/Options;
    .restart local v3    # "file_args":[Ljava/lang/String;
    .restart local v5    # "verb":Lscenelib/annotations/io/DebugWriter;
    .restart local v21    # "parsedSpec":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    :cond_7
    move-object/from16 v20, v1

    move-object/from16 v22, v3

    move-object/from16 v24, v5

    move/from16 v23, v15

    .line 587
    .end local v1    # "options":Lorg/checkerframework/org/plumelib/options/Options;
    .end local v3    # "file_args":[Ljava/lang/String;
    .end local v5    # "verb":Lscenelib/annotations/io/DebugWriter;
    .restart local v20    # "options":Lorg/checkerframework/org/plumelib/options/Options;
    .restart local v22    # "file_args":[Ljava/lang/String;
    .restart local v24    # "verb":Lscenelib/annotations/io/DebugWriter;
    :cond_8
    invoke-virtual {v2}, Lannotator/specification/IndexFileSpecification;->getScene()Lscenelib/annotations/el/AScene;

    move-result-object v0

    .line 588
    .local v0, "scene":Lscenelib/annotations/el/AScene;
    new-instance v1, Lannotator/Main$2;

    invoke-direct {v1}, Lannotator/Main$2;-><init>()V

    move-object/from16 v3, v21

    .end local v21    # "parsedSpec":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .local v3, "parsedSpec":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 598
    sget-boolean v1, Lannotator/Main;->convert_jaifs:Z

    if-eqz v1, :cond_b

    .line 599
    invoke-static {v0}, Lannotator/Main;->filteredScene(Lscenelib/annotations/el/AScene;)Lscenelib/annotations/el/AScene;

    move-result-object v1

    invoke-interface {v13, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lannotator/find/Insertion;

    .line 601
    .local v5, "ins":Lannotator/find/Insertion;
    invoke-interface {v12, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    nop

    .end local v5    # "ins":Lannotator/find/Insertion;
    goto :goto_4

    .line 603
    :cond_9
    invoke-interface {v11, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 604
    nop

    .line 605
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap;->create()Lorg/checkerframework/com/google/common/collect/LinkedHashMultimap;

    move-result-object v1

    .line 604
    invoke-interface {v11, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    :cond_a
    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/Multimap;

    invoke-virtual {v2}, Lannotator/specification/IndexFileSpecification;->insertionSources()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/checkerframework/com/google/common/collect/Multimap;->putAll(Lorg/checkerframework/com/google/common/collect/Multimap;)Z

    .line 609
    :cond_b
    const-string v1, "Read %d annotations from %s%n"
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Lorg/checkerframework/org/plumelib/util/FileIOException; {:try_start_4 .. :try_end_4} :catch_7

    const/4 v5, 0x2

    :try_start_5
    new-array v15, v5, [Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lorg/checkerframework/org/plumelib/util/FileIOException; {:try_start_5 .. :try_end_5} :catch_5

    :try_start_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v17, 0x0

    aput-object v5, v15, v17

    const/4 v5, 0x1

    aput-object v7, v15, v5

    invoke-virtual {v6, v1, v15}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 610
    sget-object v1, Lannotator/Main;->omit_annotation:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 611
    new-instance v1, Ljava/util/ArrayList;

    .line 612
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 613
    .local v1, "filtered":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lannotator/find/Insertion;

    .line 617
    .local v15, "insertion":Lannotator/find/Insertion;
    move-object/from16 v21, v0

    .end local v0    # "scene":Lscenelib/annotations/el/AScene;
    .local v21, "scene":Lscenelib/annotations/el/AScene;
    sget-object v0, Lannotator/Main;->omit_annotation:Ljava/lang/String;

    move-object/from16 v25, v3

    .end local v3    # "parsedSpec":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .local v25, "parsedSpec":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    invoke-virtual {v15}, Lannotator/find/Insertion;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 618
    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    .end local v15    # "insertion":Lannotator/find/Insertion;
    :cond_c
    move-object/from16 v0, v21

    move-object/from16 v3, v25

    goto :goto_5

    .line 621
    .end local v21    # "scene":Lscenelib/annotations/el/AScene;
    .end local v25    # "parsedSpec":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .restart local v0    # "scene":Lscenelib/annotations/el/AScene;
    .restart local v3    # "parsedSpec":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    :cond_d
    move-object/from16 v21, v0

    move-object/from16 v25, v3

    .end local v0    # "scene":Lscenelib/annotations/el/AScene;
    .end local v3    # "parsedSpec":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .restart local v21    # "scene":Lscenelib/annotations/el/AScene;
    .restart local v25    # "parsedSpec":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    move-object v0, v1

    .line 622
    .end local v25    # "parsedSpec":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .local v0, "parsedSpec":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    const-string v3, "After filtering: %d annotations from %s%n"
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Lorg/checkerframework/org/plumelib/util/FileIOException; {:try_start_6 .. :try_end_6} :catch_7

    const/4 v5, 0x2

    :try_start_7
    new-array v15, v5, [Ljava/lang/Object;

    .line 623
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    const/16 v16, 0x1

    aput-object v7, v15, v16

    .line 622
    invoke-virtual {v6, v3, v15}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 610
    .end local v1    # "filtered":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .end local v21    # "scene":Lscenelib/annotations/el/AScene;
    .local v0, "scene":Lscenelib/annotations/el/AScene;
    .restart local v3    # "parsedSpec":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    :cond_e
    move-object/from16 v21, v0

    move-object/from16 v25, v3

    const/4 v5, 0x2

    .end local v0    # "scene":Lscenelib/annotations/el/AScene;
    .end local v3    # "parsedSpec":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .restart local v21    # "scene":Lscenelib/annotations/el/AScene;
    .restart local v25    # "parsedSpec":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    move-object/from16 v0, v25

    .line 625
    .end local v25    # "parsedSpec":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .local v0, "parsedSpec":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    :goto_6
    invoke-virtual {v9, v0}, Lannotator/find/Insertions;->addAll(Ljava/util/Collection;)V

    .line 626
    invoke-virtual {v2}, Lannotator/specification/IndexFileSpecification;->annotationImports()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Lorg/checkerframework/org/plumelib/util/FileIOException; {:try_start_7 .. :try_end_7} :catch_5

    .end local v0    # "parsedSpec":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .end local v21    # "scene":Lscenelib/annotations/el/AScene;
    goto/16 :goto_9

    .line 635
    :catch_5
    move-exception v0

    goto :goto_7

    .line 627
    :catch_6
    move-exception v0

    goto/16 :goto_8

    .line 635
    :catch_7
    move-exception v0

    const/4 v5, 0x2

    goto :goto_7

    .line 627
    :catch_8
    move-exception v0

    const/4 v5, 0x2

    goto/16 :goto_8

    .line 635
    .end local v20    # "options":Lorg/checkerframework/org/plumelib/options/Options;
    .end local v22    # "file_args":[Ljava/lang/String;
    .end local v24    # "verb":Lscenelib/annotations/io/DebugWriter;
    .local v1, "options":Lorg/checkerframework/org/plumelib/options/Options;
    .local v3, "file_args":[Ljava/lang/String;
    .local v5, "verb":Lscenelib/annotations/io/DebugWriter;
    :catch_9
    move-exception v0

    move-object/from16 v20, v1

    move-object/from16 v22, v3

    move-object/from16 v24, v5

    move/from16 v23, v15

    const/4 v5, 0x2

    .line 637
    .end local v1    # "options":Lorg/checkerframework/org/plumelib/options/Options;
    .end local v3    # "file_args":[Ljava/lang/String;
    .end local v5    # "verb":Lscenelib/annotations/io/DebugWriter;
    .local v0, "e":Lorg/checkerframework/org/plumelib/util/FileIOException;
    .restart local v20    # "options":Lorg/checkerframework/org/plumelib/options/Options;
    .restart local v22    # "file_args":[Ljava/lang/String;
    .restart local v24    # "verb":Lscenelib/annotations/io/DebugWriter;
    :goto_7
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error while parsing annotation file "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v15, " at line "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v15, v0, Lorg/checkerframework/org/plumelib/util/FileIOException;->lineNumber:I

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v15, ":"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 639
    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/util/FileIOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 640
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v15, 0x9

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/util/FileIOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 642
    :cond_f
    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/util/FileIOException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/util/FileIOException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 643
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v15, 0x9

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/util/FileIOException;->getCause()Ljava/lang/Throwable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 645
    :cond_10
    sget-boolean v1, Lannotator/Main;->print_error_stack:Z

    if-eqz v1, :cond_11

    .line 646
    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/util/FileIOException;->printStackTrace()V

    .line 648
    :cond_11
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_a

    .line 627
    .end local v0    # "e":Lorg/checkerframework/org/plumelib/util/FileIOException;
    .end local v20    # "options":Lorg/checkerframework/org/plumelib/options/Options;
    .end local v22    # "file_args":[Ljava/lang/String;
    .end local v24    # "verb":Lscenelib/annotations/io/DebugWriter;
    .restart local v1    # "options":Lorg/checkerframework/org/plumelib/options/Options;
    .restart local v3    # "file_args":[Ljava/lang/String;
    .restart local v5    # "verb":Lscenelib/annotations/io/DebugWriter;
    :catch_a
    move-exception v0

    move-object/from16 v20, v1

    move-object/from16 v22, v3

    move-object/from16 v24, v5

    move/from16 v23, v15

    const/4 v5, 0x2

    .line 628
    .end local v1    # "options":Lorg/checkerframework/org/plumelib/options/Options;
    .end local v3    # "file_args":[Ljava/lang/String;
    .end local v5    # "verb":Lscenelib/annotations/io/DebugWriter;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v20    # "options":Lorg/checkerframework/org/plumelib/options/Options;
    .restart local v22    # "file_args":[Ljava/lang/String;
    .restart local v24    # "verb":Lscenelib/annotations/io/DebugWriter;
    :goto_8
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 629
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/FileNotFoundException;

    if-eqz v1, :cond_12

    .line 630
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "File not found: "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 631
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 649
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_9
    nop

    .line 650
    .end local v2    # "spec":Lannotator/specification/IndexFileSpecification;
    :goto_a
    nop

    .line 573
    .end local v7    # "arg":Ljava/lang/String;
    :goto_b
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v20

    move-object/from16 v3, v22

    move/from16 v15, v23

    move-object/from16 v5, v24

    const/4 v2, 0x1

    const/4 v7, 0x0

    goto/16 :goto_1

    .line 633
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v2    # "spec":Lannotator/specification/IndexFileSpecification;
    .restart local v7    # "arg":Ljava/lang/String;
    :cond_12
    throw v0

    .line 655
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "spec":Lannotator/specification/IndexFileSpecification;
    .end local v7    # "arg":Ljava/lang/String;
    .end local v20    # "options":Lorg/checkerframework/org/plumelib/options/Options;
    .end local v22    # "file_args":[Ljava/lang/String;
    .end local v24    # "verb":Lscenelib/annotations/io/DebugWriter;
    .restart local v1    # "options":Lorg/checkerframework/org/plumelib/options/Options;
    .restart local v3    # "file_args":[Ljava/lang/String;
    .restart local v5    # "verb":Lscenelib/annotations/io/DebugWriter;
    :cond_13
    move-object/from16 v20, v1

    move-object/from16 v22, v3

    move-object/from16 v24, v5

    .end local v1    # "options":Lorg/checkerframework/org/plumelib/options/Options;
    .end local v3    # "file_args":[Ljava/lang/String;
    .end local v5    # "verb":Lscenelib/annotations/io/DebugWriter;
    .restart local v20    # "options":Lorg/checkerframework/org/plumelib/options/Options;
    .restart local v22    # "file_args":[Ljava/lang/String;
    .restart local v24    # "verb":Lscenelib/annotations/io/DebugWriter;
    invoke-virtual {v4}, Lscenelib/annotations/io/DebugWriter;->isEnabled()Z

    move-result v1

    const-string v2, "In annotator.Main:%n"

    if-eqz v1, :cond_14

    .line 656
    const/4 v1, 0x0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v3}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 657
    nop

    .line 658
    invoke-virtual {v9}, Lannotator/find/Insertions;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 657
    const-string v3, "%d insertions, %d .java files%n"

    invoke-virtual {v4, v3, v1}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 659
    const-string v1, "Insertions:%n"

    const/4 v3, 0x0

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v5}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 660
    invoke-virtual {v9}, Lannotator/find/Insertions;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lannotator/find/Insertion;

    .line 661
    .local v3, "insertion":Lannotator/find/Insertion;
    invoke-virtual {v3}, Lannotator/find/Insertion;->isInserted()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 662
    .end local v3    # "insertion":Lannotator/find/Insertion;
    goto :goto_c

    .line 665
    :cond_14
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 666
    .local v3, "javafilename":Ljava/lang/String;
    const-string v0, "Processing %s%n"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v7, v24

    .end local v24    # "verb":Lscenelib/annotations/io/DebugWriter;
    .local v7, "verb":Lscenelib/annotations/io/DebugWriter;
    invoke-virtual {v7, v0, v5}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 668
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 669
    .local v5, "javafile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v15, ".unannotated"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    .line 670
    .local v8, "unannotated":Ljava/io/File;
    sget-boolean v0, Lannotator/Main;->in_place:Z

    const-string v15, "Failed renaming %s to %s"

    move-object/from16 v16, v1

    const-string v1, "Renaming %s to %s%n"

    if-eqz v0, :cond_16

    .line 675
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 676
    filled-new-array {v8, v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 677
    invoke-virtual {v8, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 678
    .local v0, "success":Z
    if-eqz v0, :cond_15

    goto :goto_e

    .line 679
    :cond_15
    new-instance v1, Ljava/lang/Error;

    filled-new-array {v8, v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v15, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 685
    .end local v0    # "success":Z
    :cond_16
    :goto_e
    const-string v0, "file.separator"

    move-object/from16 v21, v10

    .end local v10    # "javafiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v21, "javafiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 686
    .local v10, "fileSep":Ljava/lang/String;
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 691
    .local v23, "fileLineSep":Ljava/lang/String;
    :try_start_8
    invoke-static {v3}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->inferLineSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Lannotator/Source$CompilerException; {:try_start_8 .. :try_end_8} :catch_1d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1c

    move-object/from16 v23, v0

    .line 692
    :try_start_9
    new-instance v0, Lannotator/Source;

    invoke-direct {v0, v3}, Lannotator/Source;-><init>(Ljava/lang/String;)V

    move-object/from16 v24, v0

    .line 693
    .local v24, "src":Lannotator/Source;
    const-string v0, "Parsed %s%n"
    :try_end_9
    .catch Lannotator/Source$CompilerException; {:try_start_9 .. :try_end_9} :catch_1b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1a

    move-object/from16 v25, v10

    .end local v10    # "fileSep":Ljava/lang/String;
    .local v25, "fileSep":Ljava/lang/String;
    :try_start_a
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v0, v10}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catch Lannotator/Source$CompilerException; {:try_start_a .. :try_end_a} :catch_19
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_18

    .line 700
    nop

    .line 703
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v10, v0

    .line 704
    .local v10, "imports":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 705
    .local v0, "num_insertions":I
    const-string v26, ""

    .line 707
    .local v26, "pkg":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Lannotator/Source;->parse()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v27

    move-object/from16 v28, v26

    move/from16 v26, v0

    .end local v0    # "num_insertions":I
    .local v26, "num_insertions":I
    .local v28, "pkg":Ljava/lang/String;
    :goto_f
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v29, v0

    check-cast v29, Lcom/sun/source/tree/CompilationUnitTree;

    .line 708
    .local v29, "cut":Lcom/sun/source/tree/CompilationUnitTree;
    move-object/from16 v36, v7

    .end local v7    # "verb":Lscenelib/annotations/io/DebugWriter;
    .local v36, "verb":Lscenelib/annotations/io/DebugWriter;
    move-object/from16 v7, v29

    check-cast v7, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 709
    .local v7, "tree":Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;
    invoke-interface/range {v29 .. v29}, Lcom/sun/source/tree/CompilationUnitTree;->getPackageName()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v37

    .line 710
    .local v37, "pkgExp":Lcom/sun/source/tree/ExpressionTree;
    if-nez v37, :cond_17

    const-string v0, ""

    goto :goto_10

    :cond_17
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_10
    move-object/from16 v30, v0

    .line 713
    .end local v28    # "pkg":Ljava/lang/String;
    .local v30, "pkg":Ljava/lang/String;
    new-instance v0, Lannotator/find/TreeFinder;

    invoke-direct {v0, v7}, Lannotator/find/TreeFinder;-><init>(Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;)V

    move-object/from16 v28, v0

    .line 714
    .local v28, "finder":Lannotator/find/TreeFinder;
    nop

    .line 715
    move-object/from16 v39, v1

    move-object/from16 v38, v15

    move-object/from16 v15, v28

    .end local v28    # "finder":Lannotator/find/TreeFinder;
    .local v15, "finder":Lannotator/find/TreeFinder;
    invoke-virtual {v15, v7, v9}, Lannotator/find/TreeFinder;->getPositions(Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;Lannotator/find/Insertions;)Lorg/checkerframework/com/google/common/collect/SetMultimap;

    move-result-object v1

    .line 716
    .local v1, "positions":Lorg/checkerframework/com/google/common/collect/SetMultimap;, "Lorg/checkerframework/com/google/common/collect/SetMultimap<Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/Integer;Lscenelib/annotations/io/ASTPath;>;Lannotator/find/Insertion;>;"
    invoke-virtual {v4}, Lscenelib/annotations/io/DebugWriter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 717
    move-object/from16 v40, v8

    const/4 v8, 0x0

    .end local v8    # "unannotated":Ljava/io/File;
    .local v40, "unannotated":Ljava/io/File;
    new-array v0, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v0}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 718
    nop

    .line 719
    invoke-virtual {v9}, Lannotator/find/Insertions;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 718
    const-string v8, "positions (for %d insertions) = %s%n"

    invoke-virtual {v4, v8, v0}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11

    .line 716
    .end local v40    # "unannotated":Ljava/io/File;
    .restart local v8    # "unannotated":Ljava/io/File;
    :cond_18
    move-object/from16 v40, v8

    .line 722
    .end local v8    # "unannotated":Ljava/io/File;
    .restart local v40    # "unannotated":Ljava/io/File;
    :goto_11
    sget-boolean v0, Lannotator/Main;->convert_jaifs:Z

    if-eqz v0, :cond_1d

    .line 725
    invoke-virtual {v15}, Lannotator/find/TreeFinder;->getPaths()Lorg/checkerframework/com/google/common/collect/SetMultimap;

    move-result-object v0

    .line 727
    .local v0, "astInsertions":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<Lscenelib/annotations/io/ASTRecord;Lannotator/find/Insertion;>;"
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_12
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_1c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Map$Entry;

    .line 728
    .local v28, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/io/ASTRecord;Ljava/util/Collection<Lannotator/find/Insertion;>;>;"
    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v41, v31

    check-cast v41, Lscenelib/annotations/io/ASTRecord;

    .line 729
    .local v41, "rec":Lscenelib/annotations/io/ASTRecord;
    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/util/Collection;

    invoke-interface/range {v31 .. v31}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v42

    :goto_13
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_1b

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v43, v0

    .end local v0    # "astInsertions":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<Lscenelib/annotations/io/ASTRecord;Lannotator/find/Insertion;>;"
    .local v43, "astInsertions":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<Lscenelib/annotations/io/ASTRecord;Lannotator/find/Insertion;>;"
    move-object/from16 v0, v31

    check-cast v0, Lannotator/find/Insertion;

    .line 730
    .local v0, "ins":Lannotator/find/Insertion;
    invoke-virtual {v0}, Lannotator/find/Insertion;->getCriteria()Lannotator/find/Criteria;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lannotator/find/Criteria;->getASTPath()Lscenelib/annotations/io/ASTPath;

    move-result-object v31

    if-eqz v31, :cond_19

    move-object/from16 v0, v43

    goto :goto_13

    .line 731
    :cond_19
    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v44, v2

    move-object/from16 v2, v31

    check-cast v2, Ljava/lang/String;

    .line 732
    .local v2, "arg":Ljava/lang/String;
    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v45, v31

    check-cast v45, Lscenelib/annotations/el/AScene;

    .line 733
    .local v45, "scene":Lscenelib/annotations/el/AScene;
    nop

    .line 734
    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v46, v2

    .end local v2    # "arg":Ljava/lang/String;
    .local v46, "arg":Ljava/lang/String;
    move-object/from16 v2, v31

    check-cast v2, Lorg/checkerframework/com/google/common/collect/Multimap;

    .line 740
    .local v2, "insertionSources":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;"
    invoke-interface {v2, v0}, Lorg/checkerframework/com/google/common/collect/Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1a

    .line 741
    move-object/from16 v31, v7

    move-object/from16 v32, v41

    move-object/from16 v33, v0

    move-object/from16 v34, v45

    move-object/from16 v35, v2

    invoke-static/range {v30 .. v35}, Lannotator/Main;->convertInsertion(Ljava/lang/String;Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;Lscenelib/annotations/io/ASTRecord;Lannotator/find/Insertion;Lscenelib/annotations/el/AScene;Lorg/checkerframework/com/google/common/collect/Multimap;)V

    .line 743
    .end local v0    # "ins":Lannotator/find/Insertion;
    .end local v2    # "insertionSources":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;"
    .end local v45    # "scene":Lscenelib/annotations/el/AScene;
    .end local v46    # "arg":Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, v43

    move-object/from16 v2, v44

    goto :goto_13

    .line 729
    .end local v43    # "astInsertions":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<Lscenelib/annotations/io/ASTRecord;Lannotator/find/Insertion;>;"
    .local v0, "astInsertions":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<Lscenelib/annotations/io/ASTRecord;Lannotator/find/Insertion;>;"
    :cond_1b
    move-object/from16 v43, v0

    move-object/from16 v44, v2

    .line 744
    .end local v0    # "astInsertions":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<Lscenelib/annotations/io/ASTRecord;Lannotator/find/Insertion;>;"
    .end local v28    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/io/ASTRecord;Ljava/util/Collection<Lannotator/find/Insertion;>;>;"
    .end local v41    # "rec":Lscenelib/annotations/io/ASTRecord;
    .restart local v43    # "astInsertions":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<Lscenelib/annotations/io/ASTRecord;Lannotator/find/Insertion;>;"
    goto :goto_12

    .line 745
    .end local v43    # "astInsertions":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<Lscenelib/annotations/io/ASTRecord;Lannotator/find/Insertion;>;"
    .restart local v0    # "astInsertions":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<Lscenelib/annotations/io/ASTRecord;Lannotator/find/Insertion;>;"
    :cond_1c
    move-object/from16 v43, v0

    move-object/from16 v44, v2

    .end local v0    # "astInsertions":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<Lscenelib/annotations/io/ASTRecord;Lannotator/find/Insertion;>;"
    .restart local v43    # "astInsertions":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<Lscenelib/annotations/io/ASTRecord;Lannotator/find/Insertion;>;"
    move-object/from16 v28, v30

    move-object/from16 v7, v36

    move-object/from16 v15, v38

    move-object/from16 v1, v39

    move-object/from16 v8, v40

    goto/16 :goto_f

    .line 749
    .end local v43    # "astInsertions":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<Lscenelib/annotations/io/ASTRecord;Lannotator/find/Insertion;>;"
    :cond_1d
    move-object/from16 v44, v2

    invoke-virtual {v6}, Lscenelib/annotations/io/DebugWriter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 750
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 752
    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/SetMultimap;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 750
    const-string v8, "getPositions returned %d positions in tree for %s%n"

    invoke-virtual {v0, v8, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 755
    :cond_1e
    nop

    .line 756
    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/SetMultimap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 757
    .local v2, "positionKeysUnsorted":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/Integer;Lscenelib/annotations/io/ASTPath;>;>;"
    new-instance v0, Ljava/util/TreeSet;

    new-instance v8, Lannotator/Main$3;

    invoke-direct {v8}, Lannotator/Main$3;-><init>()V

    invoke-direct {v0, v8}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    move-object v8, v0

    .line 771
    .local v8, "positionKeysSorted":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/Integer;Lscenelib/annotations/io/ASTPath;>;>;"
    invoke-interface {v8, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 772
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_14
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v31, v2

    .end local v2    # "positionKeysUnsorted":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/Integer;Lscenelib/annotations/io/ASTPath;>;>;"
    .local v31, "positionKeysUnsorted":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/Integer;Lscenelib/annotations/io/ASTPath;>;>;"
    move-object v2, v0

    check-cast v2, Lorg/checkerframework/org/plumelib/util/Pair;

    .line 773
    .local v2, "pair":Lorg/checkerframework/org/plumelib/util/Pair;, "Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/Integer;Lscenelib/annotations/io/ASTPath;>;"
    const/4 v0, 0x0

    .line 774
    .local v0, "receiverInserted":Z
    const/16 v32, 0x0

    .line 775
    .local v32, "newInserted":Z
    const/16 v33, 0x0

    .line 776
    .local v33, "constructorInserted":Z
    new-instance v34, Ljava/util/TreeSet;

    invoke-direct/range {v34 .. v34}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v35, v34

    .line 777
    .local v35, "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move/from16 v34, v0

    .end local v0    # "receiverInserted":Z
    .local v34, "receiverInserted":Z
    new-instance v0, Ljava/util/ArrayList;

    move-object/from16 v41, v6

    .end local v6    # "both":Lscenelib/annotations/io/DebugWriter;
    .local v41, "both":Lscenelib/annotations/io/DebugWriter;
    invoke-interface {v1, v2}, Lorg/checkerframework/com/google/common/collect/SetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v6, v0

    .line 778
    .local v6, "toInsertList":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 779
    iget-object v0, v2, Lorg/checkerframework/org/plumelib/util/Pair;->a:Ljava/lang/Object;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v42, v1

    .end local v1    # "positions":Lorg/checkerframework/com/google/common/collect/SetMultimap;, "Lorg/checkerframework/com/google/common/collect/SetMultimap<Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/Integer;Lscenelib/annotations/io/ASTPath;>;Lannotator/find/Insertion;>;"
    .local v42, "positions":Lorg/checkerframework/com/google/common/collect/SetMultimap;, "Lorg/checkerframework/com/google/common/collect/SetMultimap<Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/Integer;Lscenelib/annotations/io/ASTPath;>;Lannotator/find/Insertion;>;"
    const-string v1, "insertion pos: %d%n"

    invoke-virtual {v4, v1, v0}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 780
    iget-object v0, v2, Lorg/checkerframework/org/plumelib/util/Pair;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_3e

    .line 782
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object/from16 v43, v7

    move-object/from16 v45, v8

    move/from16 v8, v32

    move/from16 v7, v34

    .end local v32    # "newInserted":Z
    .end local v34    # "receiverInserted":Z
    .local v7, "receiverInserted":Z
    .local v8, "newInserted":Z
    .local v43, "tree":Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;
    .local v45, "positionKeysSorted":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/Integer;Lscenelib/annotations/io/ASTPath;>;>;"
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v52, v1

    move-object v1, v0

    check-cast v1, Lannotator/find/Insertion;

    .line 784
    .local v1, "iToInsert":Lannotator/find/Insertion;
    const-string v0, ""

    .line 785
    .local v0, "trailingWhitespace":Ljava/lang/String;
    const/16 v32, 0x0

    .line 786
    .local v32, "gotSeparateLine":Z
    move-object/from16 v34, v0

    .end local v0    # "trailingWhitespace":Ljava/lang/String;
    .local v34, "trailingWhitespace":Ljava/lang/String;
    iget-object v0, v2, Lorg/checkerframework/org/plumelib/util/Pair;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    move-object/from16 v53, v9

    .end local v9    # "insertions":Lannotator/find/Insertions;
    .local v53, "insertions":Lannotator/find/Insertions;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 787
    .local v9, "pos":I
    invoke-virtual {v1}, Lannotator/find/Insertion;->isSeparateLine()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 789
    const/4 v0, 0x0

    .line 790
    .local v0, "indentation":I
    :goto_16
    sub-int v46, v9, v0

    if-eqz v46, :cond_20

    sub-int v46, v9, v0

    move-object/from16 v54, v11

    const/16 v19, 0x1

    .end local v11    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .local v54, "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    add-int/lit8 v11, v46, -0x1

    .line 792
    move-object/from16 v55, v12

    move-object/from16 v12, v24

    .end local v24    # "src":Lannotator/Source;
    .local v12, "src":Lannotator/Source;
    .local v55, "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    invoke-virtual {v12, v11}, Lannotator/Source;->charAt(I)C

    move-result v11

    move-object/from16 v24, v15

    .end local v15    # "finder":Lannotator/find/TreeFinder;
    .local v24, "finder":Lannotator/find/TreeFinder;
    const/16 v15, 0x20

    if-eq v11, v15, :cond_1f

    sub-int v11, v9, v0

    add-int/lit8 v11, v11, -0x1

    .line 793
    invoke-virtual {v12, v11}, Lannotator/Source;->charAt(I)C

    move-result v11

    const/16 v15, 0x9

    if-ne v11, v15, :cond_21

    goto :goto_17

    .line 792
    :cond_1f
    const/16 v15, 0x9

    .line 796
    :goto_17
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v15, v24

    move-object/from16 v11, v54

    move-object/from16 v24, v12

    move-object/from16 v12, v55

    goto :goto_16

    .line 790
    .end local v54    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .end local v55    # "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    .restart local v11    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .local v12, "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    .restart local v15    # "finder":Lannotator/find/TreeFinder;
    .local v24, "src":Lannotator/Source;
    :cond_20
    move-object/from16 v54, v11

    move-object/from16 v55, v12

    move-object/from16 v12, v24

    move-object/from16 v24, v15

    const/16 v15, 0x9

    .line 798
    .end local v11    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .end local v15    # "finder":Lannotator/find/TreeFinder;
    .local v12, "src":Lannotator/Source;
    .local v24, "finder":Lannotator/find/TreeFinder;
    .restart local v54    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .restart local v55    # "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    :cond_21
    sub-int v11, v9, v0

    if-eqz v11, :cond_23

    sub-int v11, v9, v0

    const/16 v18, 0x1

    add-int/lit8 v11, v11, -0x1

    .line 800
    invoke-virtual {v12, v11}, Lannotator/Source;->charAt(I)C

    move-result v11

    const/16 v15, 0xc

    if-eq v11, v15, :cond_23

    sub-int v11, v9, v0

    add-int/lit8 v11, v11, -0x1

    .line 801
    invoke-virtual {v12, v11}, Lannotator/Source;->charAt(I)C

    move-result v11

    const/16 v15, 0xa

    if-eq v11, v15, :cond_23

    sub-int v11, v9, v0

    add-int/lit8 v11, v11, -0x1

    .line 802
    invoke-virtual {v12, v11}, Lannotator/Source;->charAt(I)C

    move-result v11

    const/16 v15, 0xd

    if-ne v11, v15, :cond_22

    goto :goto_18

    :cond_22
    move-object/from16 v18, v5

    move-object/from16 v15, v23

    goto :goto_19

    .line 803
    :cond_23
    :goto_18
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v15, v23

    .end local v23    # "fileLineSep":Ljava/lang/String;
    .local v15, "fileLineSep":Ljava/lang/String;
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v18, v5

    .end local v5    # "javafile":Ljava/io/File;
    .local v18, "javafile":Ljava/io/File;
    sub-int v5, v9, v0

    invoke-virtual {v12, v5, v9}, Lannotator/Source;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 804
    .end local v34    # "trailingWhitespace":Ljava/lang/String;
    .local v5, "trailingWhitespace":Ljava/lang/String;
    const/16 v32, 0x1

    goto :goto_1a

    .line 787
    .end local v0    # "indentation":I
    .end local v18    # "javafile":Ljava/io/File;
    .end local v54    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .end local v55    # "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    .local v5, "javafile":Ljava/io/File;
    .restart local v11    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .local v12, "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    .local v15, "finder":Lannotator/find/TreeFinder;
    .restart local v23    # "fileLineSep":Ljava/lang/String;
    .local v24, "src":Lannotator/Source;
    .restart local v34    # "trailingWhitespace":Ljava/lang/String;
    :cond_24
    move-object/from16 v18, v5

    move-object/from16 v54, v11

    move-object/from16 v55, v12

    move-object/from16 v12, v24

    move-object/from16 v24, v15

    move-object/from16 v15, v23

    .line 809
    .end local v5    # "javafile":Ljava/io/File;
    .end local v11    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .end local v23    # "fileLineSep":Ljava/lang/String;
    .local v12, "src":Lannotator/Source;
    .local v15, "fileLineSep":Ljava/lang/String;
    .restart local v18    # "javafile":Ljava/io/File;
    .local v24, "finder":Lannotator/find/TreeFinder;
    .restart local v54    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .restart local v55    # "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    :goto_19
    move-object/from16 v5, v34

    .end local v34    # "trailingWhitespace":Ljava/lang/String;
    .local v5, "trailingWhitespace":Ljava/lang/String;
    :goto_1a
    if-eqz v9, :cond_25

    .line 810
    add-int/lit8 v0, v9, -0x1

    invoke-virtual {v12, v0}, Lannotator/Source;->charAt(I)C

    move-result v0

    move v11, v0

    .local v0, "precedingChar":C
    goto :goto_1b

    .line 812
    .end local v0    # "precedingChar":C
    :cond_25
    const/4 v0, 0x0

    move v11, v0

    .line 815
    .local v11, "precedingChar":C
    :goto_1b
    invoke-virtual {v1}, Lannotator/find/Insertion;->getKind()Lannotator/find/Insertion$Kind;

    move-result-object v0

    move/from16 v23, v11

    .end local v11    # "precedingChar":C
    .local v23, "precedingChar":C
    sget-object v11, Lannotator/find/Insertion$Kind;->ANNOTATION:Lannotator/find/Insertion$Kind;

    if-ne v0, v11, :cond_2a

    .line 816
    move-object v11, v1

    check-cast v11, Lannotator/find/AnnotationInsertion;

    .line 817
    .local v11, "ai":Lannotator/find/AnnotationInsertion;
    invoke-virtual {v11}, Lannotator/find/AnnotationInsertion;->isGenerateBound()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 819
    add-int/lit8 v0, v9, 0x9

    :try_start_b
    invoke-virtual {v12, v9, v0}, Lannotator/Source;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_c

    .line 820
    .local v0, "s":Ljava/lang/String;
    move-object/from16 v56, v15

    .end local v15    # "fileLineSep":Ljava/lang/String;
    .local v56, "fileLineSep":Ljava/lang/String;
    :try_start_c
    const-string v15, "Object & "

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_26

    .line 821
    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Lannotator/find/AnnotationInsertion;->setGenerateBound(Z)V
    :try_end_c
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_b

    .line 822
    const/16 v15, 0x2e

    .end local v23    # "precedingChar":C
    .local v15, "precedingChar":C
    goto :goto_1c

    .line 820
    .end local v15    # "precedingChar":C
    .restart local v23    # "precedingChar":C
    :cond_26
    move/from16 v15, v23

    .line 824
    .end local v0    # "s":Ljava/lang/String;
    .end local v23    # "precedingChar":C
    .restart local v15    # "precedingChar":C
    :goto_1c
    goto :goto_1e

    .end local v15    # "precedingChar":C
    .restart local v23    # "precedingChar":C
    :catch_b
    move-exception v0

    goto :goto_1d

    .end local v56    # "fileLineSep":Ljava/lang/String;
    .local v15, "fileLineSep":Ljava/lang/String;
    :catch_c
    move-exception v0

    move-object/from16 v56, v15

    .end local v15    # "fileLineSep":Ljava/lang/String;
    .restart local v56    # "fileLineSep":Ljava/lang/String;
    goto :goto_1d

    .line 817
    .end local v56    # "fileLineSep":Ljava/lang/String;
    .restart local v15    # "fileLineSep":Ljava/lang/String;
    :cond_27
    move-object/from16 v56, v15

    .line 826
    .end local v15    # "fileLineSep":Ljava/lang/String;
    .restart local v56    # "fileLineSep":Ljava/lang/String;
    :goto_1d
    move/from16 v15, v23

    .end local v23    # "precedingChar":C
    .local v15, "precedingChar":C
    :goto_1e
    invoke-virtual {v11}, Lannotator/find/AnnotationInsertion;->isGenerateExtends()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 828
    add-int/lit8 v0, v9, 0x9

    :try_start_d
    invoke-virtual {v12, v9, v0}, Lannotator/Source;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_d .. :try_end_d} :catch_e

    .line 829
    .restart local v0    # "s":Ljava/lang/String;
    move/from16 v23, v15

    .end local v15    # "precedingChar":C
    .restart local v23    # "precedingChar":C
    :try_start_e
    const-string v15, " extends "

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_28

    .line 830
    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Lannotator/find/AnnotationInsertion;->setGenerateExtends(Z)V
    :try_end_e
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_d

    .line 831
    add-int/lit8 v9, v9, 0x8

    .line 833
    .end local v0    # "s":Ljava/lang/String;
    :cond_28
    :goto_1f
    goto :goto_20

    :catch_d
    move-exception v0

    goto :goto_1f

    .end local v23    # "precedingChar":C
    .restart local v15    # "precedingChar":C
    :catch_e
    move-exception v0

    move/from16 v23, v15

    .end local v15    # "precedingChar":C
    .restart local v23    # "precedingChar":C
    goto :goto_1f

    .line 826
    .end local v23    # "precedingChar":C
    .restart local v15    # "precedingChar":C
    :cond_29
    move/from16 v23, v15

    .line 835
    .end local v11    # "ai":Lannotator/find/AnnotationInsertion;
    .end local v15    # "precedingChar":C
    .restart local v23    # "precedingChar":C
    :goto_20
    move/from16 v11, v23

    goto :goto_23

    .end local v56    # "fileLineSep":Ljava/lang/String;
    .local v15, "fileLineSep":Ljava/lang/String;
    :cond_2a
    move-object/from16 v56, v15

    .end local v15    # "fileLineSep":Ljava/lang/String;
    .restart local v56    # "fileLineSep":Ljava/lang/String;
    invoke-virtual {v1}, Lannotator/find/Insertion;->getKind()Lannotator/find/Insertion$Kind;

    move-result-object v0

    sget-object v11, Lannotator/find/Insertion$Kind;->CAST:Lannotator/find/Insertion$Kind;

    if-ne v0, v11, :cond_2c

    .line 836
    move-object v0, v1

    check-cast v0, Lannotator/find/CastInsertion;

    .line 837
    invoke-virtual {v12, v9}, Lannotator/Source;->charAt(I)C

    move-result v11

    const/16 v15, 0x7b

    if-ne v11, v15, :cond_2b

    const/4 v11, 0x1

    goto :goto_21

    :cond_2b
    const/4 v11, 0x0

    :goto_21
    invoke-virtual {v0, v11}, Lannotator/find/CastInsertion;->setOnArrayLiteral(Z)V

    goto :goto_22

    .line 838
    :cond_2c
    invoke-virtual {v1}, Lannotator/find/Insertion;->getKind()Lannotator/find/Insertion$Kind;

    move-result-object v0

    sget-object v11, Lannotator/find/Insertion$Kind;->RECEIVER:Lannotator/find/Insertion$Kind;

    if-ne v0, v11, :cond_2d

    .line 839
    move-object v0, v1

    check-cast v0, Lannotator/find/ReceiverInsertion;

    .line 840
    .local v0, "ri":Lannotator/find/ReceiverInsertion;
    invoke-virtual {v0, v7}, Lannotator/find/ReceiverInsertion;->setAnnotationsOnly(Z)V

    .line 841
    const/4 v0, 0x1

    .line 842
    .end local v7    # "receiverInserted":Z
    .local v0, "receiverInserted":Z
    move v7, v0

    move/from16 v11, v23

    goto :goto_23

    .end local v0    # "receiverInserted":Z
    .restart local v7    # "receiverInserted":Z
    :cond_2d
    invoke-virtual {v1}, Lannotator/find/Insertion;->getKind()Lannotator/find/Insertion$Kind;

    move-result-object v0

    sget-object v11, Lannotator/find/Insertion$Kind;->NEW:Lannotator/find/Insertion$Kind;

    if-ne v0, v11, :cond_2e

    .line 843
    move-object v0, v1

    check-cast v0, Lannotator/find/NewInsertion;

    .line 844
    .local v0, "ni":Lannotator/find/NewInsertion;
    invoke-virtual {v0, v8}, Lannotator/find/NewInsertion;->setAnnotationsOnly(Z)V

    .line 845
    const/4 v0, 0x1

    .line 846
    .end local v8    # "newInserted":Z
    .local v0, "newInserted":Z
    move v8, v0

    move/from16 v11, v23

    goto :goto_23

    .end local v0    # "newInserted":Z
    .restart local v8    # "newInserted":Z
    :cond_2e
    invoke-virtual {v1}, Lannotator/find/Insertion;->getKind()Lannotator/find/Insertion$Kind;

    move-result-object v0

    sget-object v11, Lannotator/find/Insertion$Kind;->CONSTRUCTOR:Lannotator/find/Insertion$Kind;

    if-ne v0, v11, :cond_30

    .line 847
    move-object v0, v1

    check-cast v0, Lannotator/find/ConstructorInsertion;

    .line 848
    .local v0, "ci":Lannotator/find/ConstructorInsertion;
    if-eqz v33, :cond_2f

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Lannotator/find/ConstructorInsertion;->setAnnotationsOnly(Z)V

    .line 849
    :cond_2f
    const/4 v11, 0x1

    move/from16 v33, v11

    move/from16 v11, v23

    .end local v33    # "constructorInserted":Z
    .local v11, "constructorInserted":Z
    goto :goto_23

    .line 852
    .end local v0    # "ci":Lannotator/find/ConstructorInsertion;
    .end local v11    # "constructorInserted":Z
    .restart local v33    # "constructorInserted":Z
    :cond_30
    :goto_22
    move/from16 v11, v23

    .end local v23    # "precedingChar":C
    .local v11, "precedingChar":C
    :goto_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v47, Lannotator/Main;->comments:Z

    sget-boolean v48, Lannotator/Main;->abbreviate:Z

    move-object/from16 v46, v1

    move/from16 v49, v32

    move/from16 v50, v9

    move/from16 v51, v11

    invoke-virtual/range {v46 .. v51}, Lannotator/find/Insertion;->getText(ZZZIC)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 855
    .local v0, "toInsert":Ljava/lang/String;
    move-object/from16 v15, v35

    .end local v35    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v15, "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v15, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_31

    .line 856
    move/from16 v34, v7

    move/from16 v46, v8

    move-object/from16 v48, v15

    goto/16 :goto_26

    .line 858
    :cond_31
    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 863
    move-object/from16 v23, v5

    .end local v5    # "trailingWhitespace":Ljava/lang/String;
    .local v23, "trailingWhitespace":Ljava/lang/String;
    const-string v5, "@"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 864
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v5, v9, v5

    const/16 v19, 0x1

    add-int/lit8 v5, v5, -0x1

    .line 865
    .local v5, "precedingTextPos":I
    if-ltz v5, :cond_33

    .line 866
    nop

    .line 867
    move/from16 v34, v7

    .end local v7    # "receiverInserted":Z
    .local v34, "receiverInserted":Z
    invoke-virtual {v12}, Lannotator/Source;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 868
    .local v7, "precedingTextPlusChar":Ljava/lang/String;
    nop

    .line 869
    move/from16 v35, v5

    .end local v5    # "precedingTextPos":I
    .local v35, "precedingTextPos":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v46, v8

    const/4 v8, 0x0

    .end local v8    # "newInserted":Z
    .local v46, "newInserted":Z
    invoke-virtual {v7, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 868
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_32

    .line 870
    const/4 v5, 0x1

    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 871
    :cond_32
    nop

    .line 873
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12}, Lannotator/Source;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v0, v5, v8, v7}, [Ljava/lang/Object;

    move-result-object v5

    .line 871
    const-string v8, "Inserting \'%s\' at %d in code of length %d with preceding text \'%s\'%n"

    invoke-virtual {v4, v8, v5}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 875
    const-string v5, "Already present, skipping%n"

    move-object/from16 v47, v7

    const/4 v8, 0x0

    .end local v7    # "precedingTextPlusChar":Ljava/lang/String;
    .local v47, "precedingTextPlusChar":Ljava/lang/String;
    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v7}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 876
    move-object/from16 v48, v15

    goto/16 :goto_26

    .line 865
    .end local v34    # "receiverInserted":Z
    .end local v35    # "precedingTextPos":I
    .end local v46    # "newInserted":Z
    .end local v47    # "precedingTextPlusChar":Ljava/lang/String;
    .restart local v5    # "precedingTextPos":I
    .local v7, "receiverInserted":Z
    .restart local v8    # "newInserted":Z
    :cond_33
    move/from16 v35, v5

    move/from16 v34, v7

    move/from16 v46, v8

    .line 879
    .end local v5    # "precedingTextPos":I
    .end local v7    # "receiverInserted":Z
    .end local v8    # "newInserted":Z
    .restart local v34    # "receiverInserted":Z
    .restart local v35    # "precedingTextPos":I
    .restart local v46    # "newInserted":Z
    :cond_34
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v9

    .line 880
    .local v5, "followingTextEndPos":I
    invoke-virtual {v12}, Lannotator/Source;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_36

    .line 881
    nop

    .line 882
    invoke-virtual {v12}, Lannotator/Source;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 883
    .local v7, "followingText":Ljava/lang/String;
    const-string v8, "followingText=\"%s\"%n"

    move/from16 v47, v11

    .end local v11    # "precedingChar":C
    .local v47, "precedingChar":C
    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v4, v8, v11}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 884
    const-string v8, "toInsert=\"%s\"%n"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v4, v8, v11}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 886
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v11, 0x1

    sub-int/2addr v8, v11

    const/4 v11, 0x0

    invoke-virtual {v0, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 887
    .local v8, "toInsertNoWs":Ljava/lang/String;
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_35

    .line 888
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v17

    move-object/from16 v48, v15

    const/16 v19, 0x1

    .end local v15    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v48, "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    add-int/lit8 v15, v17, -0x1

    invoke-virtual {v7, v11, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 889
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_38

    .line 891
    invoke-virtual {v12}, Lannotator/Source;->getString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    if-eqz v11, :cond_38

    goto :goto_24

    .line 887
    .end local v48    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v15    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_35
    move-object/from16 v48, v15

    .line 892
    .end local v15    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v48    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_24
    const-string v11, "Already present, skipping %s%n"

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v4, v11, v15}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 893
    goto :goto_26

    .line 880
    .end local v7    # "followingText":Ljava/lang/String;
    .end local v8    # "toInsertNoWs":Ljava/lang/String;
    .end local v47    # "precedingChar":C
    .end local v48    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v11    # "precedingChar":C
    .restart local v15    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_36
    move/from16 v47, v11

    move-object/from16 v48, v15

    .end local v11    # "precedingChar":C
    .end local v15    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v47    # "precedingChar":C
    .restart local v48    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_25

    .line 863
    .end local v5    # "followingTextEndPos":I
    .end local v34    # "receiverInserted":Z
    .end local v35    # "precedingTextPos":I
    .end local v46    # "newInserted":Z
    .end local v47    # "precedingChar":C
    .end local v48    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v7, "receiverInserted":Z
    .local v8, "newInserted":Z
    .restart local v11    # "precedingChar":C
    .restart local v15    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_37
    move/from16 v34, v7

    move/from16 v46, v8

    move/from16 v47, v11

    move-object/from16 v48, v15

    .line 901
    .end local v7    # "receiverInserted":Z
    .end local v8    # "newInserted":Z
    .end local v11    # "precedingChar":C
    .end local v15    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v34    # "receiverInserted":Z
    .restart local v46    # "newInserted":Z
    .restart local v47    # "precedingChar":C
    .restart local v48    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_38
    :goto_25
    invoke-virtual {v1}, Lannotator/find/Insertion;->isInserted()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 782
    .end local v0    # "toInsert":Ljava/lang/String;
    .end local v1    # "iToInsert":Lannotator/find/Insertion;
    .end local v9    # "pos":I
    .end local v23    # "trailingWhitespace":Ljava/lang/String;
    .end local v32    # "gotSeparateLine":Z
    .end local v34    # "receiverInserted":Z
    .end local v46    # "newInserted":Z
    .end local v47    # "precedingChar":C
    .end local v48    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "receiverInserted":Z
    .restart local v8    # "newInserted":Z
    .restart local v15    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_26
    move-object/from16 v5, v18

    move-object/from16 v15, v24

    move/from16 v7, v34

    move/from16 v8, v46

    move-object/from16 v35, v48

    move-object/from16 v1, v52

    move-object/from16 v9, v53

    move-object/from16 v11, v54

    move-object/from16 v23, v56

    move-object/from16 v24, v12

    move-object/from16 v12, v55

    .end local v7    # "receiverInserted":Z
    .end local v8    # "newInserted":Z
    .end local v15    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v34    # "receiverInserted":Z
    .restart local v46    # "newInserted":Z
    .restart local v48    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto/16 :goto_15

    .line 902
    .restart local v0    # "toInsert":Ljava/lang/String;
    .restart local v1    # "iToInsert":Lannotator/find/Insertion;
    .restart local v9    # "pos":I
    .restart local v23    # "trailingWhitespace":Ljava/lang/String;
    .restart local v32    # "gotSeparateLine":Z
    .restart local v47    # "precedingChar":C
    :cond_39
    invoke-virtual {v12, v9, v0}, Lannotator/Source;->insert(ILjava/lang/String;)V

    .line 903
    sget-boolean v5, Lannotator/Main;->verbose:Z

    if-eqz v5, :cond_3a

    sget-boolean v5, Lannotator/Main;->debug:Z

    if-nez v5, :cond_3a

    .line 904
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "."

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 905
    add-int/lit8 v26, v26, 0x1

    .line 906
    rem-int/lit8 v5, v26, 0x32

    if-nez v5, :cond_3a

    .line 907
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5}, Ljava/io/PrintStream;->println()V

    .line 910
    :cond_3a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Post-insertion source: %n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Lannotator/Source;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v8}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 912
    invoke-virtual {v1}, Lannotator/find/Insertion;->getPackageNames()Ljava/util/Set;

    move-result-object v5

    invoke-static {v5}, Lannotator/Main;->nonJavaLangClasses(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v5

    .line 913
    .local v5, "packageNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3b

    .line 914
    const-string v7, "Need import %s%n  due to insertion %s%n"

    filled-new-array {v5, v0}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 916
    invoke-virtual {v10, v5}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 918
    :cond_3b
    instance-of v7, v1, Lannotator/find/AnnotationInsertion;

    if-eqz v7, :cond_3c

    .line 919
    move-object v7, v1

    check-cast v7, Lannotator/find/AnnotationInsertion;

    .line 920
    .local v7, "annoToInsert":Lannotator/find/AnnotationInsertion;
    invoke-virtual {v7}, Lannotator/find/AnnotationInsertion;->getAnnotationFullyQualifiedName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v14, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    .line 921
    .local v8, "annoImports":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v8, :cond_3c

    .line 922
    invoke-virtual {v10, v8}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 925
    .end local v0    # "toInsert":Ljava/lang/String;
    .end local v1    # "iToInsert":Lannotator/find/Insertion;
    .end local v5    # "packageNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v7    # "annoToInsert":Lannotator/find/AnnotationInsertion;
    .end local v8    # "annoImports":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "pos":I
    .end local v23    # "trailingWhitespace":Ljava/lang/String;
    .end local v32    # "gotSeparateLine":Z
    .end local v47    # "precedingChar":C
    :cond_3c
    move-object/from16 v5, v18

    move-object/from16 v15, v24

    move/from16 v7, v34

    move/from16 v8, v46

    move-object/from16 v35, v48

    move-object/from16 v1, v52

    move-object/from16 v9, v53

    move-object/from16 v11, v54

    move-object/from16 v23, v56

    move-object/from16 v24, v12

    move-object/from16 v12, v55

    goto/16 :goto_15

    .line 782
    .end local v18    # "javafile":Ljava/io/File;
    .end local v34    # "receiverInserted":Z
    .end local v46    # "newInserted":Z
    .end local v48    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v53    # "insertions":Lannotator/find/Insertions;
    .end local v54    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .end local v55    # "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    .end local v56    # "fileLineSep":Ljava/lang/String;
    .local v5, "javafile":Ljava/io/File;
    .local v7, "receiverInserted":Z
    .local v8, "newInserted":Z
    .local v9, "insertions":Lannotator/find/Insertions;
    .local v11, "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .local v12, "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    .local v15, "finder":Lannotator/find/TreeFinder;
    .local v23, "fileLineSep":Ljava/lang/String;
    .local v24, "src":Lannotator/Source;
    .local v35, "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3d
    move-object/from16 v18, v5

    move-object/from16 v53, v9

    move-object/from16 v54, v11

    move-object/from16 v55, v12

    move-object/from16 v56, v23

    move-object/from16 v12, v24

    move-object/from16 v48, v35

    move-object/from16 v24, v15

    .line 926
    .end local v2    # "pair":Lorg/checkerframework/org/plumelib/util/Pair;, "Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/Integer;Lscenelib/annotations/io/ASTPath;>;"
    .end local v5    # "javafile":Ljava/io/File;
    .end local v6    # "toInsertList":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .end local v7    # "receiverInserted":Z
    .end local v8    # "newInserted":Z
    .end local v9    # "insertions":Lannotator/find/Insertions;
    .end local v11    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .end local v15    # "finder":Lannotator/find/TreeFinder;
    .end local v23    # "fileLineSep":Ljava/lang/String;
    .end local v33    # "constructorInserted":Z
    .end local v35    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v12, "src":Lannotator/Source;
    .restart local v18    # "javafile":Ljava/io/File;
    .local v24, "finder":Lannotator/find/TreeFinder;
    .restart local v53    # "insertions":Lannotator/find/Insertions;
    .restart local v54    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .restart local v55    # "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    .restart local v56    # "fileLineSep":Ljava/lang/String;
    move-object/from16 v2, v31

    move-object/from16 v6, v41

    move-object/from16 v1, v42

    move-object/from16 v7, v43

    move-object/from16 v8, v45

    move-object/from16 v24, v12

    move-object/from16 v12, v55

    goto/16 :goto_14

    .line 780
    .end local v18    # "javafile":Ljava/io/File;
    .end local v43    # "tree":Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;
    .end local v45    # "positionKeysSorted":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/Integer;Lscenelib/annotations/io/ASTPath;>;>;"
    .end local v53    # "insertions":Lannotator/find/Insertions;
    .end local v54    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .end local v55    # "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    .end local v56    # "fileLineSep":Ljava/lang/String;
    .restart local v2    # "pair":Lorg/checkerframework/org/plumelib/util/Pair;, "Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/Integer;Lscenelib/annotations/io/ASTPath;>;"
    .restart local v5    # "javafile":Ljava/io/File;
    .restart local v6    # "toInsertList":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    .local v7, "tree":Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;
    .local v8, "positionKeysSorted":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/Integer;Lscenelib/annotations/io/ASTPath;>;>;"
    .restart local v9    # "insertions":Lannotator/find/Insertions;
    .restart local v11    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .local v12, "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    .restart local v15    # "finder":Lannotator/find/TreeFinder;
    .restart local v23    # "fileLineSep":Ljava/lang/String;
    .local v24, "src":Lannotator/Source;
    .local v32, "newInserted":Z
    .restart local v33    # "constructorInserted":Z
    .restart local v34    # "receiverInserted":Z
    .restart local v35    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3e
    move-object/from16 v18, v5

    move-object/from16 v43, v7

    .end local v5    # "javafile":Ljava/io/File;
    .end local v7    # "tree":Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;
    .restart local v18    # "javafile":Ljava/io/File;
    .restart local v43    # "tree":Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pos is negative: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, v2, Lorg/checkerframework/org/plumelib/util/Pair;->a:Ljava/lang/Object;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 781
    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 772
    .end local v18    # "javafile":Ljava/io/File;
    .end local v31    # "positionKeysUnsorted":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/Integer;Lscenelib/annotations/io/ASTPath;>;>;"
    .end local v32    # "newInserted":Z
    .end local v33    # "constructorInserted":Z
    .end local v34    # "receiverInserted":Z
    .end local v35    # "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v41    # "both":Lscenelib/annotations/io/DebugWriter;
    .end local v42    # "positions":Lorg/checkerframework/com/google/common/collect/SetMultimap;, "Lorg/checkerframework/com/google/common/collect/SetMultimap<Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/Integer;Lscenelib/annotations/io/ASTPath;>;Lannotator/find/Insertion;>;"
    .end local v43    # "tree":Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;
    .local v1, "positions":Lorg/checkerframework/com/google/common/collect/SetMultimap;, "Lorg/checkerframework/com/google/common/collect/SetMultimap<Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/Integer;Lscenelib/annotations/io/ASTPath;>;Lannotator/find/Insertion;>;"
    .local v2, "positionKeysUnsorted":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/Integer;Lscenelib/annotations/io/ASTPath;>;>;"
    .restart local v5    # "javafile":Ljava/io/File;
    .local v6, "both":Lscenelib/annotations/io/DebugWriter;
    .restart local v7    # "tree":Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;
    :cond_3f
    move-object/from16 v42, v1

    move-object/from16 v31, v2

    move-object/from16 v18, v5

    move-object/from16 v41, v6

    move-object/from16 v43, v7

    move-object/from16 v45, v8

    move-object/from16 v53, v9

    move-object/from16 v54, v11

    move-object/from16 v55, v12

    move-object/from16 v56, v23

    move-object/from16 v12, v24

    const/4 v7, 0x0

    move-object/from16 v24, v15

    .line 927
    .end local v1    # "positions":Lorg/checkerframework/com/google/common/collect/SetMultimap;, "Lorg/checkerframework/com/google/common/collect/SetMultimap<Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/Integer;Lscenelib/annotations/io/ASTPath;>;Lannotator/find/Insertion;>;"
    .end local v2    # "positionKeysUnsorted":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/Integer;Lscenelib/annotations/io/ASTPath;>;>;"
    .end local v5    # "javafile":Ljava/io/File;
    .end local v6    # "both":Lscenelib/annotations/io/DebugWriter;
    .end local v7    # "tree":Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;
    .end local v8    # "positionKeysSorted":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/org/plumelib/util/Pair<Ljava/lang/Integer;Lscenelib/annotations/io/ASTPath;>;>;"
    .end local v9    # "insertions":Lannotator/find/Insertions;
    .end local v11    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .end local v15    # "finder":Lannotator/find/TreeFinder;
    .end local v23    # "fileLineSep":Ljava/lang/String;
    .end local v24    # "src":Lannotator/Source;
    .end local v29    # "cut":Lcom/sun/source/tree/CompilationUnitTree;
    .end local v37    # "pkgExp":Lcom/sun/source/tree/ExpressionTree;
    .local v12, "src":Lannotator/Source;
    .restart local v18    # "javafile":Ljava/io/File;
    .restart local v41    # "both":Lscenelib/annotations/io/DebugWriter;
    .restart local v53    # "insertions":Lannotator/find/Insertions;
    .restart local v54    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .restart local v55    # "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    .restart local v56    # "fileLineSep":Ljava/lang/String;
    move-object/from16 v24, v12

    move-object/from16 v28, v30

    move-object/from16 v7, v36

    move-object/from16 v15, v38

    move-object/from16 v1, v39

    move-object/from16 v8, v40

    move-object/from16 v2, v44

    move-object/from16 v12, v55

    goto/16 :goto_f

    .line 929
    .end local v18    # "javafile":Ljava/io/File;
    .end local v30    # "pkg":Ljava/lang/String;
    .end local v36    # "verb":Lscenelib/annotations/io/DebugWriter;
    .end local v40    # "unannotated":Ljava/io/File;
    .end local v41    # "both":Lscenelib/annotations/io/DebugWriter;
    .end local v53    # "insertions":Lannotator/find/Insertions;
    .end local v54    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .end local v55    # "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    .end local v56    # "fileLineSep":Ljava/lang/String;
    .restart local v5    # "javafile":Ljava/io/File;
    .restart local v6    # "both":Lscenelib/annotations/io/DebugWriter;
    .local v7, "verb":Lscenelib/annotations/io/DebugWriter;
    .local v8, "unannotated":Ljava/io/File;
    .restart local v9    # "insertions":Lannotator/find/Insertions;
    .restart local v11    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .local v12, "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    .restart local v23    # "fileLineSep":Ljava/lang/String;
    .restart local v24    # "src":Lannotator/Source;
    .local v28, "pkg":Ljava/lang/String;
    :cond_40
    move-object/from16 v39, v1

    move-object/from16 v44, v2

    move-object/from16 v18, v5

    move-object/from16 v41, v6

    move-object/from16 v36, v7

    move-object/from16 v40, v8

    move-object/from16 v53, v9

    move-object/from16 v54, v11

    move-object/from16 v55, v12

    move-object/from16 v38, v15

    move-object/from16 v56, v23

    move-object/from16 v12, v24

    const/4 v7, 0x0

    .end local v5    # "javafile":Ljava/io/File;
    .end local v6    # "both":Lscenelib/annotations/io/DebugWriter;
    .end local v7    # "verb":Lscenelib/annotations/io/DebugWriter;
    .end local v8    # "unannotated":Ljava/io/File;
    .end local v9    # "insertions":Lannotator/find/Insertions;
    .end local v11    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .end local v23    # "fileLineSep":Ljava/lang/String;
    .end local v24    # "src":Lannotator/Source;
    .local v12, "src":Lannotator/Source;
    .restart local v18    # "javafile":Ljava/io/File;
    .restart local v36    # "verb":Lscenelib/annotations/io/DebugWriter;
    .restart local v40    # "unannotated":Ljava/io/File;
    .restart local v41    # "both":Lscenelib/annotations/io/DebugWriter;
    .restart local v53    # "insertions":Lannotator/find/Insertions;
    .restart local v54    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .restart local v55    # "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    .restart local v56    # "fileLineSep":Ljava/lang/String;
    sget-boolean v0, Lannotator/Main;->convert_jaifs:Z

    if-eqz v0, :cond_43

    .line 930
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Map$Entry;

    .line 931
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/el/AScene;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 932
    .local v5, "filename":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lscenelib/annotations/el/AScene;

    .line 934
    .local v6, "scene":Lscenelib/annotations/el/AScene;
    :try_start_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ".converted"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lscenelib/annotations/io/IndexFileWriter;->write(Lscenelib/annotations/el/AScene;Ljava/lang/String;)V
    :try_end_f
    .catch Lscenelib/annotations/el/DefException; {:try_start_f .. :try_end_f} :catch_f

    .line 940
    goto :goto_28

    .line 935
    :catch_f
    move-exception v0

    .line 936
    .local v0, "e":Lscenelib/annotations/el/DefException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":  format error in conversion"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 937
    sget-boolean v7, Lannotator/Main;->print_error_stack:Z

    if-eqz v7, :cond_41

    .line 938
    invoke-virtual {v0}, Lscenelib/annotations/el/DefException;->printStackTrace()V

    .line 941
    .end local v0    # "e":Lscenelib/annotations/el/DefException;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/el/AScene;>;"
    .end local v5    # "filename":Ljava/lang/String;
    .end local v6    # "scene":Lscenelib/annotations/el/AScene;
    :cond_41
    :goto_28
    goto :goto_27

    .line 942
    :cond_42
    return-void

    .line 945
    :cond_43
    invoke-virtual {v4}, Lscenelib/annotations/io/DebugWriter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 946
    invoke-virtual {v10}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%d imports to insert%n"

    invoke-virtual {v4, v1, v0}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 947
    invoke-virtual {v10}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 948
    .local v1, "classname":Ljava/lang/String;
    const-string v2, "  %s%n"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 949
    .end local v1    # "classname":Ljava/lang/String;
    goto :goto_29

    .line 954
    :cond_44
    const-string v0, "(?m)^import\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 955
    .local v0, "importPattern":Ljava/util/regex/Pattern;
    const-string v1, "(?m)^package\\b.*;(\\n|\\r\\n?)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 956
    .local v1, "packagePattern":Ljava/util/regex/Pattern;
    const/4 v2, 0x0

    .line 957
    .local v2, "importIndex":I
    invoke-virtual {v12}, Lannotator/Source;->getString()Ljava/lang/String;

    move-result-object v5

    .line 958
    .local v5, "srcString":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 959
    .local v6, "m":Ljava/util/regex/Matcher;
    new-instance v8, Ljava/util/TreeSet;

    invoke-direct {v8}, Ljava/util/TreeSet;-><init>()V

    .line 960
    .local v8, "inSource":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_47

    .line 961
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    .line 963
    .end local v2    # "importIndex":I
    .local v9, "importIndex":I
    :cond_45
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    .line 964
    .local v2, "i":I
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v11

    const/4 v15, 0x1

    add-int/2addr v11, v15

    .line 965
    .local v11, "j":I
    if-gtz v11, :cond_46

    .line 966
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    .line 968
    :cond_46
    invoke-virtual {v5, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 969
    .local v15, "s":Ljava/lang/String;
    invoke-interface {v8, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 970
    .end local v2    # "i":I
    .end local v11    # "j":I
    .end local v15    # "s":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_45

    move v2, v9

    goto :goto_2a

    .line 973
    .end local v9    # "importIndex":I
    .local v2, "importIndex":I
    :cond_47
    invoke-virtual {v1, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 974
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_48

    .line 975
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 978
    :cond_48
    :goto_2a
    invoke-virtual {v10}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 979
    .local v11, "classname":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "import "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, ";"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v15, v56

    .end local v56    # "fileLineSep":Ljava/lang/String;
    .local v15, "fileLineSep":Ljava/lang/String;
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 980
    .local v7, "toInsert":Ljava/lang/String;
    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_49

    .line 981
    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 982
    invoke-virtual {v12, v2, v7}, Lannotator/Source;->insert(ILjava/lang/String;)V

    .line 983
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v23

    add-int v2, v2, v23

    .line 985
    .end local v7    # "toInsert":Ljava/lang/String;
    .end local v11    # "classname":Ljava/lang/String;
    :cond_49
    move-object/from16 v56, v15

    const/4 v7, 0x0

    goto :goto_2b

    .line 978
    .end local v15    # "fileLineSep":Ljava/lang/String;
    .restart local v56    # "fileLineSep":Ljava/lang/String;
    :cond_4a
    move-object/from16 v15, v56

    .line 989
    .end local v0    # "importPattern":Ljava/util/regex/Pattern;
    .end local v1    # "packagePattern":Ljava/util/regex/Pattern;
    .end local v2    # "importIndex":I
    .end local v5    # "srcString":Ljava/lang/String;
    .end local v6    # "m":Ljava/util/regex/Matcher;
    .end local v8    # "inSource":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v56    # "fileLineSep":Ljava/lang/String;
    .restart local v15    # "fileLineSep":Ljava/lang/String;
    const/4 v1, 0x0

    .line 991
    .local v1, "outfile":Ljava/io/File;
    :try_start_10
    sget-boolean v0, Lannotator/Main;->in_place:Z
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_17

    if-eqz v0, :cond_4d

    .line 992
    move-object/from16 v1, v18

    .line 993
    :try_start_11
    sget-boolean v0, Lannotator/Main;->verbose:Z

    if-eqz v0, :cond_4b

    .line 994
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_10

    move-object/from16 v2, v18

    move-object/from16 v5, v40

    .end local v18    # "javafile":Ljava/io/File;
    .end local v40    # "unannotated":Ljava/io/File;
    .local v2, "javafile":Ljava/io/File;
    .local v5, "unannotated":Ljava/io/File;
    :try_start_12
    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v7, v39

    invoke-virtual {v0, v7, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_2c

    .line 993
    .end local v2    # "javafile":Ljava/io/File;
    .end local v5    # "unannotated":Ljava/io/File;
    .restart local v18    # "javafile":Ljava/io/File;
    .restart local v40    # "unannotated":Ljava/io/File;
    :cond_4b
    move-object/from16 v2, v18

    move-object/from16 v5, v40

    .line 996
    .end local v18    # "javafile":Ljava/io/File;
    .end local v40    # "unannotated":Ljava/io/File;
    .restart local v2    # "javafile":Ljava/io/File;
    .restart local v5    # "unannotated":Ljava/io/File;
    :goto_2c
    invoke-virtual {v2, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 997
    .local v0, "success":Z
    if-eqz v0, :cond_4c

    .line 1001
    .end local v0    # "success":Z
    move-object/from16 v9, v25

    move-object/from16 v6, v28

    goto/16 :goto_2f

    .line 998
    .restart local v0    # "success":Z
    :cond_4c
    new-instance v6, Ljava/lang/Error;

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v8, v38

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .end local v1    # "outfile":Ljava/io/File;
    .end local v2    # "javafile":Ljava/io/File;
    .end local v3    # "javafilename":Ljava/lang/String;
    .end local v4    # "dbug":Lscenelib/annotations/io/DebugWriter;
    .end local v5    # "unannotated":Ljava/io/File;
    .end local v10    # "imports":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    .end local v12    # "src":Lannotator/Source;
    .end local v13    # "scenes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lscenelib/annotations/el/AScene;>;"
    .end local v14    # "annotationImports":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v15    # "fileLineSep":Ljava/lang/String;
    .end local v20    # "options":Lorg/checkerframework/org/plumelib/options/Options;
    .end local v21    # "javafiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "file_args":[Ljava/lang/String;
    .end local v25    # "fileSep":Ljava/lang/String;
    .end local v26    # "num_insertions":I
    .end local v28    # "pkg":Ljava/lang/String;
    .end local v36    # "verb":Lscenelib/annotations/io/DebugWriter;
    .end local v41    # "both":Lscenelib/annotations/io/DebugWriter;
    .end local v53    # "insertions":Lannotator/find/Insertions;
    .end local v54    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .end local v55    # "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    .end local p0    # "args":[Ljava/lang/String;
    throw v6
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_11

    .line 1020
    .end local v0    # "success":Z
    .restart local v1    # "outfile":Ljava/io/File;
    .restart local v3    # "javafilename":Ljava/lang/String;
    .restart local v4    # "dbug":Lscenelib/annotations/io/DebugWriter;
    .restart local v10    # "imports":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    .restart local v12    # "src":Lannotator/Source;
    .restart local v13    # "scenes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lscenelib/annotations/el/AScene;>;"
    .restart local v14    # "annotationImports":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v15    # "fileLineSep":Ljava/lang/String;
    .restart local v18    # "javafile":Ljava/io/File;
    .restart local v20    # "options":Lorg/checkerframework/org/plumelib/options/Options;
    .restart local v21    # "javafiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "file_args":[Ljava/lang/String;
    .restart local v25    # "fileSep":Ljava/lang/String;
    .restart local v26    # "num_insertions":I
    .restart local v28    # "pkg":Ljava/lang/String;
    .restart local v36    # "verb":Lscenelib/annotations/io/DebugWriter;
    .restart local v40    # "unannotated":Ljava/io/File;
    .restart local v41    # "both":Lscenelib/annotations/io/DebugWriter;
    .restart local v53    # "insertions":Lannotator/find/Insertions;
    .restart local v54    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .restart local v55    # "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    .restart local p0    # "args":[Ljava/lang/String;
    :catch_10
    move-exception v0

    move-object/from16 v2, v18

    move-object/from16 v5, v40

    move-object/from16 v9, v25

    move-object/from16 v6, v28

    .end local v18    # "javafile":Ljava/io/File;
    .end local v40    # "unannotated":Ljava/io/File;
    .restart local v2    # "javafile":Ljava/io/File;
    .restart local v5    # "unannotated":Ljava/io/File;
    goto/16 :goto_30

    .line 1002
    .end local v2    # "javafile":Ljava/io/File;
    .end local v5    # "unannotated":Ljava/io/File;
    .restart local v18    # "javafile":Ljava/io/File;
    .restart local v40    # "unannotated":Ljava/io/File;
    :cond_4d
    move-object/from16 v2, v18

    move-object/from16 v5, v40

    .end local v18    # "javafile":Ljava/io/File;
    .end local v40    # "unannotated":Ljava/io/File;
    .restart local v2    # "javafile":Ljava/io/File;
    .restart local v5    # "unannotated":Ljava/io/File;
    :try_start_13
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_16

    if-eqz v0, :cond_4e

    .line 1003
    :try_start_14
    new-instance v0, Ljava/io/File;

    sget-object v6, Lannotator/Main;->outdir:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_11

    move-object v1, v0

    move-object/from16 v9, v25

    move-object/from16 v6, v28

    .end local v1    # "outfile":Ljava/io/File;
    .local v0, "outfile":Ljava/io/File;
    goto :goto_2e

    .line 1020
    .end local v0    # "outfile":Ljava/io/File;
    .restart local v1    # "outfile":Ljava/io/File;
    :catch_11
    move-exception v0

    move-object/from16 v9, v25

    move-object/from16 v6, v28

    goto/16 :goto_30

    .line 1005
    :cond_4e
    :try_start_15
    const-string v0, "\\."
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_16

    move-object/from16 v6, v28

    .end local v28    # "pkg":Ljava/lang/String;
    .local v6, "pkg":Ljava/lang/String;
    :try_start_16
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1006
    .local v0, "pkgPath":[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lannotator/Main;->outdir:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1007
    .local v7, "sb":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2d
    array-length v9, v0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_15

    if-ge v8, v9, :cond_4f

    .line 1008
    move-object/from16 v9, v25

    .end local v25    # "fileSep":Ljava/lang/String;
    .local v9, "fileSep":Ljava/lang/String;
    :try_start_17
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_12

    move-object/from16 v18, v1

    .end local v1    # "outfile":Ljava/io/File;
    .local v18, "outfile":Ljava/io/File;
    :try_start_18
    aget-object v1, v0, v8

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v25, v9

    move-object/from16 v1, v18

    goto :goto_2d

    .line 1020
    .end local v0    # "pkgPath":[Ljava/lang/String;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "i":I
    .end local v18    # "outfile":Ljava/io/File;
    .restart local v1    # "outfile":Ljava/io/File;
    :catch_12
    move-exception v0

    move-object/from16 v18, v1

    .end local v1    # "outfile":Ljava/io/File;
    .restart local v18    # "outfile":Ljava/io/File;
    goto :goto_30

    .line 1007
    .end local v9    # "fileSep":Ljava/lang/String;
    .end local v18    # "outfile":Ljava/io/File;
    .restart local v0    # "pkgPath":[Ljava/lang/String;
    .restart local v1    # "outfile":Ljava/io/File;
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v8    # "i":I
    .restart local v25    # "fileSep":Ljava/lang/String;
    :cond_4f
    move-object/from16 v18, v1

    move-object/from16 v9, v25

    .line 1010
    .end local v1    # "outfile":Ljava/io/File;
    .end local v8    # "i":I
    .end local v25    # "fileSep":Ljava/lang/String;
    .restart local v9    # "fileSep":Ljava/lang/String;
    .restart local v18    # "outfile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_14

    .line 1012
    .end local v0    # "pkgPath":[Ljava/lang/String;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v18    # "outfile":Ljava/io/File;
    .restart local v1    # "outfile":Ljava/io/File;
    :goto_2e
    :try_start_19
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1014
    :goto_2f
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1015
    .local v0, "output":Ljava/io/OutputStream;
    sget-boolean v7, Lannotator/Main;->verbose:Z

    if-eqz v7, :cond_50

    .line 1016
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Writing %s%n"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1018
    :cond_50
    invoke-virtual {v12, v0}, Lannotator/Source;->write(Ljava/io/OutputStream;)V

    .line 1019
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_13

    .line 1024
    .end local v0    # "output":Ljava/io/OutputStream;
    const/4 v7, 0x1

    goto :goto_31

    .line 1020
    :catch_13
    move-exception v0

    goto :goto_30

    .end local v1    # "outfile":Ljava/io/File;
    .restart local v18    # "outfile":Ljava/io/File;
    :catch_14
    move-exception v0

    move-object/from16 v1, v18

    goto :goto_30

    .end local v9    # "fileSep":Ljava/lang/String;
    .end local v18    # "outfile":Ljava/io/File;
    .restart local v1    # "outfile":Ljava/io/File;
    .restart local v25    # "fileSep":Ljava/lang/String;
    :catch_15
    move-exception v0

    move-object/from16 v18, v1

    move-object/from16 v9, v25

    .end local v1    # "outfile":Ljava/io/File;
    .end local v25    # "fileSep":Ljava/lang/String;
    .restart local v9    # "fileSep":Ljava/lang/String;
    .restart local v18    # "outfile":Ljava/io/File;
    goto :goto_30

    .end local v6    # "pkg":Ljava/lang/String;
    .end local v9    # "fileSep":Ljava/lang/String;
    .end local v18    # "outfile":Ljava/io/File;
    .restart local v1    # "outfile":Ljava/io/File;
    .restart local v25    # "fileSep":Ljava/lang/String;
    .restart local v28    # "pkg":Ljava/lang/String;
    :catch_16
    move-exception v0

    move-object/from16 v18, v1

    move-object/from16 v9, v25

    move-object/from16 v6, v28

    .end local v1    # "outfile":Ljava/io/File;
    .end local v25    # "fileSep":Ljava/lang/String;
    .end local v28    # "pkg":Ljava/lang/String;
    .restart local v6    # "pkg":Ljava/lang/String;
    .restart local v9    # "fileSep":Ljava/lang/String;
    .restart local v18    # "outfile":Ljava/io/File;
    goto :goto_30

    .end local v2    # "javafile":Ljava/io/File;
    .end local v5    # "unannotated":Ljava/io/File;
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v9    # "fileSep":Ljava/lang/String;
    .restart local v1    # "outfile":Ljava/io/File;
    .local v18, "javafile":Ljava/io/File;
    .restart local v25    # "fileSep":Ljava/lang/String;
    .restart local v28    # "pkg":Ljava/lang/String;
    .restart local v40    # "unannotated":Ljava/io/File;
    :catch_17
    move-exception v0

    move-object/from16 v2, v18

    move-object/from16 v9, v25

    move-object/from16 v6, v28

    move-object/from16 v5, v40

    move-object/from16 v18, v1

    .line 1021
    .end local v18    # "javafile":Ljava/io/File;
    .end local v25    # "fileSep":Ljava/lang/String;
    .end local v28    # "pkg":Ljava/lang/String;
    .end local v40    # "unannotated":Ljava/io/File;
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "javafile":Ljava/io/File;
    .restart local v5    # "unannotated":Ljava/io/File;
    .restart local v6    # "pkg":Ljava/lang/String;
    .restart local v9    # "fileSep":Ljava/lang/String;
    :goto_30
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Problem while writing file "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1022
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1023
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    .line 1025
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "outfile":Ljava/io/File;
    .end local v2    # "javafile":Ljava/io/File;
    .end local v3    # "javafilename":Ljava/lang/String;
    .end local v5    # "unannotated":Ljava/io/File;
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v9    # "fileSep":Ljava/lang/String;
    .end local v10    # "imports":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    .end local v12    # "src":Lannotator/Source;
    .end local v15    # "fileLineSep":Ljava/lang/String;
    .end local v26    # "num_insertions":I
    :goto_31
    move-object/from16 v1, v16

    move-object/from16 v10, v21

    move-object/from16 v24, v36

    move-object/from16 v6, v41

    move-object/from16 v2, v44

    move-object/from16 v9, v53

    move-object/from16 v11, v54

    move-object/from16 v12, v55

    goto/16 :goto_d

    .line 697
    .end local v36    # "verb":Lscenelib/annotations/io/DebugWriter;
    .end local v41    # "both":Lscenelib/annotations/io/DebugWriter;
    .end local v53    # "insertions":Lannotator/find/Insertions;
    .end local v54    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .end local v55    # "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    .restart local v3    # "javafilename":Ljava/lang/String;
    .local v5, "javafile":Ljava/io/File;
    .local v6, "both":Lscenelib/annotations/io/DebugWriter;
    .local v7, "verb":Lscenelib/annotations/io/DebugWriter;
    .local v8, "unannotated":Ljava/io/File;
    .local v9, "insertions":Lannotator/find/Insertions;
    .local v11, "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .local v12, "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    .restart local v23    # "fileLineSep":Ljava/lang/String;
    .restart local v25    # "fileSep":Ljava/lang/String;
    :catch_18
    move-exception v0

    move-object v2, v5

    move-object/from16 v41, v6

    move-object/from16 v36, v7

    move-object v5, v8

    move-object/from16 v53, v9

    move-object/from16 v54, v11

    move-object/from16 v55, v12

    move-object/from16 v15, v23

    move-object/from16 v9, v25

    .end local v6    # "both":Lscenelib/annotations/io/DebugWriter;
    .end local v7    # "verb":Lscenelib/annotations/io/DebugWriter;
    .end local v8    # "unannotated":Ljava/io/File;
    .end local v11    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .end local v12    # "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    .end local v23    # "fileLineSep":Ljava/lang/String;
    .end local v25    # "fileSep":Ljava/lang/String;
    .restart local v2    # "javafile":Ljava/io/File;
    .local v5, "unannotated":Ljava/io/File;
    .local v9, "fileSep":Ljava/lang/String;
    .restart local v15    # "fileLineSep":Ljava/lang/String;
    .restart local v36    # "verb":Lscenelib/annotations/io/DebugWriter;
    .restart local v41    # "both":Lscenelib/annotations/io/DebugWriter;
    .restart local v53    # "insertions":Lannotator/find/Insertions;
    .restart local v54    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .restart local v55    # "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    goto :goto_32

    .line 694
    .end local v2    # "javafile":Ljava/io/File;
    .end local v15    # "fileLineSep":Ljava/lang/String;
    .end local v36    # "verb":Lscenelib/annotations/io/DebugWriter;
    .end local v41    # "both":Lscenelib/annotations/io/DebugWriter;
    .end local v53    # "insertions":Lannotator/find/Insertions;
    .end local v54    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .end local v55    # "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    .local v5, "javafile":Ljava/io/File;
    .restart local v6    # "both":Lscenelib/annotations/io/DebugWriter;
    .restart local v7    # "verb":Lscenelib/annotations/io/DebugWriter;
    .restart local v8    # "unannotated":Ljava/io/File;
    .local v9, "insertions":Lannotator/find/Insertions;
    .restart local v11    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .restart local v12    # "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    .restart local v23    # "fileLineSep":Ljava/lang/String;
    .restart local v25    # "fileSep":Ljava/lang/String;
    :catch_19
    move-exception v0

    move-object v2, v5

    move-object/from16 v41, v6

    move-object/from16 v36, v7

    move-object v5, v8

    move-object/from16 v53, v9

    move-object/from16 v54, v11

    move-object/from16 v55, v12

    move-object/from16 v15, v23

    move-object/from16 v9, v25

    .end local v6    # "both":Lscenelib/annotations/io/DebugWriter;
    .end local v7    # "verb":Lscenelib/annotations/io/DebugWriter;
    .end local v8    # "unannotated":Ljava/io/File;
    .end local v11    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .end local v12    # "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    .end local v23    # "fileLineSep":Ljava/lang/String;
    .end local v25    # "fileSep":Ljava/lang/String;
    .restart local v2    # "javafile":Ljava/io/File;
    .local v5, "unannotated":Ljava/io/File;
    .local v9, "fileSep":Ljava/lang/String;
    .restart local v15    # "fileLineSep":Ljava/lang/String;
    .restart local v36    # "verb":Lscenelib/annotations/io/DebugWriter;
    .restart local v41    # "both":Lscenelib/annotations/io/DebugWriter;
    .restart local v53    # "insertions":Lannotator/find/Insertions;
    .restart local v54    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .restart local v55    # "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    goto :goto_33

    .line 697
    .end local v2    # "javafile":Ljava/io/File;
    .end local v15    # "fileLineSep":Ljava/lang/String;
    .end local v36    # "verb":Lscenelib/annotations/io/DebugWriter;
    .end local v41    # "both":Lscenelib/annotations/io/DebugWriter;
    .end local v53    # "insertions":Lannotator/find/Insertions;
    .end local v54    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .end local v55    # "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    .local v5, "javafile":Ljava/io/File;
    .restart local v6    # "both":Lscenelib/annotations/io/DebugWriter;
    .restart local v7    # "verb":Lscenelib/annotations/io/DebugWriter;
    .restart local v8    # "unannotated":Ljava/io/File;
    .local v9, "insertions":Lannotator/find/Insertions;
    .local v10, "fileSep":Ljava/lang/String;
    .restart local v11    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .restart local v12    # "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    .restart local v23    # "fileLineSep":Ljava/lang/String;
    :catch_1a
    move-exception v0

    move-object v2, v5

    move-object/from16 v41, v6

    move-object/from16 v36, v7

    move-object v5, v8

    move-object/from16 v53, v9

    move-object v9, v10

    move-object/from16 v54, v11

    move-object/from16 v55, v12

    move-object/from16 v15, v23

    .end local v6    # "both":Lscenelib/annotations/io/DebugWriter;
    .end local v7    # "verb":Lscenelib/annotations/io/DebugWriter;
    .end local v8    # "unannotated":Ljava/io/File;
    .end local v10    # "fileSep":Ljava/lang/String;
    .end local v11    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .end local v12    # "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    .end local v23    # "fileLineSep":Ljava/lang/String;
    .restart local v2    # "javafile":Ljava/io/File;
    .local v5, "unannotated":Ljava/io/File;
    .local v9, "fileSep":Ljava/lang/String;
    .restart local v15    # "fileLineSep":Ljava/lang/String;
    .restart local v36    # "verb":Lscenelib/annotations/io/DebugWriter;
    .restart local v41    # "both":Lscenelib/annotations/io/DebugWriter;
    .restart local v53    # "insertions":Lannotator/find/Insertions;
    .restart local v54    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .restart local v55    # "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    goto :goto_32

    .line 694
    .end local v2    # "javafile":Ljava/io/File;
    .end local v15    # "fileLineSep":Ljava/lang/String;
    .end local v36    # "verb":Lscenelib/annotations/io/DebugWriter;
    .end local v41    # "both":Lscenelib/annotations/io/DebugWriter;
    .end local v53    # "insertions":Lannotator/find/Insertions;
    .end local v54    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .end local v55    # "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    .local v5, "javafile":Ljava/io/File;
    .restart local v6    # "both":Lscenelib/annotations/io/DebugWriter;
    .restart local v7    # "verb":Lscenelib/annotations/io/DebugWriter;
    .restart local v8    # "unannotated":Ljava/io/File;
    .local v9, "insertions":Lannotator/find/Insertions;
    .restart local v10    # "fileSep":Ljava/lang/String;
    .restart local v11    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .restart local v12    # "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    .restart local v23    # "fileLineSep":Ljava/lang/String;
    :catch_1b
    move-exception v0

    move-object v2, v5

    move-object/from16 v41, v6

    move-object/from16 v36, v7

    move-object v5, v8

    move-object/from16 v53, v9

    move-object v9, v10

    move-object/from16 v54, v11

    move-object/from16 v55, v12

    move-object/from16 v15, v23

    .end local v6    # "both":Lscenelib/annotations/io/DebugWriter;
    .end local v7    # "verb":Lscenelib/annotations/io/DebugWriter;
    .end local v8    # "unannotated":Ljava/io/File;
    .end local v10    # "fileSep":Ljava/lang/String;
    .end local v11    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .end local v12    # "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    .end local v23    # "fileLineSep":Ljava/lang/String;
    .restart local v2    # "javafile":Ljava/io/File;
    .local v5, "unannotated":Ljava/io/File;
    .local v9, "fileSep":Ljava/lang/String;
    .restart local v15    # "fileLineSep":Ljava/lang/String;
    .restart local v36    # "verb":Lscenelib/annotations/io/DebugWriter;
    .restart local v41    # "both":Lscenelib/annotations/io/DebugWriter;
    .restart local v53    # "insertions":Lannotator/find/Insertions;
    .restart local v54    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .restart local v55    # "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    goto :goto_33

    .line 697
    .end local v2    # "javafile":Ljava/io/File;
    .end local v15    # "fileLineSep":Ljava/lang/String;
    .end local v36    # "verb":Lscenelib/annotations/io/DebugWriter;
    .end local v41    # "both":Lscenelib/annotations/io/DebugWriter;
    .end local v53    # "insertions":Lannotator/find/Insertions;
    .end local v54    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .end local v55    # "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    .local v5, "javafile":Ljava/io/File;
    .restart local v6    # "both":Lscenelib/annotations/io/DebugWriter;
    .restart local v7    # "verb":Lscenelib/annotations/io/DebugWriter;
    .restart local v8    # "unannotated":Ljava/io/File;
    .local v9, "insertions":Lannotator/find/Insertions;
    .restart local v10    # "fileSep":Ljava/lang/String;
    .restart local v11    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .restart local v12    # "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    .restart local v23    # "fileLineSep":Ljava/lang/String;
    :catch_1c
    move-exception v0

    move-object v2, v5

    move-object/from16 v41, v6

    move-object/from16 v36, v7

    move-object v5, v8

    move-object/from16 v53, v9

    move-object v9, v10

    move-object/from16 v54, v11

    move-object/from16 v55, v12

    .line 698
    .end local v6    # "both":Lscenelib/annotations/io/DebugWriter;
    .end local v7    # "verb":Lscenelib/annotations/io/DebugWriter;
    .end local v8    # "unannotated":Ljava/io/File;
    .end local v10    # "fileSep":Ljava/lang/String;
    .end local v11    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .end local v12    # "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "javafile":Ljava/io/File;
    .local v5, "unannotated":Ljava/io/File;
    .local v9, "fileSep":Ljava/lang/String;
    .restart local v36    # "verb":Lscenelib/annotations/io/DebugWriter;
    .restart local v41    # "both":Lscenelib/annotations/io/DebugWriter;
    .restart local v53    # "insertions":Lannotator/find/Insertions;
    .restart local v54    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .restart local v55    # "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    :goto_32
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 699
    return-void

    .line 694
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "javafile":Ljava/io/File;
    .end local v36    # "verb":Lscenelib/annotations/io/DebugWriter;
    .end local v41    # "both":Lscenelib/annotations/io/DebugWriter;
    .end local v53    # "insertions":Lannotator/find/Insertions;
    .end local v54    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .end local v55    # "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    .local v5, "javafile":Ljava/io/File;
    .restart local v6    # "both":Lscenelib/annotations/io/DebugWriter;
    .restart local v7    # "verb":Lscenelib/annotations/io/DebugWriter;
    .restart local v8    # "unannotated":Ljava/io/File;
    .local v9, "insertions":Lannotator/find/Insertions;
    .restart local v10    # "fileSep":Ljava/lang/String;
    .restart local v11    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .restart local v12    # "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    :catch_1d
    move-exception v0

    move-object v2, v5

    move-object/from16 v41, v6

    move-object/from16 v36, v7

    move-object v5, v8

    move-object/from16 v53, v9

    move-object v9, v10

    move-object/from16 v54, v11

    move-object/from16 v55, v12

    .line 695
    .end local v6    # "both":Lscenelib/annotations/io/DebugWriter;
    .end local v7    # "verb":Lscenelib/annotations/io/DebugWriter;
    .end local v8    # "unannotated":Ljava/io/File;
    .end local v10    # "fileSep":Ljava/lang/String;
    .end local v11    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .end local v12    # "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    .local v0, "e":Lannotator/Source$CompilerException;
    .restart local v2    # "javafile":Ljava/io/File;
    .local v5, "unannotated":Ljava/io/File;
    .local v9, "fileSep":Ljava/lang/String;
    .restart local v36    # "verb":Lscenelib/annotations/io/DebugWriter;
    .restart local v41    # "both":Lscenelib/annotations/io/DebugWriter;
    .restart local v53    # "insertions":Lannotator/find/Insertions;
    .restart local v54    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .restart local v55    # "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    :goto_33
    invoke-virtual {v0}, Lannotator/Source$CompilerException;->printStackTrace()V

    .line 696
    return-void

    .line 1026
    .end local v0    # "e":Lannotator/Source$CompilerException;
    .end local v2    # "javafile":Ljava/io/File;
    .end local v3    # "javafilename":Ljava/lang/String;
    .end local v5    # "unannotated":Ljava/io/File;
    .end local v21    # "javafiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "fileLineSep":Ljava/lang/String;
    .end local v36    # "verb":Lscenelib/annotations/io/DebugWriter;
    .end local v41    # "both":Lscenelib/annotations/io/DebugWriter;
    .end local v53    # "insertions":Lannotator/find/Insertions;
    .end local v54    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .end local v55    # "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    .restart local v6    # "both":Lscenelib/annotations/io/DebugWriter;
    .local v9, "insertions":Lannotator/find/Insertions;
    .local v10, "javafiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "insertionIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/com/google/common/collect/Multimap<Lannotator/find/Insertion;Lscenelib/annotations/Annotation;>;>;"
    .restart local v12    # "insertionOrigins":Ljava/util/Map;, "Ljava/util/Map<Lannotator/find/Insertion;Ljava/lang/String;>;"
    .local v24, "verb":Lscenelib/annotations/io/DebugWriter;
    :cond_51
    return-void
.end method

.method private static nonJavaLangClasses(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1047
    .local p0, "classnames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1048
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1049
    .local v2, "classname":Ljava/lang/String;
    invoke-static {v2}, Lannotator/Main;->isJavaLangClass(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1050
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1052
    .end local v2    # "classname":Ljava/lang/String;
    :cond_0
    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static removeArgs(Ljava/lang/String;)Lorg/checkerframework/org/plumelib/util/Pair;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/org/plumelib/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1140
    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1141
    .local v0, "pidx":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 1142
    invoke-static {p0, v1}, Lorg/checkerframework/org/plumelib/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v1

    goto :goto_0

    :cond_0
    nop

    .line 1143
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/org/plumelib/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v1

    .line 1141
    :goto_0
    return-object v1
.end method

.method public static treeToString(Lcom/sun/source/tree/Tree;)Ljava/lang/String;
    .locals 4
    .param p0, "node"    # Lcom/sun/source/tree/Tree;

    .line 1073
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1074
    .local v0, "asString":Ljava/lang/String;
    invoke-static {v0}, Lannotator/Main;->first80(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1075
    .local v1, "oneLine":Ljava/lang/String;
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1076
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1079
    :cond_0
    return-object v1
.end method
