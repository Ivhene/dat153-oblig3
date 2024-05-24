.class Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;
.super Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;
.source "ClassAnnotationSceneWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MethodAnnotationSceneWriter"
.end annotation


# instance fields
.field private final aMethod:Lscenelib/annotations/el/AMethod;

.field private final existingMethodAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hasVisitedMethodAnnotations:Z

.field final synthetic this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;


# direct methods
.method constructor <init>(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "mv"    # Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    .line 616
    iput-object p1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    .line 617
    invoke-direct {p0, p4}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;-><init>(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V

    .line 618
    const/4 v0, 0x0

    iput-boolean v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->hasVisitedMethodAnnotations:Z

    .line 619
    invoke-static {p1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$000(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;)Lscenelib/annotations/el/AClass;

    move-result-object p1

    iget-object p1, p1, Lscenelib/annotations/el/AClass;->methods:Lscenelib/annotations/util/coll/VivifyingMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscenelib/annotations/el/AMethod;

    iput-object p1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->aMethod:Lscenelib/annotations/el/AMethod;

    .line 620
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->existingMethodAnnotations:Ljava/util/List;

    .line 621
    return-void
.end method

.method private ensureVisitLambdaExpressionAnnotations()V
    .locals 17

    .line 1105
    move-object/from16 v0, p0

    iget-object v1, v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->aMethod:Lscenelib/annotations/el/AMethod;

    iget-object v1, v1, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v1, v1, Lscenelib/annotations/el/ABlock;->funs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v1}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1106
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/AMethod;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/RelativeLocation;

    invoke-virtual {v3}, Lscenelib/annotations/el/RelativeLocation;->isBytecodeOffset()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1111
    goto :goto_0

    .line 1115
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/AMethod;

    .line 1117
    .local v3, "aLambda":Lscenelib/annotations/el/AMethod;
    iget-object v4, v3, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v4}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1118
    .local v5, "e0":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lscenelib/annotations/el/AField;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lscenelib/annotations/el/AField;

    .line 1119
    .local v6, "aParameter":Lscenelib/annotations/el/AField;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1121
    .local v7, "index":I
    iget-object v8, v6, Lscenelib/annotations/el/AField;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lscenelib/annotations/Annotation;

    .line 1122
    .local v9, "tla":Lscenelib/annotations/Annotation;
    invoke-direct {v0, v9}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->shouldSkip(Lscenelib/annotations/Annotation;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1123
    goto :goto_2

    .line 1126
    :cond_1
    invoke-direct {v0, v9, v7}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->visitParameterAnnotation(Lscenelib/annotations/Annotation;I)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v10

    .line 1127
    .local v10, "av":Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    iget-object v11, v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v11, v10, v9}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$600(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;Lscenelib/annotations/Annotation;)V

    .line 1128
    invoke-interface {v10}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitEnd()V

    .line 1129
    .end local v9    # "tla":Lscenelib/annotations/Annotation;
    .end local v10    # "av":Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    goto :goto_2

    .line 1131
    :cond_2
    iget-object v8, v6, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    iget-object v8, v8, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lscenelib/annotations/Annotation;

    .line 1132
    .restart local v9    # "tla":Lscenelib/annotations/Annotation;
    invoke-direct {v0, v9}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->shouldSkip(Lscenelib/annotations/Annotation;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1133
    goto :goto_3

    .line 1136
    :cond_3
    invoke-direct {v0, v9, v10}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->visitTypeAnnotation(Lscenelib/annotations/Annotation;Z)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v10

    .line 1137
    .local v10, "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    iget-object v11, v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    sget-object v12, Lcom/sun/tools/javac/code/TargetType;->METHOD_FORMAL_PARAMETER:Lcom/sun/tools/javac/code/TargetType;

    invoke-static {v11, v10, v12}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$700(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lcom/sun/tools/javac/code/TargetType;)V

    .line 1140
    iget-object v11, v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v11, v10, v7}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$1300(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;I)V

    .line 1141
    iget-object v11, v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    sget-object v12, Lscenelib/annotations/el/InnerTypeLocation;->EMPTY_INNER_TYPE_LOCATION:Lscenelib/annotations/el/InnerTypeLocation;

    invoke-static {v11, v10, v12}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$800(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/InnerTypeLocation;)V

    .line 1142
    iget-object v11, v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v11, v10, v9}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$900(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/Annotation;)V

    .line 1143
    invoke-interface {v10}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitEnd()V

    .line 1144
    .end local v9    # "tla":Lscenelib/annotations/Annotation;
    .end local v10    # "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    goto :goto_3

    .line 1147
    :cond_4
    iget-object v8, v6, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    iget-object v8, v8, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v8}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 1148
    .local v9, "e1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/InnerTypeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lscenelib/annotations/el/InnerTypeLocation;

    .line 1149
    .local v11, "aParameterLocation":Lscenelib/annotations/el/InnerTypeLocation;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lscenelib/annotations/el/ATypeElement;

    .line 1150
    .local v12, "aInnerType":Lscenelib/annotations/el/ATypeElement;
    iget-object v13, v12, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lscenelib/annotations/Annotation;

    .line 1151
    .local v14, "tla":Lscenelib/annotations/Annotation;
    invoke-direct {v0, v14}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->shouldSkip(Lscenelib/annotations/Annotation;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 1152
    goto :goto_5

    .line 1155
    :cond_5
    invoke-direct {v0, v14, v10}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->visitTypeAnnotation(Lscenelib/annotations/Annotation;Z)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v15

    .line 1156
    .local v15, "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    iget-object v10, v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    move-object/from16 v16, v1

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->METHOD_FORMAL_PARAMETER:Lcom/sun/tools/javac/code/TargetType;

    invoke-static {v10, v15, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$700(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lcom/sun/tools/javac/code/TargetType;)V

    .line 1159
    iget-object v1, v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v1, v15, v7}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$1300(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;I)V

    .line 1160
    iget-object v1, v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v1, v15, v11}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$800(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/InnerTypeLocation;)V

    .line 1161
    iget-object v1, v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v1, v15, v14}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$900(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/Annotation;)V

    .line 1162
    invoke-interface {v15}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitEnd()V

    .line 1163
    .end local v14    # "tla":Lscenelib/annotations/Annotation;
    .end local v15    # "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    move-object/from16 v1, v16

    const/4 v10, 0x0

    goto :goto_5

    .line 1150
    :cond_6
    move-object/from16 v16, v1

    .line 1164
    .end local v9    # "e1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/InnerTypeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v11    # "aParameterLocation":Lscenelib/annotations/el/InnerTypeLocation;
    .end local v12    # "aInnerType":Lscenelib/annotations/el/ATypeElement;
    const/4 v10, 0x0

    goto :goto_4

    .line 1147
    :cond_7
    move-object/from16 v16, v1

    .line 1165
    .end local v5    # "e0":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lscenelib/annotations/el/AField;>;"
    .end local v6    # "aParameter":Lscenelib/annotations/el/AField;
    .end local v7    # "index":I
    goto/16 :goto_1

    .line 1117
    :cond_8
    move-object/from16 v16, v1

    .line 1166
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/AMethod;>;"
    .end local v3    # "aLambda":Lscenelib/annotations/el/AMethod;
    goto/16 :goto_0

    .line 1167
    :cond_9
    return-void
.end method

