.class public Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValTreeAnnotator;
.super Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
.source "ClassValAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ClassValTreeAnnotator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;


# direct methods
.method protected constructor <init>(Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;
    .param p2, "factory"    # Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;

    .line 213
    iput-object p1, p0, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValTreeAnnotator;->this$0:Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;

    .line 214
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 215
    return-void
.end method

.method private getClassNameFromType(Lcom/sun/tools/javac/code/Type;)Ljava/lang/String;
    .locals 4
    .param p1, "classType"    # Lcom/sun/tools/javac/code/Type;

    .line 290
    sget-object v0, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "java.lang.Object"

    packed-switch v0, :pswitch_data_0

    .line 344
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClassValAnnotatedTypeFactory.getClassname: did not expect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 346
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :pswitch_0
    const-string v0, "void"

    return-object v0

    .line 340
    :pswitch_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 338
    :pswitch_2
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 336
    :pswitch_3
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 334
    :pswitch_4
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 332
    :pswitch_5
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 330
    :pswitch_6
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 328
    :pswitch_7
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 326
    :pswitch_8
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 323
    :pswitch_9
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getUpperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    .line 324
    invoke-direct {p0, p1}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValTreeAnnotator;->getClassNameFromType(Lcom/sun/tools/javac/code/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 319
    :pswitch_a
    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/code/Type$UnionClassType;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type$UnionClassType;->getLub()Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    .line 320
    invoke-direct {p0, p1}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValTreeAnnotator;->getClassNameFromType(Lcom/sun/tools/javac/code/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 317
    :pswitch_b
    return-object v1

    .line 315
    :pswitch_c
    return-object v1

    .line 299
    :pswitch_d
    new-instance v0, Ljava/lang/StringBuilder;

    move-object v1, p1

    check-cast v1, Ljavax/lang/model/type/DeclaredType;

    .line 301
    invoke-static {v1}, Lorg/checkerframework/javacutil/TypesUtils;->getQualifiedName(Ljavax/lang/model/type/DeclaredType;)Ljavax/lang/model/element/Name;

    move-result-object v1

    .line 302
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    .local v0, "className":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 304
    :goto_0
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->NONE:Ljavax/lang/model/type/TypeKind;

    if-eq v1, v2, :cond_1

    .line 305
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    .line 306
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 307
    .local v1, "last":I
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 308
    add-int/lit8 v2, v1, 0x1

    const-string v3, "$"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .end local v1    # "last":I
    :cond_0
    goto :goto_0

    .line 312
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 292
    .end local v0    # "className":Ljava/lang/StringBuilder;
    :pswitch_e
    const-string v0, ""

    .line 293
    .local v0, "array":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_2

    .line 294
    move-object v1, p1

    check-cast v1, Lcom/sun/tools/javac/code/Type$ArrayType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type$ArrayType;->getComponentType()Lcom/sun/tools/javac/code/Type;

    move-result-object p1

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 297
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValTreeAnnotator;->getClassNameFromType(Lcom/sun/tools/javac/code/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getStringValues(Lcom/sun/source/tree/ExpressionTree;)Ljava/util/List;
    .locals 5
    .param p1, "arg"    # Lcom/sun/source/tree/ExpressionTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ExpressionTree;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValTreeAnnotator;->this$0:Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;

    const-class v1, Lorg/checkerframework/common/value/ValueChecker;

    invoke-virtual {v0, v1}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;->getTypeFactoryOfSubchecker(Ljava/lang/Class;)Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 278
    .local v0, "valueATF":Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;
    const-class v1, Lorg/checkerframework/common/value/qual/StringVal;

    invoke-virtual {v0, p1, v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotationMirror(Lcom/sun/source/tree/Tree;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 279
    .local v1, "annotation":Ljavax/lang/model/element/AnnotationMirror;
    if-nez v1, :cond_0

    .line 280
    const/4 v2, 0x0

    return-object v2

    .line 282
    :cond_0
    const-class v2, Ljava/lang/String;

    const/4 v3, 0x1

    const-string v4, "value"

    invoke-static {v1, v4, v2, v3}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private isForNameMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;)Z
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;

    .line 265
    iget-object v0, p0, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValTreeAnnotator;->this$0:Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;

    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v1

    const-class v2, Lorg/checkerframework/common/reflection/qual/ForName;

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isGetClassMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;)Z
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;

    .line 273
    iget-object v0, p0, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValTreeAnnotator;->this$0:Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;

    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v1

    const-class v2, Lorg/checkerframework/common/reflection/qual/GetClass;

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public bridge synthetic visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 211
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValTreeAnnotator;->visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 5
    .param p1, "tree"    # Lcom/sun/source/tree/MemberSelectTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 219
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isClassLiteral(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-interface {p1}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 223
    .local v0, "etree":Lcom/sun/source/tree/ExpressionTree;
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    .line 224
    .local v1, "classType":Lcom/sun/tools/javac/code/Type;
    invoke-direct {p0, v1}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValTreeAnnotator;->getClassNameFromType(Lcom/sun/tools/javac/code/Type;)Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 226
    iget-object v3, p0, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValTreeAnnotator;->this$0:Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;->access$100(Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 227
    .local v3, "newQual":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 230
    .end local v0    # "etree":Lcom/sun/source/tree/ExpressionTree;
    .end local v1    # "classType":Lcom/sun/tools/javac/code/Type;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "newQual":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 211
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValTreeAnnotator;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 4
    .param p1, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 236
    invoke-direct {p0, p1}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValTreeAnnotator;->isForNameMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/ExpressionTree;

    .line 239
    .local v0, "arg":Lcom/sun/source/tree/ExpressionTree;
    invoke-direct {p0, v0}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValTreeAnnotator;->getStringValues(Lcom/sun/source/tree/ExpressionTree;)Ljava/util/List;

    move-result-object v1

    .line 240
    .local v1, "classNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    .line 241
    iget-object v2, p0, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValTreeAnnotator;->this$0:Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;

    invoke-static {v2, v1}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;->access$100(Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 242
    .local v2, "newQual":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p2, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_1

    .line 244
    .end local v0    # "arg":Lcom/sun/source/tree/ExpressionTree;
    .end local v1    # "classNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "newQual":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    invoke-direct {p0, p1}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValTreeAnnotator;->isGetClassMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->getReceiverTree(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 248
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->getReceiverTree(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .local v0, "clType":Lcom/sun/tools/javac/code/Type;
    goto :goto_0

    .line 250
    .end local v0    # "clType":Lcom/sun/tools/javac/code/Type;
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValTreeAnnotator;->this$0:Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingClass(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/ClassTree;

    move-result-object v0

    .line 251
    .local v0, "classTree":Lcom/sun/source/tree/ClassTree;
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    move-object v0, v1

    .line 253
    .local v0, "clType":Lcom/sun/tools/javac/code/Type;
    :goto_0
    invoke-direct {p0, v0}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValTreeAnnotator;->getClassNameFromType(Lcom/sun/tools/javac/code/Type;)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "className":Ljava/lang/String;
    iget-object v2, p0, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory$ClassValTreeAnnotator;->this$0:Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;->access$000(Lorg/checkerframework/common/reflection/ClassValAnnotatedTypeFactory;Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 255
    .restart local v2    # "newQual":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p2, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_2

    .line 244
    .end local v0    # "clType":Lcom/sun/tools/javac/code/Type;
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "newQual":Ljavax/lang/model/element/AnnotationMirror;
    :cond_2
    :goto_1
    nop

    .line 257
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method
