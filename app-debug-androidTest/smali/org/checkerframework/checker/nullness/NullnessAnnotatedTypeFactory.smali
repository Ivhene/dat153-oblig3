.class public Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;
.super Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;
.source "NullnessAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessQualifierHierarchy;,
        Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessTypeAnnotator;,
        Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessTreeAnnotator;,
        Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessPropagationTreeAnnotator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<",
        "Lorg/checkerframework/checker/nullness/NullnessValue;",
        "Lorg/checkerframework/checker/nullness/NullnessStore;",
        "Lorg/checkerframework/checker/nullness/NullnessTransfer;",
        "Lorg/checkerframework/checker/nullness/NullnessAnalysis;",
        ">;"
    }
.end annotation


# static fields
.field private static final NONNULL_ALIASES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NULLABLE_ALIASES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final MONOTONIC_NONNULL:Ljavax/lang/model/element/AnnotationMirror;

.field protected final NONNULL:Ljavax/lang/model/element/AnnotationMirror;

.field protected final NULLABLE:Ljavax/lang/model/element/AnnotationMirror;

.field protected final POLYNULL:Ljavax/lang/model/element/AnnotationMirror;

.field protected final collectionToArrayHeuristics:Lorg/checkerframework/checker/nullness/CollectionToArrayHeuristics;