.method private ensureVisitLocalVariablesAnnotations()V
    .locals 14

    .line 803
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->aMethod:Lscenelib/annotations/el/AMethod;

    iget-object v0, v0, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v0, v0, Lscenelib/annotations/el/ABlock;->locals:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 804
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/LocalLocation;Lscenelib/annotations/el/AField;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/LocalLocation;

    .line 805
    .local v2, "localLocation":Lscenelib/annotations/el/LocalLocation;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/AElement;

    .line 807
    .local v3, "aLocation":Lscenelib/annotations/el/AElement;
    iget-object v4, v3, Lscenelib/annotations/el/AElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lscenelib/annotations/Annotation;

    .line 808
    .local v5, "tla":Lscenelib/annotations/Annotation;
    invoke-direct {p0, v5}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->shouldSkip(Lscenelib/annotations/Annotation;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 809
    goto :goto_1

    .line 812
    :cond_0
    invoke-direct {p0, v5, v6}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->visitTypeAnnotation(Lscenelib/annotations/Annotation;Z)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v6

    .line 813
    .local v6, "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    iget-object v7, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    sget-object v8, Lcom/sun/tools/javac/code/TargetType;->LOCAL_VARIABLE:Lcom/sun/tools/javac/code/TargetType;

    invoke-static {v7, v6, v8}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$700(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lcom/sun/tools/javac/code/TargetType;)V

    .line 814
    iget-object v7, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v7, v6, v2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$1100(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/LocalLocation;)V

    .line 815
    iget-object v7, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    sget-object v8, Lscenelib/annotations/el/InnerTypeLocation;->EMPTY_INNER_TYPE_LOCATION:Lscenelib/annotations/el/InnerTypeLocation;

    invoke-static {v7, v6, v8}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$800(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/InnerTypeLocation;)V

    .line 816
    iget-object v7, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v7, v6, v5}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$900(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/Annotation;)V

    .line 817
    invoke-interface {v6}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitEnd()V

    .line 818
    .end local v5    # "tla":Lscenelib/annotations/Annotation;
    .end local v6    # "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    goto :goto_1

    .line 822
    :cond_1
    iget-object v4, v3, Lscenelib/annotations/el/AElement;->type:Lscenelib/annotations/el/ATypeElement;

    iget-object v4, v4, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v4}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 823
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/InnerTypeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lscenelib/annotations/el/InnerTypeLocation;

    .line 824
    .local v7, "localVariableLocation":Lscenelib/annotations/el/InnerTypeLocation;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lscenelib/annotations/el/ATypeElement;

    .line 825
    .local v8, "aInnerType":Lscenelib/annotations/el/ATypeElement;
    iget-object v9, v8, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lscenelib/annotations/Annotation;

    .line 826
    .local v10, "tla":Lscenelib/annotations/Annotation;
    invoke-direct {p0, v10}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->shouldSkip(Lscenelib/annotations/Annotation;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 827
    goto :goto_3

    .line 830
    :cond_2
    invoke-direct {p0, v10, v6}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->visitTypeAnnotation(Lscenelib/annotations/Annotation;Z)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v11

    .line 831
    .local v11, "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    iget-object v12, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    sget-object v13, Lcom/sun/tools/javac/code/TargetType;->LOCAL_VARIABLE:Lcom/sun/tools/javac/code/TargetType;

    invoke-static {v12, v11, v13}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$700(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lcom/sun/tools/javac/code/TargetType;)V

    .line 833
    iget-object v12, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v12, v11, v2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$1100(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/LocalLocation;)V

    .line 835
    iget-object v12, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v12, v11, v7}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$800(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/InnerTypeLocation;)V

    .line 836
    iget-object v12, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v12, v11, v10}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$900(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/Annotation;)V

    .line 837
    invoke-interface {v11}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitEnd()V

    .line 838
    .end local v10    # "tla":Lscenelib/annotations/Annotation;
    .end local v11    # "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    goto :goto_3

    .line 839
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/InnerTypeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v7    # "localVariableLocation":Lscenelib/annotations/el/InnerTypeLocation;
    .end local v8    # "aInnerType":Lscenelib/annotations/el/ATypeElement;
    :cond_3
    goto :goto_2

    .line 840
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/LocalLocation;Lscenelib/annotations/el/AField;>;"
    .end local v2    # "localLocation":Lscenelib/annotations/el/LocalLocation;
    .end local v3    # "aLocation":Lscenelib/annotations/el/AElement;
    :cond_4
    goto/16 :goto_0

    .line 841
    :cond_5
    return-void
.end method

