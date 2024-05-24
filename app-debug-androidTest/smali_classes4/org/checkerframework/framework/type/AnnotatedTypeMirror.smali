.class public abstract Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
.super Ljava/lang/Object;
.source "AnnotatedTypeMirror.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;,
        Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;,
        Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;,
        Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;,
        Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;,
        Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;,
        Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;,
        Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;,
        Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;,
        Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static final EQUALITY_COMPARER:Lorg/checkerframework/framework/type/EqualityAtmComparer;

.field protected static final HASHCODE_VISITOR:Lorg/checkerframework/framework/type/HashcodeAtmVisitor;


# instance fields
.field protected final actualType:Ljavax/lang/model/type/TypeMirror;

.field protected final annotations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation
.end field

.field protected final atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

.field private final uninferredTypeArgumentScanner:Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    nop

    .line 124
    new-instance v0, Lorg/checkerframework/framework/type/EqualityAtmComparer;

    invoke-direct {v0}, Lorg/checkerframework/framework/type/EqualityAtmComparer;-><init>()V

    sput-object v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->EQUALITY_COMPARER:Lorg/checkerframework/framework/type/EqualityAtmComparer;

    .line 125
    new-instance v0, Lorg/checkerframework/framework/type/HashcodeAtmVisitor;

    invoke-direct {v0}, Lorg/checkerframework/framework/type/HashcodeAtmVisitor;-><init>()V

    sput-object v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->HASHCODE_VISITOR:Lorg/checkerframework/framework/type/HashcodeAtmVisitor;

    return-void
.end method