.field protected final nullnessAnnos:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final systemGetPropertyHandler:Lorg/checkerframework/checker/nullness/SystemGetPropertyHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 93
    const-string v0, "android.annotation.NonNull"

    const-string v1, "android.support.annotation.NonNull"

    const-string v2, "androidx.annotation.NonNull"

    const-string v3, "androidx.annotation.RecentlyNonNull"

    const-string v4, "com.sun.istack.internal.NotNull"

    const-string v5, "edu.umd.cs.findbugs.annotations.NonNull"

    const-string v6, "io.reactivex.annotations.NonNull"

    const-string v7, "javax.annotation.Nonnull"

    const-string v8, "javax.validation.constraints.NotNull"

    const-string v9, "lombok.NonNull"

    const-string v10, "org.checkerframework.checker.nullness.compatqual.NonNullDecl"

    const-string v11, "org.checkerframework.checker.nullness.compatqual.NonNullType"

    const-string v12, "org.eclipse.jdt.annotation.NonNull"

    const-string v13, "org.eclipse.jgit.annotations.NonNull"

    const-string v14, "org.jetbrains.annotations.NotNull"

    const-string v15, "org.jmlspecs.annotation.NonNull"

    const-string v16, "org.netbeans.api.annotations.common.NonNull"

    const-string v17, "org.springframework.lang.NonNull"

    filled-new-array/range {v0 .. v17}, [Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->NONNULL_ALIASES:Ljava/util/List;

    .line 133
    const-string v1, "android.annotation.Nullable"

    const-string v2, "android.support.annotation.Nullable"

    const-string v3, "androidx.annotation.Nullable"

    const-string v4, "androidx.annotation.RecentlyNullable"

    const-string v5, "com.sun.istack.internal.Nullable"

    const-string v6, "edu.umd.cs.findbugs.annotations.CheckForNull"

    const-string v7, "edu.umd.cs.findbugs.annotations.Nullable"

    const-string v8, "edu.umd.cs.findbugs.annotations.PossiblyNull"

    const-string v9, "edu.umd.cs.findbugs.annotations.UnknownNullness"

    const-string v10, "io.reactivex.annotations.Nullable"

    const-string v11, "javax.annotation.CheckForNull"

    const-string v12, "javax.annotation.Nullable"

    const-string v13, "org.checkerframework.checker.nullness.compatqual.NullableDecl"

    const-string v14, "org.checkerframework.checker.nullness.compatqual.NullableType"

    const-string v15, "org.eclipse.jdt.annotation.Nullable"

    const-string v16, "org.eclipse.jgit.annotations.Nullable"

    const-string v17, "org.jetbrains.annotations.Nullable"

    const-string v18, "org.jmlspecs.annotation.Nullable"

    const-string v19, "org.netbeans.api.annotations.common.CheckForNull"

    const-string v20, "org.netbeans.api.annotations.common.NullAllowed"

    const-string v21, "org.netbeans.api.annotations.common.NullUnknown"

    const-string v22, "org.springframework.lang.Nullable"

    filled-new-array/range {v1 .. v22}, [Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->NULLABLE_ALIASES:Ljava/util/List;

    .line 133
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 5
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 179
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 70
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/nullness/qual/NonNull;

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->NONNULL:Ljavax/lang/model/element/AnnotationMirror;

    .line 72
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/nullness/qual/Nullable;

    .line 73
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->NULLABLE:Ljavax/lang/model/element/AnnotationMirror;

    .line 75
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/nullness/qual/PolyNull;

    .line 76
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->POLYNULL:Ljavax/lang/model/element/AnnotationMirror;

    .line 78
    iget-object v1, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v2, Lorg/checkerframework/checker/nullness/qual/MonotonicNonNull;

    .line 79
    invoke-static {v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->MONOTONIC_NONNULL:Ljavax/lang/model/element/AnnotationMirror;

    .line 181
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 182
    .local v2, "tempNullnessAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;>;"
    const-class v3, Lorg/checkerframework/checker/nullness/qual/NonNull;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    const-class v3, Lorg/checkerframework/checker/nullness/qual/MonotonicNonNull;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 184
    const-class v3, Lorg/checkerframework/checker/nullness/qual/Nullable;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    const-class v3, Lorg/checkerframework/checker/nullness/qual/PolyNull;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->nullnessAnnos:Ljava/util/Set;

    .line 188
    sget-object v3, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->NONNULL_ALIASES:Ljava/util/List;

    new-instance v4, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;)V

    invoke-interface {v3, v4}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 189
    sget-object v3, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->NULLABLE_ALIASES:Ljava/util/List;

    new-instance v4, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$$ExternalSyntheticLambda1;-><init>(Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;)V

    invoke-interface {v3, v4}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 192
    const-string v3, "org.checkerframework.checker.nullness.compatqual.PolyNullDecl"

    invoke-virtual {p0, v3, v0}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->addAliasedAnnotation(Ljava/lang/String;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 194
    const-string v3, "org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl"

    invoke-virtual {p0, v3, v1}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->addAliasedAnnotation(Ljava/lang/String;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 197
    const-string v3, "org.checkerframework.checker.nullness.compatqual.PolyNullType"

    invoke-virtual {p0, v3, v0}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->addAliasedAnnotation(Ljava/lang/String;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 199
    const-string v0, "org.checkerframework.checker.nullness.compatqual.MonotonicNonNullType"

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->addAliasedAnnotation(Ljava/lang/String;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 203
    new-instance v0, Lorg/checkerframework/checker/nullness/SystemGetPropertyHandler;

    iget-object v1, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-direct {v0, v1, p0}, Lorg/checkerframework/checker/nullness/SystemGetPropertyHandler;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;)V

    iput-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->systemGetPropertyHandler:Lorg/checkerframework/checker/nullness/SystemGetPropertyHandler;

    .line 205
    invoke-virtual {p0}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->postInit()V

    .line 208
    new-instance v0, Lorg/checkerframework/checker/nullness/CollectionToArrayHeuristics;

    iget-object v1, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-direct {v0, v1, p0}, Lorg/checkerframework/checker/nullness/CollectionToArrayHeuristics;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;)V

    iput-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->collectionToArrayHeuristics:Lorg/checkerframework/checker/nullness/CollectionToArrayHeuristics;

    .line 209
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    .line 65
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->FBCBOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0
.end method

.method static synthetic access$100(Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    .line 65
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->INITIALIZED:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0
.end method

.method static synthetic access$200(Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;
    .param p1, "x1"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 65
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->isInitializationAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;
    .param p1, "x1"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 65
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->isInitializationAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;
    .param p1, "x1"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 65
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->isInitializationAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;
    .param p1, "x1"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 65
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->isInitializationAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public adaptGetClassReturnTypeToReceiver(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 5
    .param p1, "getClassType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p2, "receiverType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 308
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->adaptGetClassReturnTypeToReceiver(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 312
    nop

    .line 313
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 314
    .local v0, "returnAdt":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v1

    .line 315
    .local v1, "typeArgs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 316
    .local v2, "classWildcardArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBoundField()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->NONNULL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v3, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 317
    return-void
.end method

.method protected createAnnotatedTypeFormatter()Lorg/checkerframework/framework/type/AnnotatedTypeFormatter;
    .locals 4

    .line 287
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v1, "printVerboseGenerics"

    invoke-virtual {v0, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v0

    .line 288
    .local v0, "printVerboseGenerics":Z
    new-instance v1, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFormatter;

    if-nez v0, :cond_1

    iget-object v2, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 291
    const-string v3, "printAllQualifiers"

    invoke-virtual {v2, v3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-direct {v1, v0, v2}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFormatter;-><init>(ZZ)V

    .line 288
    return-object v1
.end method

.method protected createFlowAnalysis(Ljava/util/List;)Lorg/checkerframework/checker/nullness/NullnessAnalysis;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/checkerframework/javacutil/Pair<",
            "Ljavax/lang/model/element/VariableElement;",
            "Lorg/checkerframework/checker/nullness/NullnessValue;",
            ">;>;)",
            "Lorg/checkerframework/checker/nullness/NullnessAnalysis;"
        }
    .end annotation

    .line 275
    .local p1, "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;Lorg/checkerframework/checker/nullness/NullnessValue;>;>;"
    new-instance v0, Lorg/checkerframework/checker/nullness/NullnessAnalysis;

    iget-object v1, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-direct {v0, v1, p0, p1}, Lorg/checkerframework/checker/nullness/NullnessAnalysis;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;Ljava/util/List;)V

    return-object v0
.end method

.method protected bridge synthetic createFlowAnalysis(Ljava/util/List;)Lorg/checkerframework/framework/flow/CFAbstractAnalysis;
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->createFlowAnalysis(Ljava/util/List;)Lorg/checkerframework/checker/nullness/NullnessAnalysis;

    move-result-object p1

    return-object p1
.end method

.method public createFlowTransferFunction(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;)Lorg/checkerframework/checker/nullness/NullnessTransfer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<",
            "Lorg/checkerframework/checker/nullness/NullnessValue;",
            "Lorg/checkerframework/checker/nullness/NullnessStore;",
            "Lorg/checkerframework/checker/nullness/NullnessTransfer;",
            ">;)",
            "Lorg/checkerframework/checker/nullness/NullnessTransfer;"
        }
    .end annotation

    .line 281
    .local p1, "analysis":Lorg/checkerframework/framework/flow/CFAbstractAnalysis;, "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<Lorg/checkerframework/checker/nullness/NullnessValue;Lorg/checkerframework/checker/nullness/NullnessStore;Lorg/checkerframework/checker/nullness/NullnessTransfer;>;"
    new-instance v0, Lorg/checkerframework/checker/nullness/NullnessTransfer;

    move-object v1, p1

    check-cast v1, Lorg/checkerframework/checker/nullness/NullnessAnalysis;

    invoke-direct {v0, v1}, Lorg/checkerframework/checker/nullness/NullnessTransfer;-><init>(Lorg/checkerframework/checker/nullness/NullnessAnalysis;)V

    return-object v0
.end method

.method public bridge synthetic createFlowTransferFunction(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;)Lorg/checkerframework/framework/flow/CFAbstractTransfer;
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->createFlowTransferFunction(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;)Lorg/checkerframework/checker/nullness/NullnessTransfer;

    move-result-object p1

    return-object p1
.end method

.method public createQualifierHierarchy(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)Lorg/checkerframework/framework/type/QualifierHierarchy;
    .locals 3
    .param p1, "factory"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;

    .line 526
    new-instance v0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessQualifierHierarchy;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, [Ljava/lang/Object;

    invoke-direct {v0, p0, p1, v1}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessQualifierHierarchy;-><init>(Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;[Ljava/lang/Object;)V

    return-object v0
.end method

.method protected createSupportedTypeQualifiers()Ljava/util/Set;
    .locals 4
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

    .line 213
    new-instance v0, Ljava/util/LinkedHashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lorg/checkerframework/checker/nullness/qual/Nullable;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lorg/checkerframework/checker/nullness/qual/MonotonicNonNull;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lorg/checkerframework/checker/nullness/qual/NonNull;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lorg/checkerframework/checker/initialization/qual/UnderInitialization;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lorg/checkerframework/checker/initialization/qual/Initialized;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Lorg/checkerframework/checker/initialization/qual/UnknownInitialization;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Lorg/checkerframework/checker/initialization/qual/FBCBottom;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Lorg/checkerframework/checker/nullness/qual/PolyNull;

    aput-object v3, v1, v2

    .line 214
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 213
    return-object v0
.end method

.method protected createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
    .locals 4

    .line 343
    new-instance v0, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    new-instance v2, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessPropagationTreeAnnotator;

    invoke-direct {v2, p0}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessPropagationTreeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;

    invoke-direct {v2, p0}, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessTreeAnnotator;

    invoke-direct {v2, p0, p0}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessTreeAnnotator;-><init>(Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$CommitmentTreeAnnotator;

    invoke-direct {v2, p0, p0}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$CommitmentTreeAnnotator;-><init>(Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;-><init>([Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;)V

    return-object v0
.end method

.method protected createTypeAnnotator()Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;
    .locals 5

    .line 328
    new-instance v0, Lorg/checkerframework/framework/type/typeannotator/DefaultForTypeAnnotator;

    invoke-direct {v0, p0}, Lorg/checkerframework/framework/type/typeannotator/DefaultForTypeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 329
    .local v0, "defaultForTypeAnnotator":Lorg/checkerframework/framework/type/typeannotator/DefaultForTypeAnnotator;
    const-class v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;

    iget-object v2, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->NONNULL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/framework/type/typeannotator/DefaultForTypeAnnotator;->addAtmClass(Ljava/lang/Class;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 330
    const-class v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;

    iget-object v2, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->NONNULL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/framework/type/typeannotator/DefaultForTypeAnnotator;->addAtmClass(Ljava/lang/Class;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 332
    new-instance v1, Lorg/checkerframework/framework/type/typeannotator/ListTypeAnnotator;

    const/4 v2, 0x4

    new-array v2, v2, [Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;

    new-instance v3, Lorg/checkerframework/framework/type/typeannotator/PropagationTypeAnnotator;

    invoke-direct {v3, p0}, Lorg/checkerframework/framework/type/typeannotator/PropagationTypeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    new-instance v3, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessTypeAnnotator;

    invoke-direct {v3, p0, p0}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory$NullnessTypeAnnotator;-><init>(Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;)V

    const/4 v4, 0x2

    aput-object v3, v2, v4

    new-instance v3, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$CommitmentTypeAnnotator;

    invoke-direct {v3, p0, p0}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory$CommitmentTypeAnnotator;-><init>(Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;)V

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-direct {v1, v2}, Lorg/checkerframework/framework/type/typeannotator/ListTypeAnnotator;-><init>([Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;)V

    return-object v1
.end method

.method public getFieldInvariantAnnotation()Ljavax/lang/model/element/AnnotationMirror;
    .locals 1

    .line 505
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->NONNULL:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0
.end method

.method public getInvalidConstructorReturnTypeAnnotations()Ljava/util/Set;
    .locals 2
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

    .line 497
    new-instance v0, Ljava/util/HashSet;

    .line 498
    invoke-super {p0}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getInvalidConstructorReturnTypeAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 499
    .local v0, "l":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;>;"
    invoke-virtual {p0}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->getNullnessAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 500
    return-object v0
.end method

.method public getMethodReturnType(Lcom/sun/source/tree/MethodTree;Lcom/sun/source/tree/ReturnTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "m"    # Lcom/sun/source/tree/MethodTree;
    .param p2, "r"    # Lcom/sun/source/tree/ReturnTree;

    .line 321
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getMethodReturnType(Lcom/sun/source/tree/MethodTree;Lcom/sun/source/tree/ReturnTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 322
    .local v0, "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->replacePolyQualifier(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)V

    .line 323
    return-object v0
.end method

.method public getNullnessAnnotations()Ljava/util/Set;
    .locals 1
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

    .line 492
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->nullnessAnnos:Ljava/util/Set;

    return-object v0
.end method

.method public bridge synthetic getUninitializedInvariantFields(Lorg/checkerframework/checker/initialization/InitializationStore;Lcom/sun/source/util/TreePath;ZLjava/util/List;)Ljava/util/List;
    .locals 0

    .line 65
    check-cast p1, Lorg/checkerframework/checker/nullness/NullnessStore;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->getUninitializedInvariantFields(Lorg/checkerframework/checker/nullness/NullnessStore;Lcom/sun/source/util/TreePath;ZLjava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getUninitializedInvariantFields(Lorg/checkerframework/checker/nullness/NullnessStore;Lcom/sun/source/util/TreePath;ZLjava/util/List;)Ljava/util/List;
    .locals 6
    .param p1, "store"    # Lorg/checkerframework/checker/nullness/NullnessStore;
    .param p2, "path"    # Lcom/sun/source/util/TreePath;
    .param p3, "isStatic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/checker/nullness/NullnessStore;",
            "Lcom/sun/source/util/TreePath;",
            "Z",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sun/source/tree/VariableTree;",
            ">;"
        }
    .end annotation

    .line 258
    .local p4, "receiverAnnotations":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/AnnotationMirror;>;"
    nop

    .line 259
    invoke-super {p0, p1, p2, p3, p4}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getUninitializedInvariantFields(Lorg/checkerframework/checker/initialization/InitializationStore;Lcom/sun/source/util/TreePath;ZLjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 260
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/sun/source/tree/VariableTree;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/sun/source/tree/VariableTree;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/source/tree/VariableTree;

    .line 262
    .local v3, "c":Lcom/sun/source/tree/VariableTree;
    invoke-virtual {p0, v3}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    .line 263
    .local v4, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    invoke-static {v5}, Lorg/checkerframework/javacutil/TypesUtils;->isPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v5

    .line 264
    .local v5, "isPrimitive":Z
    if-nez v5, :cond_0

    .line 266
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    .end local v3    # "c":Lcom/sun/source/tree/VariableTree;
    .end local v4    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v5    # "isPrimitive":Z
    :cond_0
    goto :goto_0

    .line 269
    :cond_1
    return-object v1
.end method

.method protected hasFieldInvariantAnnotation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 518
    invoke-virtual {p0}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->getFieldInvariantAnnotation()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 519
    .local v0, "invariant":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v1, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    .line 520
    invoke-static {v1, p1}, Lorg/checkerframework/framework/util/AnnotatedTypes;->findEffectiveLowerBoundAnnotations(Lorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/util/Set;

    move-result-object v1

    .line 521
    .local v1, "lowerBounds":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-static {v1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->containsSame(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    return v2
.end method

.method synthetic lambda$new$0$org-checkerframework-checker-nullness-NullnessAnnotatedTypeFactory(Ljava/lang/String;)V
    .locals 1
    .param p1, "annotation"    # Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->NONNULL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->addAliasedAnnotation(Ljava/lang/String;Ljavax/lang/model/element/AnnotationMirror;)V

    return-void
.end method

.method synthetic lambda$new$1$org-checkerframework-checker-nullness-NullnessAnnotatedTypeFactory(Ljava/lang/String;)V
    .locals 1
    .param p1, "annotation"    # Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->NULLABLE:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->addAliasedAnnotation(Ljava/lang/String;Ljavax/lang/model/element/AnnotationMirror;)V

    return-void
.end method

.method public methodFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;

    .line 296
    invoke-super {p0, p1}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->methodFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;

    move-result-object v0

    .line 297
    .local v0, "mType":Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;
    iget-object v1, v0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;->executableType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 299
    .local v1, "method":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    iget-object v2, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->systemGetPropertyHandler:Lorg/checkerframework/checker/nullness/SystemGetPropertyHandler;

    invoke-virtual {v2, p1, v1}, Lorg/checkerframework/checker/nullness/SystemGetPropertyHandler;->handle(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)V

    .line 300
    iget-object v2, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->collectionToArrayHeuristics:Lorg/checkerframework/checker/nullness/CollectionToArrayHeuristics;

    invoke-virtual {v2, p1, v1}, Lorg/checkerframework/checker/nullness/CollectionToArrayHeuristics;->handle(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;)V

    .line 301
    return-object v0
.end method

.method protected replacePolyQualifier(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)V
    .locals 2
    .param p1, "lhsType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "context"    # Lcom/sun/source/tree/Tree;

    .line 244
    const-class v0, Lorg/checkerframework/checker/nullness/qual/PolyNull;

    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0, p2}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->getInferredValueFor(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/nullness/NullnessValue;

    .line 246
    .local v0, "inferred":Lorg/checkerframework/checker/nullness/NullnessValue;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lorg/checkerframework/checker/nullness/NullnessValue;->isPolyNullNull:Z

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->NULLABLE:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 250
    .end local v0    # "inferred":Lorg/checkerframework/checker/nullness/NullnessValue;
    :cond_0
    return-void
.end method