.method private ensureVisitMemberReferenceAnnotations()V
    .locals 17

    .line 1171
    move-object/from16 v0, p0

    iget-object v1, v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->aMethod:Lscenelib/annotations/el/AMethod;

    iget-object v1, v1, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v1, v1, Lscenelib/annotations/el/ABlock;->refs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v1}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1172
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/RelativeLocation;

    invoke-virtual {v3}, Lscenelib/annotations/el/RelativeLocation;->isBytecodeOffset()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1177
    goto :goto_0

    .line 1179
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/RelativeLocation;

    iget v3, v3, Lscenelib/annotations/el/RelativeLocation;->offset:I

    .line 1180
    .local v3, "offset":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscenelib/annotations/el/RelativeLocation;

    iget v4, v4, Lscenelib/annotations/el/RelativeLocation;->type_index:I

    .line 1181
    .local v4, "typeIndex":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lscenelib/annotations/el/ATypeElement;

    .line 1182
    .local v5, "aTypeArg":Lscenelib/annotations/el/ATypeElement;
    iget-object v6, v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v6}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$1500(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;)Ljava/util/Map;

    move-result-object v6

    iget-object v7, v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->aMethod:Lscenelib/annotations/el/AMethod;

    iget-object v7, v7, Lscenelib/annotations/el/AMethod;->methodName:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 1183
    .local v6, "lset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    .line 1184
    :cond_1
    iget-object v7, v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v7}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$1600(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;)Ljava/util/Map;

    move-result-object v7

    iget-object v8, v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->aMethod:Lscenelib/annotations/el/AMethod;

    iget-object v8, v8, Lscenelib/annotations/el/AMethod;->methodName:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 1185
    .local v7, "cset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v7, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v8, Lcom/sun/tools/javac/code/TargetType;->CONSTRUCTOR_REFERENCE_TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TargetType;

    goto :goto_1

    :cond_2
    sget-object v8, Lcom/sun/tools/javac/code/TargetType;->METHOD_REFERENCE_TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TargetType;

    .line 1189
    .local v8, "tt":Lcom/sun/tools/javac/code/TargetType;
    :goto_1
    iget-object v9, v5, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lscenelib/annotations/Annotation;

    .line 1190
    .local v10, "tla":Lscenelib/annotations/Annotation;
    invoke-direct {v0, v10}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->shouldSkip(Lscenelib/annotations/Annotation;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1191
    goto :goto_2

    .line 1194
    :cond_3
    invoke-direct {v0, v10, v11}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->visitTypeAnnotation(Lscenelib/annotations/Annotation;Z)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v11

    .line 1195
    .local v11, "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    iget-object v12, v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v12, v11, v8}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$700(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lcom/sun/tools/javac/code/TargetType;)V

    .line 1196
    iget-object v12, v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v12, v11, v3}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$1200(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;I)V

    .line 1197
    iget-object v12, v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v12, v11, v4}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$1400(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;I)V

    .line 1198
    iget-object v12, v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    sget-object v13, Lscenelib/annotations/el/InnerTypeLocation;->EMPTY_INNER_TYPE_LOCATION:Lscenelib/annotations/el/InnerTypeLocation;

    invoke-static {v12, v11, v13}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$800(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/InnerTypeLocation;)V

    .line 1199
    iget-object v12, v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v12, v11, v10}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$900(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/Annotation;)V

    .line 1200
    invoke-interface {v11}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitEnd()V

    .line 1201
    .end local v10    # "tla":Lscenelib/annotations/Annotation;
    .end local v11    # "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    goto :goto_2

    .line 1205
    :cond_4
    iget-object v9, v5, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v9}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 1206
    .local v10, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/InnerTypeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lscenelib/annotations/el/InnerTypeLocation;

    .line 1207
    .local v12, "aTypeArgLocation":Lscenelib/annotations/el/InnerTypeLocation;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lscenelib/annotations/el/AElement;

    .line 1208
    .local v13, "aInnerType":Lscenelib/annotations/el/AElement;
    iget-object v14, v13, Lscenelib/annotations/el/AElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lscenelib/annotations/Annotation;

    .line 1209
    .local v15, "tla":Lscenelib/annotations/Annotation;
    invoke-direct {v0, v15}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->shouldSkip(Lscenelib/annotations/Annotation;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 1210
    goto :goto_4

    .line 1213
    :cond_5
    move-object/from16 v16, v1

    invoke-direct {v0, v15, v11}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->visitTypeAnnotation(Lscenelib/annotations/Annotation;Z)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v1

    .line 1214
    .local v1, "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    iget-object v11, v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v11, v1, v8}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$700(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lcom/sun/tools/javac/code/TargetType;)V

    .line 1215
    iget-object v11, v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v11, v1, v3}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$1200(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;I)V

    .line 1216
    iget-object v11, v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v11, v1, v4}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$1400(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;I)V

    .line 1217
    iget-object v11, v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v11, v1, v12}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$800(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/InnerTypeLocation;)V

    .line 1218
    iget-object v11, v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v11, v1, v15}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$900(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/Annotation;)V

    .line 1219
    invoke-interface {v1}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitEnd()V

    .line 1220
    .end local v1    # "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .end local v15    # "tla":Lscenelib/annotations/Annotation;
    move-object/from16 v1, v16

    const/4 v11, 0x1

    goto :goto_4

    .line 1208
    :cond_6
    move-object/from16 v16, v1

    .line 1221
    .end local v10    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/InnerTypeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v12    # "aTypeArgLocation":Lscenelib/annotations/el/InnerTypeLocation;
    .end local v13    # "aInnerType":Lscenelib/annotations/el/AElement;
    const/4 v11, 0x1

    goto :goto_3

    .line 1205
    :cond_7
    move-object/from16 v16, v1

    .line 1222
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v3    # "offset":I
    .end local v4    # "typeIndex":I
    .end local v5    # "aTypeArg":Lscenelib/annotations/el/ATypeElement;
    .end local v6    # "lset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v7    # "cset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v8    # "tt":Lcom/sun/tools/javac/code/TargetType;
    goto/16 :goto_0

    .line 1223
    :cond_8
    return-void
.end method

.method private ensureVisitMethodDeclarationAnnotations()V
    .locals 4

    .line 707
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->aMethod:Lscenelib/annotations/el/AMethod;

    iget-object v0, v0, Lscenelib/annotations/el/AMethod;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/Annotation;

    .line 708
    .local v1, "tla":Lscenelib/annotations/Annotation;
    invoke-direct {p0, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->shouldSkip(Lscenelib/annotations/Annotation;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 709
    goto :goto_0

    .line 712
    :cond_0
    invoke-direct {p0, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->visitAnnotation(Lscenelib/annotations/Annotation;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v2

    .line 713
    .local v2, "av":Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    iget-object v3, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v3, v2, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$600(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;Lscenelib/annotations/Annotation;)V

    .line 714
    invoke-interface {v2}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitEnd()V

    .line 715
    .end local v1    # "tla":Lscenelib/annotations/Annotation;
    .end local v2    # "av":Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    goto :goto_0

    .line 716
    :cond_1
    return-void
.end method

.method private ensureVisitMethodInvocationAnnotations()V
    .locals 17

    .line 1227
    move-object/from16 v0, p0

    iget-object v1, v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->aMethod:Lscenelib/annotations/el/AMethod;

    iget-object v1, v1, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v1, v1, Lscenelib/annotations/el/ABlock;->calls:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v1}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1228
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/RelativeLocation;

    invoke-virtual {v3}, Lscenelib/annotations/el/RelativeLocation;->isBytecodeOffset()Z

    .line 1234
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/RelativeLocation;

    iget v3, v3, Lscenelib/annotations/el/RelativeLocation;->offset:I

    .line 1235
    .local v3, "offset":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscenelib/annotations/el/RelativeLocation;

    iget v4, v4, Lscenelib/annotations/el/RelativeLocation;->type_index:I

    .line 1236
    .local v4, "typeIndex":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lscenelib/annotations/el/ATypeElement;

    .line 1237
    .local v5, "aCall":Lscenelib/annotations/el/ATypeElement;
    iget-object v6, v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v6}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$1600(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;)Ljava/util/Map;

    move-result-object v6

    iget-object v7, v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->aMethod:Lscenelib/annotations/el/AMethod;

    iget-object v7, v7, Lscenelib/annotations/el/AMethod;->methodName:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 1238
    .local v6, "cset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v6, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/sun/tools/javac/code/TargetType;->CONSTRUCTOR_INVOCATION_TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TargetType;

    goto :goto_1

    :cond_0
    sget-object v7, Lcom/sun/tools/javac/code/TargetType;->METHOD_INVOCATION_TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TargetType;

    .line 1242
    .local v7, "tt":Lcom/sun/tools/javac/code/TargetType;
    :goto_1
    iget-object v8, v5, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lscenelib/annotations/Annotation;

    .line 1243
    .local v9, "tla":Lscenelib/annotations/Annotation;
    invoke-direct {v0, v9}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->shouldSkip(Lscenelib/annotations/Annotation;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1244
    goto :goto_2

    .line 1247
    :cond_1
    invoke-direct {v0, v9, v10}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->visitTypeAnnotation(Lscenelib/annotations/Annotation;Z)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v10

    .line 1248
    .local v10, "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    iget-object v11, v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v11, v10, v7}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$700(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lcom/sun/tools/javac/code/TargetType;)V

    .line 1249
    iget-object v11, v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v11, v10, v3}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$1200(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;I)V

    .line 1250
    iget-object v11, v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v11, v10, v4}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$1400(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;I)V

    .line 1251
    iget-object v11, v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    sget-object v12, Lscenelib/annotations/el/InnerTypeLocation;->EMPTY_INNER_TYPE_LOCATION:Lscenelib/annotations/el/InnerTypeLocation;

    invoke-static {v11, v10, v12}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$800(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/InnerTypeLocation;)V

    .line 1252
    iget-object v11, v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v11, v10, v9}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$900(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/Annotation;)V

    .line 1253
    invoke-interface {v10}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitEnd()V

    .line 1254
    .end local v9    # "tla":Lscenelib/annotations/Annotation;
    .end local v10    # "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    goto :goto_2

    .line 1258
    :cond_2
    iget-object v8, v5, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v8}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 1259
    .local v9, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/InnerTypeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lscenelib/annotations/el/InnerTypeLocation;

    .line 1260
    .local v11, "aCallLocation":Lscenelib/annotations/el/InnerTypeLocation;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lscenelib/annotations/el/AElement;

    .line 1261
    .local v12, "aInnerType":Lscenelib/annotations/el/AElement;
    iget-object v13, v12, Lscenelib/annotations/el/AElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lscenelib/annotations/Annotation;

    .line 1262
    .local v14, "tla":Lscenelib/annotations/Annotation;
    invoke-direct {v0, v14}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->shouldSkip(Lscenelib/annotations/Annotation;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1263
    goto :goto_4

    .line 1266
    :cond_3
    invoke-direct {v0, v14, v10}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->visitTypeAnnotation(Lscenelib/annotations/Annotation;Z)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v15

    .line 1267
    .local v15, "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    iget-object v10, v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    move-object/from16 v16, v1

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->INSTANCEOF:Lcom/sun/tools/javac/code/TargetType;

    invoke-static {v10, v15, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$700(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lcom/sun/tools/javac/code/TargetType;)V

    .line 1268
    iget-object v1, v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v1, v15, v3}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$1200(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;I)V

    .line 1269
    iget-object v1, v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v1, v15, v4}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$1400(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;I)V

    .line 1270
    iget-object v1, v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v1, v15, v11}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$800(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/InnerTypeLocation;)V

    .line 1271
    iget-object v1, v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v1, v15, v14}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$900(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/Annotation;)V

    .line 1272
    invoke-interface {v15}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitEnd()V

    .line 1273
    .end local v14    # "tla":Lscenelib/annotations/Annotation;
    .end local v15    # "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    move-object/from16 v1, v16

    const/4 v10, 0x1

    goto :goto_4

    .line 1261
    :cond_4
    move-object/from16 v16, v1

    .line 1274
    .end local v9    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/InnerTypeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v11    # "aCallLocation":Lscenelib/annotations/el/InnerTypeLocation;
    .end local v12    # "aInnerType":Lscenelib/annotations/el/AElement;
    const/4 v10, 0x1

    goto :goto_3

    .line 1258
    :cond_5
    move-object/from16 v16, v1

    .line 1275
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v3    # "offset":I
    .end local v4    # "typeIndex":I
    .end local v5    # "aCall":Lscenelib/annotations/el/ATypeElement;
    .end local v6    # "cset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v7    # "tt":Lcom/sun/tools/javac/code/TargetType;
    goto/16 :goto_0

    .line 1276
    :cond_6
    return-void
