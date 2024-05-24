.class public Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;
.super Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;
.source "SignatureAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory$SignatureTreeAnnotator;
    }
.end annotation


# instance fields
.field protected final BINARY_NAME:Ljavax/lang/model/element/AnnotationMirror;

.field protected final DOT_SEPARATED_IDENTIFIERS:Ljavax/lang/model/element/AnnotationMirror;

.field protected final INTERNAL_FORM:Ljavax/lang/model/element/AnnotationMirror;

.field protected final SIGNATURE_UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

.field private final replaceCharChar:Ljavax/lang/model/element/ExecutableElement;

.field private final replaceCharSequenceCharSequence:Ljavax/lang/model/element/ExecutableElement;


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 4
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 62
    invoke-direct {p0, p1}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 34
    iget-object v0, p0, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/signature/qual/SignatureUnknown;

    .line 35
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;->SIGNATURE_UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    .line 37
    iget-object v0, p0, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/signature/qual/BinaryName;

    .line 38
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;->BINARY_NAME:Ljavax/lang/model/element/AnnotationMirror;

    .line 40
    iget-object v0, p0, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/signature/qual/InternalForm;

    .line 41
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;->INTERNAL_FORM:Ljavax/lang/model/element/AnnotationMirror;

    .line 43
    iget-object v0, p0, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/signature/qual/DotSeparatedIdentifiers;

    .line 44
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;->DOT_SEPARATED_IDENTIFIERS:Ljavax/lang/model/element/AnnotationMirror;

    .line 47
    const-class v0, Ljava/lang/String;

    .line 49
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    const-string v2, "char"

    filled-new-array {v2, v2}, [Ljava/lang/String;

    move-result-object v2

    .line 48
    const-string v3, "replace"

    invoke-static {v0, v3, v1, v2}, Lorg/checkerframework/javacutil/TreeUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;Ljavax/annotation/processing/ProcessingEnvironment;[Ljava/lang/String;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;->replaceCharChar:Ljavax/lang/model/element/ExecutableElement;

    .line 52
    const-class v0, Ljava/lang/String;

    .line 54
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    const-string v2, "java.lang.CharSequence"

    filled-new-array {v2, v2}, [Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-static {v0, v3, v1, v2}, Lorg/checkerframework/javacutil/TreeUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;Ljavax/annotation/processing/ProcessingEnvironment;[Ljava/lang/String;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;->replaceCharSequenceCharSequence:Ljavax/lang/model/element/ExecutableElement;

    .line 64
    invoke-virtual {p0}, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;->postInit()V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;)Ljavax/lang/model/element/ExecutableElement;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;

    .line 31
    iget-object v0, p0, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;->replaceCharChar:Ljavax/lang/model/element/ExecutableElement;

    return-object v0
.end method

.method static synthetic access$100(Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;)Ljavax/annotation/processing/ProcessingEnvironment;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;

    .line 31
    iget-object v0, p0, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    return-object v0
.end method

.method static synthetic access$200(Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;)Ljavax/lang/model/element/ExecutableElement;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;

    .line 31
    iget-object v0, p0, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;->replaceCharSequenceCharSequence:Ljavax/lang/model/element/ExecutableElement;

    return-object v0
.end method

.method static synthetic access$300(Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;)Ljavax/annotation/processing/ProcessingEnvironment;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;

    .line 31
    iget-object v0, p0, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    return-object v0
.end method

.method static synthetic access$400(Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;)Ljavax/annotation/processing/ProcessingEnvironment;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;

    .line 31
    iget-object v0, p0, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    return-object v0
.end method


# virtual methods
.method protected createSupportedTypeQualifiers()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation

    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lorg/checkerframework/checker/signature/qual/SignatureUnknown;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lorg/checkerframework/checker/signature/qual/SignatureBottom;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;->getBundledTypeQualifiers([Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
    .locals 4

    .line 74
    new-instance v0, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    new-instance v2, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory$SignatureTreeAnnotator;

    invoke-direct {v2, p0, p0}, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory$SignatureTreeAnnotator;-><init>(Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-super {p0}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;-><init>([Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;)V

    return-object v0
.end method