.method private constructor <init>(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 1
    .param p1, "type"    # Ljavax/lang/model/type/TypeMirror;
    .param p2, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->annotations:Ljava/util/Set;

    .line 770
    new-instance v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$1;

    invoke-direct {v0, p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$1;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    iput-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->uninferredTypeArgumentScanner:Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner;

    .line 153
    iput-object p1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->actualType:Ljavax/lang/model/type/TypeMirror;

    .line 154
    if-eqz p2, :cond_0

    .line 155
    iput-object p2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 156
    return-void

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method synthetic constructor <init>(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$1;)V
    .locals 0
    .param p1, "x0"    # Ljavax/lang/model/type/TypeMirror;
    .param p2, "x1"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p3, "x2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$1;

    .line 55
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;-><init>(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    return-void
.end method

.method public static createType(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p0, "type"    # Ljavax/lang/model/type/TypeMirror;
    .param p1, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p2, "isDeclaration"    # Z

    .line 64
    if-eqz p0, :cond_1

    .line 69
    sget-object v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$2;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 107
    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/lang/model/type/TypeKind;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;

    move-object v2, p0

    check-cast v2, Ljavax/lang/model/type/PrimitiveType;

    invoke-direct {v0, v2, p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;-><init>(Ljavax/lang/model/type/PrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$1;)V

    .line 109
    .local v0, "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 104
    .end local v0    # "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :pswitch_0
    new-instance v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;

    move-object v2, p0

    check-cast v2, Ljavax/lang/model/type/UnionType;

    invoke-direct {v0, v2, p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedUnionType;-><init>(Ljavax/lang/model/type/UnionType;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$1;)V

    .line 105
    .restart local v0    # "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 101
    .end local v0    # "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :pswitch_1
    new-instance v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;

    move-object v2, p0

    check-cast v2, Ljavax/lang/model/type/IntersectionType;

    invoke-direct {v0, v2, p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedIntersectionType;-><init>(Ljavax/lang/model/type/IntersectionType;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$1;)V

    .line 102
    .restart local v0    # "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 98
    .end local v0    # "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :pswitch_2
    new-instance v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    move-object v2, p0

    check-cast v2, Ljavax/lang/model/type/WildcardType;

    invoke-direct {v0, v2, p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;-><init>(Ljavax/lang/model/type/WildcardType;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$1;)V

    .line 99
    .restart local v0    # "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 94
    .end local v0    # "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :pswitch_3
    new-instance v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    move-object v2, p0

    check-cast v2, Ljavax/lang/model/type/TypeVariable;

    invoke-direct {v0, v2, p1, p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;-><init>(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;ZLorg/checkerframework/framework/type/AnnotatedTypeMirror$1;)V

    .line 96
    .restart local v0    # "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 91
    .end local v0    # "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :pswitch_4
    new-instance v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;

    move-object v2, p0

    check-cast v2, Ljavax/lang/model/type/NullType;

    invoke-direct {v0, v2, p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNullType;-><init>(Ljavax/lang/model/type/NullType;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$1;)V

    .line 92
    .restart local v0    # "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 88
    .end local v0    # "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :pswitch_5
    new-instance v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;

    move-object v2, p0

    check-cast v2, Ljavax/lang/model/type/NoType;

    invoke-direct {v0, v2, p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;-><init>(Ljavax/lang/model/type/NoType;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$1;)V

    .line 89
    .restart local v0    # "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 83
    .end local v0    # "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :pswitch_6
    new-instance v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-object v2, p0

    check-cast v2, Ljavax/lang/model/type/ExecutableType;

    invoke-direct {v0, v2, p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;-><init>(Ljavax/lang/model/type/ExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$1;)V

    .line 84
    .restart local v0    # "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 78
    .end local v0    # "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :pswitch_7
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnnotatedTypeMirror.createType: input should type-check already. Found error type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :pswitch_8
    new-instance v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-object v2, p0

    check-cast v2, Ljavax/lang/model/type/DeclaredType;

    invoke-direct {v0, v2, p1, p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;-><init>(Ljavax/lang/model/type/DeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;ZLorg/checkerframework/framework/type/AnnotatedTypeMirror$1;)V

    .line 76
    .restart local v0    # "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_0

    .line 71
    .end local v0    # "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :pswitch_9
    new-instance v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    move-object v2, p0

    check-cast v2, Ljavax/lang/model/type/ArrayType;

    invoke-direct {v0, v2, p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;-><init>(Ljavax/lang/model/type/ArrayType;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$1;)V

    .line 72
    .restart local v0    # "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    nop

    .line 121
    :goto_0
    return-object v0

    .line 111
    .end local v0    # "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnnotatedTypeMirror.createType: unidentified type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 115
    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "AnnotatedTypeMirror.createType: input type must not be null"

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static createTypeOfObject(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .locals 2
    .param p0, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 802
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Ljava/lang/Object;

    .line 804
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 803
    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromElement(Ljavax/lang/model/element/TypeElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    .line 805
    .local v0, "objectType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->access$1002(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Z)Z

    .line 806
    return-object v0
.end method


# virtual methods
.method public abstract accept(Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor<",
            "TR;TP;>;TP;)TR;"
        }
    .end annotation
.end method

.method public addAnnotation(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 551
    .local p1, "a":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    invoke-static {v0, p1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 552
    .local v0, "anno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 553
    return-void
.end method

.method public addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 2
    .param p1, "a"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 521
    if-eqz p1, :cond_2

    .line 524
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->isSupportedQualifier(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->annotations:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 527
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->canonicalAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 528
    .local v0, "aliased":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->isSupportedQualifier(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 529
    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 532
    .end local v0    # "aliased":Ljavax/lang/model/element/AnnotationMirror;
    :cond_1
    :goto_0
    return-void

    .line 522
    :cond_2
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "AnnotatedTypeMirror.addAnnotation: null argument."

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAnnotations(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)V"
        }
    .end annotation

    .line 561
    .local p1, "annotations":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    .line 562
    .local v1, "a":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 563
    .end local v1    # "a":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_0

    .line 564
    :cond_0
    return-void
.end method

.method public addMissingAnnotations(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)V"
        }
    .end annotation

    .line 573
    .local p1, "annotations":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    .line 574
    .local v1, "a":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->isAnnotatedInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 575
    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 577
    .end local v1    # "a":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 578
    :cond_1
    return-void
.end method

.method public asUse()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 0

    .line 219
    return-object p0
.end method

.method public clearAnnotations()V
    .locals 1

    .line 683
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->annotations:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 684
    return-void
.end method

.method public containsUninferredTypeArguments()Z
    .locals 1

    .line 766
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->uninferredTypeArgumentScanner:Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner;

    invoke-virtual {v0, p0}, Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public abstract deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
.end method

.method public abstract deepCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
.end method

.method public directSuperTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;"
        }
    .end annotation

    .line 2174
    invoke-static {p0}, Lorg/checkerframework/framework/type/SupertypeFinder;->directSuperTypes(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 160
    if-ne p1, p0, :cond_0

    .line 161
    const/4 v0, 0x1

    return v0

    .line 164
    :cond_0
    instance-of v0, p1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    if-nez v0, :cond_1

    .line 165
    const/4 v0, 0x0

    return v0

    .line 168
    :cond_1
    sget-object v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->EQUALITY_COMPARER:Lorg/checkerframework/framework/type/EqualityAtmComparer;

    move-object v1, p1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lorg/checkerframework/framework/type/EqualityAtmComparer;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 335
    .local p1, "annoClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->annotations:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    .line 336
    .local v1, "annoMirror":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v2, v1, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    return-object v1

    .line 339
    .end local v1    # "annoMirror":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 340
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .param p1, "p"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 244
    move-object v0, p1

    .line 245
    .local v0, "aliased":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->isSupportedQualifier(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 246
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v1, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->canonicalAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 248
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->isSupportedQualifier(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v1

    .line 250
    .local v1, "qualHier":Lorg/checkerframework/framework/type/QualifierHierarchy;
    iget-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->annotations:Ljava/util/Set;

    invoke-virtual {v1, v2, v0}, Lorg/checkerframework/framework/type/QualifierHierarchy;->findAnnotationInSameHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 251
    .local v2, "anno":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v2, :cond_1

    .line 252
    return-object v2

    .line 255
    .end local v1    # "qualHier":Lorg/checkerframework/framework/type/QualifierHierarchy;
    .end local v2    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public final getAnnotations()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->annotations:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected final getAnnotationsField()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->annotations:Ljava/util/Set;

    return-object v0
.end method

.method public getEffectiveAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 412
    .local p1, "annoClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotations()Ljava/util/Set;

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

    .line 413
    .local v1, "annoMirror":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v2, v1, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 414
    return-object v1

    .line 416
    .end local v1    # "annoMirror":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 417
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEffectiveAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .param p1, "p"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 268
    move-object v0, p1

    .line 269
    .local v0, "aliased":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->isSupportedQualifier(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 270
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v1, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->canonicalAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 272
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->isSupportedQualifier(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v1

    .line 274
    .local v1, "qualHier":Lorg/checkerframework/framework/type/QualifierHierarchy;
    nop

    .line 275
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotations()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/checkerframework/framework/type/QualifierHierarchy;->findAnnotationInSameHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 276
    .local v2, "anno":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v2, :cond_1

    .line 277
    return-object v2

    .line 280
    .end local v1    # "qualHier":Lorg/checkerframework/framework/type/QualifierHierarchy;
    .end local v2    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getEffectiveAnnotations()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 318
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getErased()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v0

    .line 324
    .local v0, "effectiveAnnotations":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    return-object v0
.end method

.method public getErased()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1

    .line 706
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public getExplicitAnnotations()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 363
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v0

    .line 364
    .local v0, "explicitAnnotations":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    nop

    .line 365
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/type/TypeMirror;->getAnnotationMirrors()Ljava/util/List;

    move-result-object v1

    .line 367
    .local v1, "typeAnnotations":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/AnnotationMirror;

    .line 368
    .local v3, "explicitAnno":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v4, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v4, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->isSupportedQualifier(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 369
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 371
    .end local v3    # "explicitAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 373
    :cond_1
    return-object v0
.end method

.method public getKind()Ljavax/lang/model/type/TypeKind;
    .locals 1

    .line 194
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->actualType:Ljavax/lang/model/type/TypeMirror;

    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    return-object v0
.end method

.method public getUnderlyingType()Ljavax/lang/model/type/TypeMirror;
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->actualType:Ljavax/lang/model/type/TypeMirror;

    return-object v0
.end method

.method public hasAnnotation(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 401
    .local p1, "a":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1
    .param p1, "a"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 389
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->annotations:Ljava/util/Set;

    invoke-static {v0, p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->containsSame(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0
.end method

.method public hasAnnotationRelaxed(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1
    .param p1, "a"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 471
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->annotations:Ljava/util/Set;

    invoke-static {v0, p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->containsSameByName(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0
.end method

.method public hasEffectiveAnnotation(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 427
    .local p1, "a":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEffectiveAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1
    .param p1, "a"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 437
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotations()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->containsSame(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0
.end method

.method public hasEffectiveAnnotationRelaxed(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1
    .param p1, "a"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 481
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotations()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->containsSameByName(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0
.end method

.method public hasExplicitAnnotation(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 512
    .local p1, "a":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getExplicitAnnotations()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->containsSameByName(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0
.end method

.method public hasExplicitAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1
    .param p1, "a"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 457
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getExplicitAnnotations()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->containsSame(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0
.end method

.method public hasExplicitAnnotationRelaxed(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1
    .param p1, "a"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 495
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getExplicitAnnotations()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->containsSameByName(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 174
    sget-object v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->HASHCODE_VISITOR:Lorg/checkerframework/framework/type/HashcodeAtmVisitor;

    invoke-virtual {v0, p0}, Lorg/checkerframework/framework/type/HashcodeAtmVisitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isAnnotatedInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1
    .param p1, "p"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 231
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDeclaration()Z
    .locals 1

    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public removeAnnotation(Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 621
    .local p1, "a":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    invoke-static {v0, p1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 622
    .local v0, "anno":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->isSupportedQualifier(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 626
    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->removeAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v1

    return v1

    .line 623
    :cond_0
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AnnotatedTypeMirror.removeAnnotation called with un-supported class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 2
    .param p1, "a"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 605
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->annotations:Ljava/util/Set;

    .line 606
    invoke-static {p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->annotationName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->getAnnotationByName(Ljava/util/Collection;Ljava/lang/String;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 607
    .local v0, "anno":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v0, :cond_0

    .line 608
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->annotations:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 610
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public removeAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 2
    .param p1, "a"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 636
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 637
    .local v0, "prev":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v0, :cond_0

    .line 638
    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->removeAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v1

    return v1

    .line 640
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public removeAnnotations(Ljava/lang/Iterable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)Z"
        }
    .end annotation

    .line 667
    .local p1, "annotations":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljavax/lang/model/element/AnnotationMirror;>;"
    const/4 v0, 0x0

    .line 668
    .local v0, "changed":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    .line 669
    .local v2, "a":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p0, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->removeAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 670
    .end local v2    # "a":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_0

    .line 671
    :cond_0
    return v0
.end method

.method public removeNonTopAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 3
    .param p1, "a"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 651
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 652
    .local v0, "prev":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v1

    .line 653
    .local v1, "qualHier":Lorg/checkerframework/framework/type/QualifierHierarchy;
    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 654
    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->removeAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    return v2

    .line 656
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 0
    .param p1, "a"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 541
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->removeAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Z

    .line 542
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 543
    return-void
.end method

.method public replaceAnnotations(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)V"
        }
    .end annotation

    .line 587
    .local p1, "replAnnos":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    .line 588
    .local v1, "a":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 589
    .end local v1    # "a":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_0

    .line 590
    :cond_0
    return-void
.end method

.method public abstract shallowCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
.end method

.method public abstract shallowCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
.end method

.method public final toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 689
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedTypeFormatter()Lorg/checkerframework/framework/type/AnnotatedTypeFormatter;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFormatter;->format(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString(Z)Ljava/lang/String;
    .locals 1
    .param p1, "verbose"    # Z
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 694
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedTypeFormatter()Lorg/checkerframework/framework/type/AnnotatedTypeFormatter;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFormatter;->format(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