.end method

.method private ensureVisitObjectCreationAnnotations()V
    .locals 14

    .line 848
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->aMethod:Lscenelib/annotations/el/AMethod;

    iget-object v0, v0, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v0, v0, Lscenelib/annotations/el/ABlock;->news:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 849
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/RelativeLocation;

    invoke-virtual {v2}, Lscenelib/annotations/el/RelativeLocation;->isBytecodeOffset()Z

    .line 855
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/RelativeLocation;

    iget v2, v2, Lscenelib/annotations/el/RelativeLocation;->offset:I

    .line 856
    .local v2, "offset":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/ATypeElement;

    .line 857
    .local v3, "aNew":Lscenelib/annotations/el/ATypeElement;
    iget-object v4, v3, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lscenelib/annotations/Annotation;

    .line 858
    .local v5, "tla":Lscenelib/annotations/Annotation;
    invoke-direct {p0, v5}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->shouldSkip(Lscenelib/annotations/Annotation;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 859
    goto :goto_1

    .line 862
    :cond_0
    invoke-direct {p0, v5, v6}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->visitTypeAnnotation(Lscenelib/annotations/Annotation;Z)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v6

    .line 863
    .local v6, "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    iget-object v7, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    sget-object v8, Lcom/sun/tools/javac/code/TargetType;->NEW:Lcom/sun/tools/javac/code/TargetType;

    invoke-static {v7, v6, v8}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$700(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lcom/sun/tools/javac/code/TargetType;)V

    .line 864
    iget-object v7, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v7, v6, v2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$1200(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;I)V

    .line 865
    iget-object v7, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    sget-object v8, Lscenelib/annotations/el/InnerTypeLocation;->EMPTY_INNER_TYPE_LOCATION:Lscenelib/annotations/el/InnerTypeLocation;

    invoke-static {v7, v6, v8}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$800(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/InnerTypeLocation;)V

    .line 866
    iget-object v7, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v7, v6, v5}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$900(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/Annotation;)V

    .line 867
    invoke-interface {v6}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitEnd()V

    .line 868
    .end local v5    # "tla":Lscenelib/annotations/Annotation;
    .end local v6    # "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    goto :goto_1

    .line 872
    :cond_1
    iget-object v4, v3, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v4}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 873
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/InnerTypeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lscenelib/annotations/el/InnerTypeLocation;

    .line 874
    .local v7, "aNewLocation":Lscenelib/annotations/el/InnerTypeLocation;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lscenelib/annotations/el/ATypeElement;

    .line 875
    .local v8, "aInnerType":Lscenelib/annotations/el/ATypeElement;
    iget-object v9, v8, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lscenelib/annotations/Annotation;

    .line 876
    .local v10, "tla":Lscenelib/annotations/Annotation;
    invoke-direct {p0, v10}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->shouldSkip(Lscenelib/annotations/Annotation;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 877
    goto :goto_3

    .line 880
    :cond_2
    invoke-direct {p0, v10, v6}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->visitTypeAnnotation(Lscenelib/annotations/Annotation;Z)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v11

    .line 881
    .local v11, "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    iget-object v12, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    sget-object v13, Lcom/sun/tools/javac/code/TargetType;->NEW:Lcom/sun/tools/javac/code/TargetType;

    invoke-static {v12, v11, v13}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$700(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lcom/sun/tools/javac/code/TargetType;)V

    .line 883
    iget-object v12, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v12, v11, v2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$1200(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;I)V

    .line 885
    iget-object v12, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v12, v11, v7}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$800(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/InnerTypeLocation;)V

    .line 886
    iget-object v12, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v12, v11, v10}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$900(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/Annotation;)V

    .line 887
    invoke-interface {v11}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitEnd()V

    .line 888
    .end local v10    # "tla":Lscenelib/annotations/Annotation;
    .end local v11    # "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    goto :goto_3

    .line 889
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/InnerTypeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v7    # "aNewLocation":Lscenelib/annotations/el/InnerTypeLocation;
    .end local v8    # "aInnerType":Lscenelib/annotations/el/ATypeElement;
    :cond_3
    goto :goto_2

    .line 890
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v2    # "offset":I
    .end local v3    # "aNew":Lscenelib/annotations/el/ATypeElement;
    :cond_4
    goto/16 :goto_0

    .line 891
    :cond_5
    return-void
.end method

.method private ensureVisitParameterAnnotations()V
    .locals 14

    .line 898
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->aMethod:Lscenelib/annotations/el/AMethod;

    iget-object v0, v0, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 899
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lscenelib/annotations/el/AField;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/AField;

    .line 900
    .local v2, "aParameter":Lscenelib/annotations/el/AField;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 902
    .local v3, "index":I
    iget-object v4, v2, Lscenelib/annotations/el/AField;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lscenelib/annotations/Annotation;

    .line 903
    .local v5, "tla":Lscenelib/annotations/Annotation;
    invoke-direct {p0, v5}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->shouldSkip(Lscenelib/annotations/Annotation;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 904
    goto :goto_1

    .line 907
    :cond_0
    invoke-direct {p0, v5, v3}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->visitParameterAnnotation(Lscenelib/annotations/Annotation;I)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v6

    .line 908
    .local v6, "av":Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    iget-object v7, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v7, v6, v5}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$600(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;Lscenelib/annotations/Annotation;)V

    .line 909
    invoke-interface {v6}, Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;->visitEnd()V

    .line 910
    .end local v5    # "tla":Lscenelib/annotations/Annotation;
    .end local v6    # "av":Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    goto :goto_1

    .line 913
    :cond_1
    iget-object v4, v2, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    iget-object v4, v4, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lscenelib/annotations/Annotation;

    .line 914
    .restart local v5    # "tla":Lscenelib/annotations/Annotation;
    invoke-direct {p0, v5}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->shouldSkip(Lscenelib/annotations/Annotation;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 915
    goto :goto_2

    .line 918
    :cond_2
    invoke-direct {p0, v5, v6}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->visitTypeAnnotation(Lscenelib/annotations/Annotation;Z)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v6

    .line 919
    .local v6, "av":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    iget-object v7, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    sget-object v8, Lcom/sun/tools/javac/code/TargetType;->METHOD_FORMAL_PARAMETER:Lcom/sun/tools/javac/code/TargetType;

    invoke-static {v7, v6, v8}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$700(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lcom/sun/tools/javac/code/TargetType;)V

    .line 920
    iget-object v7, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v7, v6, v3}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$1300(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;I)V

    .line 921
    iget-object v7, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    sget-object v8, Lscenelib/annotations/el/InnerTypeLocation;->EMPTY_INNER_TYPE_LOCATION:Lscenelib/annotations/el/InnerTypeLocation;

    invoke-static {v7, v6, v8}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$800(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/InnerTypeLocation;)V

    .line 922
    iget-object v7, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v7, v6, v5}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$900(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/Annotation;)V

    .line 923
    invoke-interface {v6}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitEnd()V

    .line 924
    .end local v5    # "tla":Lscenelib/annotations/Annotation;
    .end local v6    # "av":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    goto :goto_2

    .line 928
    :cond_3
    iget-object v4, v2, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    iget-object v4, v4, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v4}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 929
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/InnerTypeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lscenelib/annotations/el/InnerTypeLocation;

    .line 930
    .local v7, "aParameterLocation":Lscenelib/annotations/el/InnerTypeLocation;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lscenelib/annotations/el/ATypeElement;

    .line 931
    .local v8, "aInnerType":Lscenelib/annotations/el/ATypeElement;
    iget-object v9, v8, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lscenelib/annotations/Annotation;

    .line 932
    .local v10, "tla":Lscenelib/annotations/Annotation;
    invoke-direct {p0, v10}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->shouldSkip(Lscenelib/annotations/Annotation;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 933
    goto :goto_4

    .line 936
    :cond_4
    invoke-direct {p0, v10, v6}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->visitTypeAnnotation(Lscenelib/annotations/Annotation;Z)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v11

    .line 937
    .local v11, "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    iget-object v12, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    sget-object v13, Lcom/sun/tools/javac/code/TargetType;->METHOD_FORMAL_PARAMETER:Lcom/sun/tools/javac/code/TargetType;

    invoke-static {v12, v11, v13}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$700(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lcom/sun/tools/javac/code/TargetType;)V

    .line 942
    iget-object v12, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v12, v11, v3}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$1300(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;I)V

    .line 943
    iget-object v12, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v12, v11, v7}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$800(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/InnerTypeLocation;)V

    .line 944
    iget-object v12, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v12, v11, v10}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$900(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/Annotation;)V

    .line 945
    invoke-interface {v11}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitEnd()V

    .line 946
    .end local v10    # "tla":Lscenelib/annotations/Annotation;
    .end local v11    # "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    goto :goto_4

    .line 947
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/InnerTypeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v7    # "aParameterLocation":Lscenelib/annotations/el/InnerTypeLocation;
    .end local v8    # "aInnerType":Lscenelib/annotations/el/ATypeElement;
    :cond_5
    goto :goto_3

    .line 948
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lscenelib/annotations/el/AField;>;"
    .end local v2    # "aParameter":Lscenelib/annotations/el/AField;
    .end local v3    # "index":I
    :cond_6
    goto/16 :goto_0

    .line 949
    :cond_7
    return-void
.end method

.method private ensureVisitReceiverAnnotations()V
    .locals 11

    .line 955
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->aMethod:Lscenelib/annotations/el/AMethod;

    iget-object v0, v0, Lscenelib/annotations/el/AMethod;->receiver:Lscenelib/annotations/el/AField;

    .line 967
    .local v0, "aReceiver":Lscenelib/annotations/el/AField;
    iget-object v1, v0, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    iget-object v1, v1, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/Annotation;

    .line 968
    .local v2, "tla":Lscenelib/annotations/Annotation;
    invoke-direct {p0, v2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->shouldSkip(Lscenelib/annotations/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 969
    goto :goto_0

    .line 972
    :cond_0
    invoke-direct {p0, v2, v3}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->visitTypeAnnotation(Lscenelib/annotations/Annotation;Z)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v3

    .line 973
    .local v3, "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    iget-object v4, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    sget-object v5, Lcom/sun/tools/javac/code/TargetType;->METHOD_RECEIVER:Lcom/sun/tools/javac/code/TargetType;

    invoke-static {v4, v3, v5}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$700(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lcom/sun/tools/javac/code/TargetType;)V

    .line 974
    iget-object v4, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    sget-object v5, Lscenelib/annotations/el/InnerTypeLocation;->EMPTY_INNER_TYPE_LOCATION:Lscenelib/annotations/el/InnerTypeLocation;

    invoke-static {v4, v3, v5}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$800(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/InnerTypeLocation;)V

    .line 975
    iget-object v4, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v4, v3, v2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$900(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/Annotation;)V

    .line 976
    invoke-interface {v3}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitEnd()V

    .line 977
    .end local v2    # "tla":Lscenelib/annotations/Annotation;
    .end local v3    # "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    goto :goto_0

    .line 981
    :cond_1
    iget-object v1, v0, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    iget-object v1, v1, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v1}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 982
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/InnerTypeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscenelib/annotations/el/InnerTypeLocation;

    .line 983
    .local v4, "aReceiverLocation":Lscenelib/annotations/el/InnerTypeLocation;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lscenelib/annotations/el/ATypeElement;

    .line 984
    .local v5, "aInnerType":Lscenelib/annotations/el/ATypeElement;
    iget-object v6, v5, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lscenelib/annotations/Annotation;

    .line 985
    .local v7, "tla":Lscenelib/annotations/Annotation;
    invoke-direct {p0, v7}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->shouldSkip(Lscenelib/annotations/Annotation;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 986
    goto :goto_2

    .line 989
    :cond_2
    invoke-direct {p0, v7, v3}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->visitTypeAnnotation(Lscenelib/annotations/Annotation;Z)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v8

    .line 990
    .local v8, "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    iget-object v9, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    sget-object v10, Lcom/sun/tools/javac/code/TargetType;->METHOD_RECEIVER:Lcom/sun/tools/javac/code/TargetType;

    invoke-static {v9, v8, v10}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$700(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lcom/sun/tools/javac/code/TargetType;)V

    .line 992
    iget-object v9, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v9, v8, v4}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$800(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/InnerTypeLocation;)V

    .line 993
    iget-object v9, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v9, v8, v7}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$900(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/Annotation;)V

    .line 994
    invoke-interface {v8}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitEnd()V

    .line 995
    .end local v7    # "tla":Lscenelib/annotations/Annotation;
    .end local v8    # "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    goto :goto_2

    .line 996
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/InnerTypeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v4    # "aReceiverLocation":Lscenelib/annotations/el/InnerTypeLocation;
    .end local v5    # "aInnerType":Lscenelib/annotations/el/ATypeElement;
    :cond_3
    goto :goto_1

    .line 998
    :cond_4
    return-void
.end method

.method private ensureVisitReturnTypeAnnotations()V
    .locals 10

    .line 723
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->aMethod:Lscenelib/annotations/el/AMethod;

    iget-object v0, v0, Lscenelib/annotations/el/AMethod;->returnType:Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/Annotation;

    .line 724
    .local v1, "tla":Lscenelib/annotations/Annotation;
    invoke-direct {p0, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->shouldSkip(Lscenelib/annotations/Annotation;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 725
    goto :goto_0

    .line 728
    :cond_0
    invoke-direct {p0, v1, v2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->visitTypeAnnotation(Lscenelib/annotations/Annotation;Z)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v2

    .line 729
    .local v2, "av":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    iget-object v3, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    sget-object v4, Lcom/sun/tools/javac/code/TargetType;->METHOD_RETURN:Lcom/sun/tools/javac/code/TargetType;

    invoke-static {v3, v2, v4}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$700(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lcom/sun/tools/javac/code/TargetType;)V

    .line 730
    iget-object v3, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    sget-object v4, Lscenelib/annotations/el/InnerTypeLocation;->EMPTY_INNER_TYPE_LOCATION:Lscenelib/annotations/el/InnerTypeLocation;

    invoke-static {v3, v2, v4}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$800(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/InnerTypeLocation;)V

    .line 731
    iget-object v3, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v3, v2, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$900(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/Annotation;)V

    .line 732
    invoke-interface {v2}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitEnd()V

    .line 733
    .end local v1    # "tla":Lscenelib/annotations/Annotation;
    .end local v2    # "av":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    goto :goto_0

    .line 737
    :cond_1
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->aMethod:Lscenelib/annotations/el/AMethod;

    iget-object v0, v0, Lscenelib/annotations/el/AMethod;->returnType:Lscenelib/annotations/el/ATypeElement;

    iget-object v0, v0, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 738
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/InnerTypeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/InnerTypeLocation;

    .line 739
    .local v3, "loc":Lscenelib/annotations/el/InnerTypeLocation;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscenelib/annotations/el/ATypeElement;

    .line 741
    .local v4, "innerType":Lscenelib/annotations/el/ATypeElement;
    iget-object v5, v4, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lscenelib/annotations/Annotation;

    .line 742
    .local v6, "tla":Lscenelib/annotations/Annotation;
    invoke-direct {p0, v6, v2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->visitTypeAnnotation(Lscenelib/annotations/Annotation;Z)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v7

    .line 744
    .local v7, "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    iget-object v8, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    sget-object v9, Lcom/sun/tools/javac/code/TargetType;->METHOD_RETURN:Lcom/sun/tools/javac/code/TargetType;

    invoke-static {v8, v7, v9}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$700(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lcom/sun/tools/javac/code/TargetType;)V

    .line 748
    iget-object v8, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v8, v7, v3}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$800(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/InnerTypeLocation;)V

    .line 749
    iget-object v8, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v8, v7, v6}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$900(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/Annotation;)V

    .line 750
    invoke-interface {v7}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitEnd()V

    .line 751
    .end local v6    # "tla":Lscenelib/annotations/Annotation;
    .end local v7    # "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    goto :goto_2

    .line 752
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/InnerTypeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v3    # "loc":Lscenelib/annotations/el/InnerTypeLocation;
    .end local v4    # "innerType":Lscenelib/annotations/el/ATypeElement;
    :cond_2
    goto :goto_1

    .line 754
    :cond_3
    return-void
.end method

.method private ensureVisitSceneMethodAnnotations()V
    .locals 1

    .line 1283
    iget-boolean v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->hasVisitedMethodAnnotations:Z

    if-nez v0, :cond_0

    .line 1284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->hasVisitedMethodAnnotations:Z

    .line 1286
    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->ensureVisitMethodDeclarationAnnotations()V

    .line 1287
    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->ensureVisitReturnTypeAnnotations()V

    .line 1292
    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->ensureVisitTypeParameterBoundAnnotations()V

    .line 1293
    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->ensureVisitLocalVariablesAnnotations()V

    .line 1294
    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->ensureVisitObjectCreationAnnotations()V

    .line 1295
    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->ensureVisitParameterAnnotations()V

    .line 1296
    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->ensureVisitReceiverAnnotations()V

    .line 1297
    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->ensureVisitTypecastAnnotations()V

    .line 1298
    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->ensureVisitTypeTestAnnotations()V

    .line 1299
    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->ensureVisitLambdaExpressionAnnotations()V

    .line 1300
    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->ensureVisitMemberReferenceAnnotations()V

    .line 1301
    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->ensureVisitMethodInvocationAnnotations()V

    .line 1305
    :cond_0
    return-void
.end method

.method private ensureVisitTypeParameterBoundAnnotations()V
    .locals 14

    .line 761
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->aMethod:Lscenelib/annotations/el/AMethod;

    iget-object v0, v0, Lscenelib/annotations/el/AMethod;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 762
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/BoundLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/BoundLocation;

    .line 763
    .local v2, "bloc":Lscenelib/annotations/el/BoundLocation;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/ATypeElement;

    .line 765
    .local v3, "bound":Lscenelib/annotations/el/ATypeElement;
    iget-object v4, v3, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lscenelib/annotations/Annotation;

    .line 766
    .local v5, "tla":Lscenelib/annotations/Annotation;
    invoke-direct {p0, v5, v6}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->visitTypeAnnotation(Lscenelib/annotations/Annotation;Z)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v6

    .line 768
    .local v6, "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    iget v7, v2, Lscenelib/annotations/el/BoundLocation;->boundIndex:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 769
    iget-object v7, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    sget-object v8, Lcom/sun/tools/javac/code/TargetType;->METHOD_TYPE_PARAMETER:Lcom/sun/tools/javac/code/TargetType;

    invoke-static {v7, v6, v8}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$700(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lcom/sun/tools/javac/code/TargetType;)V

    .line 770
    iget-object v7, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v7, v6, v2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$1000(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/BoundLocation;)V

    goto :goto_2

    .line 772
    :cond_0
    iget-object v7, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    sget-object v8, Lcom/sun/tools/javac/code/TargetType;->METHOD_TYPE_PARAMETER_BOUND:Lcom/sun/tools/javac/code/TargetType;

    invoke-static {v7, v6, v8}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$700(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lcom/sun/tools/javac/code/TargetType;)V

    .line 773
    iget-object v7, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v7, v6, v2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$1000(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/BoundLocation;)V

    .line 775
    :goto_2
    iget-object v7, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    sget-object v8, Lscenelib/annotations/el/InnerTypeLocation;->EMPTY_INNER_TYPE_LOCATION:Lscenelib/annotations/el/InnerTypeLocation;

    invoke-static {v7, v6, v8}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$800(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/InnerTypeLocation;)V

    .line 776
    iget-object v7, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v7, v6, v5}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$900(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/Annotation;)V

    .line 777
    invoke-interface {v6}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitEnd()V

    .line 778
    .end local v5    # "tla":Lscenelib/annotations/Annotation;
    .end local v6    # "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    goto :goto_1

    .line 781
    :cond_1
    iget-object v4, v3, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v4}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 782
    .local v5, "e2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/InnerTypeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lscenelib/annotations/el/InnerTypeLocation;

    .line 783
    .local v7, "itloc":Lscenelib/annotations/el/InnerTypeLocation;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lscenelib/annotations/el/ATypeElement;

    .line 785
    .local v8, "innerType":Lscenelib/annotations/el/ATypeElement;
    iget-object v9, v8, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lscenelib/annotations/Annotation;

    .line 786
    .local v10, "tla":Lscenelib/annotations/Annotation;
    invoke-direct {p0, v10, v6}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->visitTypeAnnotation(Lscenelib/annotations/Annotation;Z)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v11

    .line 788
    .local v11, "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    iget-object v12, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    sget-object v13, Lcom/sun/tools/javac/code/TargetType;->METHOD_TYPE_PARAMETER_BOUND:Lcom/sun/tools/javac/code/TargetType;

    invoke-static {v12, v11, v13}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$700(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lcom/sun/tools/javac/code/TargetType;)V

    .line 789
    iget-object v12, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v12, v11, v2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$1000(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/BoundLocation;)V

    .line 790
    iget-object v12, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v12, v11, v7}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$800(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/InnerTypeLocation;)V

    .line 791
    iget-object v12, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v12, v11, v10}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$900(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/Annotation;)V

    .line 792
    invoke-interface {v11}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitEnd()V

    .line 793
    .end local v10    # "tla":Lscenelib/annotations/Annotation;
    .end local v11    # "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    goto :goto_4

    .line 794
    .end local v5    # "e2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/InnerTypeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v7    # "itloc":Lscenelib/annotations/el/InnerTypeLocation;
    .end local v8    # "innerType":Lscenelib/annotations/el/ATypeElement;
    :cond_2
    goto :goto_3

    .line 795
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/BoundLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v2    # "bloc":Lscenelib/annotations/el/BoundLocation;
    .end local v3    # "bound":Lscenelib/annotations/el/ATypeElement;
    :cond_3
    goto/16 :goto_0

    .line 796
    :cond_4
    return-void
.end method

.method private ensureVisitTypeTestAnnotations()V
    .locals 14

    .line 1058
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->aMethod:Lscenelib/annotations/el/AMethod;

    iget-object v0, v0, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v0, v0, Lscenelib/annotations/el/ABlock;->instanceofs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1059
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/RelativeLocation;

    invoke-virtual {v2}, Lscenelib/annotations/el/RelativeLocation;->isBytecodeOffset()Z

    .line 1065
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/RelativeLocation;

    iget v2, v2, Lscenelib/annotations/el/RelativeLocation;->offset:I

    .line 1066
    .local v2, "offset":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/ATypeElement;

    .line 1067
    .local v3, "aTypeTest":Lscenelib/annotations/el/ATypeElement;
    iget-object v4, v3, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lscenelib/annotations/Annotation;

    .line 1068
    .local v5, "tla":Lscenelib/annotations/Annotation;
    invoke-direct {p0, v5}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->shouldSkip(Lscenelib/annotations/Annotation;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1069
    goto :goto_1

    .line 1072
    :cond_0
    invoke-direct {p0, v5, v6}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->visitTypeAnnotation(Lscenelib/annotations/Annotation;Z)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v6

    .line 1073
    .local v6, "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    iget-object v7, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    sget-object v8, Lcom/sun/tools/javac/code/TargetType;->INSTANCEOF:Lcom/sun/tools/javac/code/TargetType;

    invoke-static {v7, v6, v8}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$700(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lcom/sun/tools/javac/code/TargetType;)V

    .line 1074
    iget-object v7, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v7, v6, v2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$1200(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;I)V

    .line 1075
    iget-object v7, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    sget-object v8, Lscenelib/annotations/el/InnerTypeLocation;->EMPTY_INNER_TYPE_LOCATION:Lscenelib/annotations/el/InnerTypeLocation;

    invoke-static {v7, v6, v8}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$800(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/InnerTypeLocation;)V

    .line 1076
    iget-object v7, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v7, v6, v5}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$900(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/Annotation;)V

    .line 1077
    invoke-interface {v6}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitEnd()V

    .line 1078
    .end local v5    # "tla":Lscenelib/annotations/Annotation;
    .end local v6    # "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    goto :goto_1

    .line 1082
    :cond_1
    iget-object v4, v3, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v4}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1083
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/InnerTypeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lscenelib/annotations/el/InnerTypeLocation;

    .line 1084
    .local v7, "aTypeTestLocation":Lscenelib/annotations/el/InnerTypeLocation;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lscenelib/annotations/el/AElement;

    .line 1085
    .local v8, "aInnerType":Lscenelib/annotations/el/AElement;
    iget-object v9, v8, Lscenelib/annotations/el/AElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lscenelib/annotations/Annotation;

    .line 1086
    .local v10, "tla":Lscenelib/annotations/Annotation;
    invoke-direct {p0, v10}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->shouldSkip(Lscenelib/annotations/Annotation;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1087
    goto :goto_3

    .line 1090
    :cond_2
    invoke-direct {p0, v10, v6}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->visitTypeAnnotation(Lscenelib/annotations/Annotation;Z)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v11

    .line 1091
    .local v11, "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    iget-object v12, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    sget-object v13, Lcom/sun/tools/javac/code/TargetType;->INSTANCEOF:Lcom/sun/tools/javac/code/TargetType;

    invoke-static {v12, v11, v13}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$700(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lcom/sun/tools/javac/code/TargetType;)V

    .line 1093
    iget-object v12, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v12, v11, v2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$1200(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;I)V

    .line 1095
    iget-object v12, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v12, v11, v7}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$800(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/InnerTypeLocation;)V

    .line 1096
    iget-object v12, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v12, v11, v10}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$900(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/Annotation;)V

    .line 1097
    invoke-interface {v11}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitEnd()V

    .line 1098
    .end local v10    # "tla":Lscenelib/annotations/Annotation;
    .end local v11    # "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    goto :goto_3

    .line 1099
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/InnerTypeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v7    # "aTypeTestLocation":Lscenelib/annotations/el/InnerTypeLocation;
    .end local v8    # "aInnerType":Lscenelib/annotations/el/AElement;
    :cond_3
    goto :goto_2

    .line 1100
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v2    # "offset":I
    .end local v3    # "aTypeTest":Lscenelib/annotations/el/ATypeElement;
    :cond_4
    goto/16 :goto_0

    .line 1101
    :cond_5
    return-void
.end method

.method private ensureVisitTypecastAnnotations()V
    .locals 15

    .line 1005
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->aMethod:Lscenelib/annotations/el/AMethod;

    iget-object v0, v0, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v0, v0, Lscenelib/annotations/el/ABlock;->typecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1006
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/RelativeLocation;

    invoke-virtual {v2}, Lscenelib/annotations/el/RelativeLocation;->isBytecodeOffset()Z

    .line 1012
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/RelativeLocation;

    iget v2, v2, Lscenelib/annotations/el/RelativeLocation;->offset:I

    .line 1013
    .local v2, "offset":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/RelativeLocation;

    iget v3, v3, Lscenelib/annotations/el/RelativeLocation;->type_index:I

    .line 1014
    .local v3, "typeIndex":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscenelib/annotations/el/ATypeElement;

    .line 1015
    .local v4, "aTypecast":Lscenelib/annotations/el/ATypeElement;
    iget-object v5, v4, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lscenelib/annotations/Annotation;

    .line 1016
    .local v6, "tla":Lscenelib/annotations/Annotation;
    invoke-direct {p0, v6}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->shouldSkip(Lscenelib/annotations/Annotation;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1017
    goto :goto_1

    .line 1020
    :cond_0
    invoke-direct {p0, v6, v7}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->visitTypeAnnotation(Lscenelib/annotations/Annotation;Z)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v7

    .line 1021
    .local v7, "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    iget-object v8, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    sget-object v9, Lcom/sun/tools/javac/code/TargetType;->CAST:Lcom/sun/tools/javac/code/TargetType;

    invoke-static {v8, v7, v9}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$700(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lcom/sun/tools/javac/code/TargetType;)V

    .line 1022
    iget-object v8, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v8, v7, v2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$1200(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;I)V

    .line 1023
    iget-object v8, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v8, v7, v3}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$1400(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;I)V

    .line 1024
    iget-object v8, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    sget-object v9, Lscenelib/annotations/el/InnerTypeLocation;->EMPTY_INNER_TYPE_LOCATION:Lscenelib/annotations/el/InnerTypeLocation;

    invoke-static {v8, v7, v9}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$800(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/InnerTypeLocation;)V

    .line 1025
    iget-object v8, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v8, v7, v6}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$900(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/Annotation;)V

    .line 1026
    invoke-interface {v7}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitEnd()V

    .line 1027
    .end local v6    # "tla":Lscenelib/annotations/Annotation;
    .end local v7    # "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    goto :goto_1

    .line 1031
    :cond_1
    iget-object v5, v4, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v5}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1032
    .local v6, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/InnerTypeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lscenelib/annotations/el/InnerTypeLocation;

    .line 1033
    .local v8, "aTypecastLocation":Lscenelib/annotations/el/InnerTypeLocation;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lscenelib/annotations/el/ATypeElement;

    .line 1034
    .local v9, "aInnerType":Lscenelib/annotations/el/ATypeElement;
    iget-object v10, v9, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lscenelib/annotations/Annotation;

    .line 1035
    .local v11, "tla":Lscenelib/annotations/Annotation;
    invoke-direct {p0, v11}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->shouldSkip(Lscenelib/annotations/Annotation;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1036
    goto :goto_3

    .line 1039
    :cond_2
    invoke-direct {p0, v11, v7}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->visitTypeAnnotation(Lscenelib/annotations/Annotation;Z)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v12

    .line 1040
    .local v12, "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    iget-object v13, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    sget-object v14, Lcom/sun/tools/javac/code/TargetType;->CAST:Lcom/sun/tools/javac/code/TargetType;

    invoke-static {v13, v12, v14}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$700(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lcom/sun/tools/javac/code/TargetType;)V

    .line 1042
    iget-object v13, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v13, v12, v2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$1200(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;I)V

    .line 1043
    iget-object v13, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v13, v12, v3}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$1400(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;I)V

    .line 1045
    iget-object v13, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v13, v12, v8}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$800(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/el/InnerTypeLocation;)V

    .line 1046
    iget-object v13, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v13, v12, v11}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$900(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;Lscenelib/annotations/Annotation;)V

    .line 1047
    invoke-interface {v12}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;->visitEnd()V

    .line 1048
    .end local v11    # "tla":Lscenelib/annotations/Annotation;
    .end local v12    # "xav":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    goto :goto_3

    .line 1049
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/InnerTypeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v8    # "aTypecastLocation":Lscenelib/annotations/el/InnerTypeLocation;
    .end local v9    # "aInnerType":Lscenelib/annotations/el/ATypeElement;
    :cond_3
    goto :goto_2

    .line 1050
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v2    # "offset":I
    .end local v3    # "typeIndex":I
    .end local v4    # "aTypecast":Lscenelib/annotations/el/ATypeElement;
    :cond_4
    goto/16 :goto_0

    .line 1051
    :cond_5
    return-void
.end method

.method private shouldSkip(Lscenelib/annotations/Annotation;)Z
    .locals 2
    .param p1, "tla"    # Lscenelib/annotations/Annotation;

    .line 667
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$200(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->existingMethodAnnotations:Ljava/util/List;

    invoke-static {p1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$300(Lscenelib/annotations/Annotation;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldSkipExisting(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 675
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->this$0:Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-static {v0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$200(Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->aMethod:Lscenelib/annotations/el/AMethod;

    invoke-virtual {v0, p1}, Lscenelib/annotations/el/AMethod;->lookup(Ljava/lang/String;)Lscenelib/annotations/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private visitAnnotation(Lscenelib/annotations/Annotation;)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 2
    .param p1, "tla"    # Lscenelib/annotations/Annotation;

    .line 682
    invoke-static {p1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$300(Lscenelib/annotations/Annotation;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$500(Lscenelib/annotations/Annotation;)Z

    move-result v1

    invoke-super {p0, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v0

    return-object v0
.end method

.method private visitParameterAnnotation(Lscenelib/annotations/Annotation;I)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 2
    .param p1, "tla"    # Lscenelib/annotations/Annotation;
    .param p2, "index"    # I

    .line 699
    invoke-static {p1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$300(Lscenelib/annotations/Annotation;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$500(Lscenelib/annotations/Annotation;)Z

    move-result v1

    invoke-super {p0, p2, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v0

    return-object v0
.end method

.method private visitTypeAnnotation(Lscenelib/annotations/Annotation;Z)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .locals 2
    .param p1, "tla"    # Lscenelib/annotations/Annotation;
    .param p2, "inCode"    # Z

    .line 691
    invoke-static {p1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$300(Lscenelib/annotations/Annotation;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$500(Lscenelib/annotations/Annotation;)Z

    move-result v1

    invoke-super {p0, v0, v1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 637
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->existingMethodAnnotations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    invoke-static {p1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->shouldSkipExisting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/commons/EmptyVisitor;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/commons/EmptyVisitor;-><init>()V

    return-object v0

    .line 644
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitCode()V
    .locals 0

    .line 625
    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->ensureVisitSceneMethodAnnotations()V

    .line 626
    invoke-super {p0}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitCode()V

    .line 627
    return-void
.end method

.method public visitEnd()V
    .locals 0

    .line 631
    invoke-direct {p0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->ensureVisitSceneMethodAnnotations()V

    .line 632
    invoke-super {p0}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitEnd()V

    .line 633
    return-void
.end method

.method public visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .locals 2
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "visible"    # Z
    .param p3, "inCode"    # Z

    .line 650
    iget-object v0, p0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->existingMethodAnnotations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    invoke-static {p1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter$MethodAnnotationSceneWriter;->shouldSkipExisting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/commons/EmptyVisitor;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/commons/EmptyVisitor;-><init>()V

    return-object v0

    .line 658
    :cond_0
    new-instance v0, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;

    .line 659
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/MethodAdapter;->visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;

    move-result-object v1

    invoke-direct {v0, v1}, Lscenelib/annotations/io/classfile/SafeTypeAnnotationVisitor;-><init>(Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;)V

    .line 658
    return-object v0
.end method
