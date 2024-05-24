.class public Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;
.super Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;
.source "ValueAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;,
        Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;,
        Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTypeAnnotator;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ARRAYLENRANGE_NAME:Ljava/lang/String; = "org.checkerframework.common.value.qual.ArrayLenRange"

.field public static final ARRAYLEN_NAME:Ljava/lang/String; = "org.checkerframework.common.value.qual.ArrayLen"

.field public static final BOOLVAL_NAME:Ljava/lang/String; = "org.checkerframework.common.value.qual.BoolVal"

.field public static final BOTTOMVAL_NAME:Ljava/lang/String; = "org.checkerframework.common.value.qual.BottomVal"

.field protected static final COVERED_CLASS_STRINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOUBLEVAL_NAME:Ljava/lang/String; = "org.checkerframework.common.value.qual.DoubleVal"

.field public static final INTRANGE_FROMGTENEGONE_NAME:Ljava/lang/String; = "org.checkerframework.common.value.qual.IntRangeFromGTENegativeOne"

.field public static final INTRANGE_FROMNONNEG_NAME:Ljava/lang/String; = "org.checkerframework.common.value.qual.IntRangeFromNonNegative"

.field public static final INTRANGE_FROMPOS_NAME:Ljava/lang/String; = "org.checkerframework.common.value.qual.IntRangeFromPositive"

.field public static final INTRANGE_NAME:Ljava/lang/String; = "org.checkerframework.common.value.qual.IntRange"

.field public static final INTVAL_NAME:Ljava/lang/String; = "org.checkerframework.common.value.qual.IntVal"

.field protected static final MAX_VALUES:I = 0xa

.field public static final MINLEN_NAME:Ljava/lang/String; = "org.checkerframework.common.value.qual.MinLen"

.field public static final POLY_NAME:Ljava/lang/String; = "org.checkerframework.common.value.qual.PolyValue"

.field public static final STRINGVAL_NAME:Ljava/lang/String; = "org.checkerframework.common.value.qual.StringVal"

.field public static final UNKNOWN_NAME:Ljava/lang/String; = "org.checkerframework.common.value.qual.UnknownVal"


# instance fields
.field protected final BOTTOMVAL:Ljavax/lang/model/element/AnnotationMirror;

.field public final POLY:Ljavax/lang/model/element/AnnotationMirror;

.field protected final UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

.field private final evaluator:Lorg/checkerframework/common/value/ReflectiveEvaluator;

.field private final methods:Lorg/checkerframework/common/value/ValueMethodIdentifier;

.field private final reportEvalWarnings:Z


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 85
    nop

    .line 126
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "int"

    const-string v2, "java.lang.Integer"

    const-string v3, "double"

    const-string v4, "java.lang.Double"

    const-string v5, "byte"

    const-string v6, "java.lang.Byte"

    const-string v7, "java.lang.String"

    const-string v8, "char"

    const-string v9, "java.lang.Character"

    const-string v10, "float"

    const-string v11, "java.lang.Float"

    const-string v12, "boolean"

    const-string v13, "java.lang.Boolean"

    const-string v14, "long"

    const-string v15, "java.lang.Long"

    const-string v16, "short"

    const-string v17, "java.lang.Short"

    const-string v18, "char[]"

    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 127
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->COVERED_CLASS_STRINGS:Ljava/util/Set;

    .line 126
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 6
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 170
    invoke-direct {p0, p1}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 150
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/common/value/qual/UnknownVal;

    .line 151
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    .line 154
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/common/value/qual/BottomVal;

    .line 155
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->BOTTOMVAL:Ljavax/lang/model/element/AnnotationMirror;

    .line 158
    iget-object v1, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v2, Lorg/checkerframework/common/value/qual/PolyValue;

    invoke-static {v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->POLY:Ljavax/lang/model/element/AnnotationMirror;

    .line 172
    const-string v2, "reportEvalWarns"

    invoke-virtual {p1, v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->reportEvalWarnings:Z

    .line 173
    const-string v3, "ignoreRangeOverflow"

    invoke-virtual {p1, v3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lorg/checkerframework/common/value/util/Range;->ignoreOverflow:Z

    .line 174
    new-instance v3, Lorg/checkerframework/common/value/ReflectiveEvaluator;

    invoke-direct {v3, p1, p0, v2}, Lorg/checkerframework/common/value/ReflectiveEvaluator;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;Z)V

    iput-object v3, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->evaluator:Lorg/checkerframework/common/value/ReflectiveEvaluator;

    .line 176
    const-class v2, Lorg/checkerframework/common/value/qual/IntRange;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "android.support.annotation.IntRange"

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v2, v5, v3}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->addAliasedAnnotation(Ljava/lang/String;Ljava/lang/Class;Z[Ljava/lang/String;)V

    .line 181
    const-class v2, Lorg/checkerframework/common/value/qual/MinLen;

    invoke-virtual {p0, v2, v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->addAliasedAnnotation(Ljava/lang/Class;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 188
    nop

    .line 189
    invoke-direct {p0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createIntRangeFromPositive()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 188
    const-string v2, "org.checkerframework.checker.index.qual.Positive"

    invoke-virtual {p0, v2, v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->addAliasedAnnotation(Ljava/lang/String;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 190
    nop

    .line 192
    invoke-direct {p0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createIntRangeFromNonNegative()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 190
    const-string v2, "org.checkerframework.checker.index.qual.NonNegative"

    invoke-virtual {p0, v2, v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->addAliasedAnnotation(Ljava/lang/String;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 193
    nop

    .line 195
    invoke-direct {p0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createIntRangeFromGTENegativeOne()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 193
    const-string v2, "org.checkerframework.checker.index.qual.GTENegativeOne"

    invoke-virtual {p0, v2, v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->addAliasedAnnotation(Ljava/lang/String;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 197
    nop

    .line 199
    invoke-direct {p0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createIntRangeFromNonNegative()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 197
    const-string v2, "org.checkerframework.checker.index.qual.LengthOf"

    invoke-virtual {p0, v2, v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->addAliasedAnnotation(Ljava/lang/String;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 200
    nop

    .line 202
    invoke-direct {p0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createIntRangeFromNonNegative()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 200
    const-string v2, "org.checkerframework.checker.index.qual.IndexFor"

    invoke-virtual {p0, v2, v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->addAliasedAnnotation(Ljava/lang/String;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 203
    nop

    .line 205
    invoke-direct {p0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createIntRangeFromNonNegative()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 203
    const-string v2, "org.checkerframework.checker.index.qual.IndexOrHigh"

    invoke-virtual {p0, v2, v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->addAliasedAnnotation(Ljava/lang/String;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 206
    nop

    .line 208
    invoke-direct {p0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createIntRangeFromGTENegativeOne()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 206
    const-string v2, "org.checkerframework.checker.index.qual.IndexOrLow"

    invoke-virtual {p0, v2, v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->addAliasedAnnotation(Ljava/lang/String;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 209
    nop

    .line 211
    invoke-direct {p0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createIntRangeFromGTENegativeOne()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 209
    const-string v2, "org.checkerframework.checker.index.qual.SubstringIndexFor"

    invoke-virtual {p0, v2, v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->addAliasedAnnotation(Ljava/lang/String;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 214
    const-string v0, "org.checkerframework.checker.index.qual.PolyLength"

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->addAliasedAnnotation(Ljava/lang/String;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 216
    new-instance v0, Lorg/checkerframework/common/value/ValueMethodIdentifier;

    iget-object v1, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-direct {v0, v1}, Lorg/checkerframework/common/value/ValueMethodIdentifier;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;)V

    iput-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->methods:Lorg/checkerframework/common/value/ValueMethodIdentifier;

    .line 218
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    if-ne v0, v1, :cond_0

    .line 219
    invoke-virtual {p0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->postInit()V

    .line 221
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;
    .param p1, "x1"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 85
    invoke-direct {p0, p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->convertSpecialIntRangeToStandardIntRange(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;
    .param p1, "x1"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 85
    invoke-direct {p0, p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->convertToUnknown(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljavax/annotation/processing/ProcessingEnvironment;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 85
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljavax/annotation/processing/ProcessingEnvironment;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 85
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Lorg/checkerframework/common/value/ReflectiveEvaluator;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 85
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->evaluator:Lorg/checkerframework/common/value/ReflectiveEvaluator;

    return-object v0
.end method

.method static synthetic access$200(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;JJ)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createIntRangeAnnotation(JJ)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljavax/annotation/processing/ProcessingEnvironment;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 85
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    return-object v0
.end method

.method static synthetic access$400(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;
    .param p1, "x1"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 85
    invoke-direct {p0, p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->convertStringValToArrayLen(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;
    .param p1, "x1"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 85
    invoke-direct {p0, p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->convertStringValToArrayLenRange(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;
    .param p1, "x1"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 85
    invoke-direct {p0, p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->convertIntValToDoubleVal(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;
    .param p1, "x1"    # Ljava/util/List;

    .line 85
    invoke-direct {p0, p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->convertLongListToDoubleList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;
    .param p1, "x1"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 85
    invoke-direct {p0, p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getArrayLenOrIntValue(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljavax/annotation/processing/ProcessingEnvironment;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 85
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    return-object v0
.end method

.method private convertIntValToDoubleVal(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 2
    .param p1, "intValAnno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 1800
    invoke-static {p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getIntValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    .line 1801
    .local v0, "intValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0, v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->convertLongListToDoubleList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createDoubleValAnnotation(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method

.method private convertLongListToDoubleList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1806
    .local p1, "intValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1807
    .local v0, "doubleValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1808
    .local v2, "intValue":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1809
    .end local v2    # "intValue":Ljava/lang/Long;
    goto :goto_0

    .line 1810
    :cond_0
    return-object v0
.end method

.method private convertSpecialIntRangeToStandardIntRange(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 5
    .param p1, "anm"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 1100
    const-string v0, "org.checkerframework.common.value.qual.IntRangeFromPositive"

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v0

    const-wide/32 v1, 0x7fffffff

    if-eqz v0, :cond_0

    .line 1101
    const-wide/16 v3, 0x1

    invoke-direct {p0, v3, v4, v1, v2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createIntRangeAnnotation(JJ)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0

    .line 1104
    :cond_0
    const-string v0, "org.checkerframework.common.value.qual.IntRangeFromNonNegative"

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1105
    const-wide/16 v3, 0x0

    invoke-direct {p0, v3, v4, v1, v2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createIntRangeAnnotation(JJ)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0

    .line 1108
    :cond_1
    const-string v0, "org.checkerframework.common.value.qual.IntRangeFromGTENegativeOne"

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1109
    const-wide/16 v3, -0x1

    invoke-direct {p0, v3, v4, v1, v2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createIntRangeAnnotation(JJ)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0

    .line 1111
    :cond_2
    return-object p1
.end method

.method private convertStringValToArrayLen(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 2
    .param p1, "stringValAnno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 2058
    invoke-static {p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getStringValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    .line 2059
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getLengthsForStringValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createArrayLenAnnotation(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method

.method private convertStringValToArrayLenRange(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 4
    .param p1, "stringValAnno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 2047
    invoke-static {p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getStringValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    .line 2048
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getLengthsForStringValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 2049
    .local v1, "lengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v1}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createArrayLenRangeAnnotation(II)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    return-object v2
.end method

.method private convertToUnknown(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 5
    .param p1, "anno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 1122
    const-string v0, "org.checkerframework.common.value.qual.ArrayLenRange"

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1123
    invoke-static {p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    .line 1124
    .local v0, "range":Lorg/checkerframework/common/value/util/Range;
    iget-wide v1, v0, Lorg/checkerframework/common/value/util/Range;->from:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-wide v1, v0, Lorg/checkerframework/common/value/util/Range;->to:J

    const-wide/32 v3, 0x7fffffff

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 1125
    iget-object v1, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    return-object v1

    .line 1127
    .end local v0    # "range":Lorg/checkerframework/common/value/util/Range;
    :cond_0
    const-string v0, "org.checkerframework.common.value.qual.IntRange"

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1128
    invoke-static {p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    .line 1129
    .restart local v0    # "range":Lorg/checkerframework/common/value/util/Range;
    invoke-virtual {v0}, Lorg/checkerframework/common/value/util/Range;->isLongEverything()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1130
    iget-object v1, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    return-object v1

    .line 1127
    .end local v0    # "range":Lorg/checkerframework/common/value/util/Range;
    :cond_1
    nop

    .line 1133
    :cond_2
    return-object p1
.end method

.method private createIntRangeAnnotation(JJ)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .param p1, "from"    # J
    .param p3, "to"    # J

    .line 1956
    cmp-long v0, p1, p3

    if-gtz v0, :cond_0

    .line 1957
    new-instance v0, Lorg/checkerframework/javacutil/AnnotationBuilder;

    iget-object v1, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    const-class v2, Lorg/checkerframework/common/value/qual/IntRange;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;)V

    .line 1958
    .local v0, "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    const-string v1, "from"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/Long;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 1959
    const-string v1, "to"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/Long;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 1960
    invoke-virtual {v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1

    .line 1956
    .end local v0    # "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private createIntRangeFromGTENegativeOne()Ljavax/lang/model/element/AnnotationMirror;
    .locals 3

    .line 2013
    new-instance v0, Lorg/checkerframework/javacutil/AnnotationBuilder;

    iget-object v1, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    const-class v2, Lorg/checkerframework/common/value/qual/IntRangeFromGTENegativeOne;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;)V

    .line 2015
    .local v0, "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    invoke-virtual {v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method

.method private createIntRangeFromNonNegative()Ljavax/lang/model/element/AnnotationMirror;
    .locals 3

    .line 2000
    new-instance v0, Lorg/checkerframework/javacutil/AnnotationBuilder;

    iget-object v1, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    const-class v2, Lorg/checkerframework/common/value/qual/IntRangeFromNonNegative;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;)V

    .line 2002
    .local v0, "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    invoke-virtual {v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method

.method private createIntRangeFromPositive()Ljavax/lang/model/element/AnnotationMirror;
    .locals 3

    .line 1987
    new-instance v0, Lorg/checkerframework/javacutil/AnnotationBuilder;

    iget-object v1, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    const-class v2, Lorg/checkerframework/common/value/qual/IntRangeFromPositive;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;)V

    .line 1989
    .local v0, "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    invoke-virtual {v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method

.method private getArrayLenOrIntValue(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;
    .locals 6
    .param p1, "anno"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1057
    const-string v0, "org.checkerframework.common.value.qual.ArrayLen"

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1058
    invoke-static {p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getArrayLength(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    .line 1059
    .local v0, "intValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1060
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1061
    .local v3, "i":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1062
    .end local v3    # "i":Ljava/lang/Integer;
    goto :goto_0

    .line 1063
    .end local v0    # "intValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    goto :goto_1

    .line 1064
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1
    invoke-static {p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getIntValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v1

    .line 1066
    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_1
    return-object v1
.end method

.method public static getArrayLength(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;
    .locals 3
    .param p0, "arrayAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2154
    if-nez p0, :cond_0

    .line 2155
    const/4 v0, 0x0

    return-object v0

    .line 2157
    :cond_0
    const-class v0, Ljava/lang/Integer;

    .line 2158
    const-string v1, "value"

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    .line 2159
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v0}, Lorg/checkerframework/common/value/ValueCheckerUtils;->removeDuplicates(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2160
    return-object v0
.end method

.method public static getBooleanValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;
    .locals 4
    .param p0, "boolAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2193
    if-nez p0, :cond_0

    .line 2194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 2196
    :cond_0
    const-class v0, Ljava/lang/Boolean;

    .line 2197
    const-string v1, "value"

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    .line 2198
    .local v0, "boolValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 2199
    .local v1, "boolSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    if-le v3, v2, :cond_1

    .line 2201
    const/4 v2, 0x0

    return-object v2

    .line 2203
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2
.end method

.method public static getCharValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;
    .locals 5
    .param p0, "intAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .line 2172
    if-nez p0, :cond_0

    .line 2173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 2175
    :cond_0
    const-class v0, Ljava/lang/Long;

    .line 2176
    const-string v1, "value"

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    .line 2177
    .local v0, "intValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 2178
    .local v1, "charValues":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Character;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 2179
    .local v3, "i":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v4

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 2180
    .end local v3    # "i":Ljava/lang/Long;
    goto :goto_0

    .line 2181
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2
.end method

.method public static getDoubleValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;
    .locals 3
    .param p0, "doubleAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 2136
    if-nez p0, :cond_0

    .line 2137
    const/4 v0, 0x0

    return-object v0

    .line 2139
    :cond_0
    const-class v0, Ljava/lang/Double;

    .line 2140
    const-string v1, "value"

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    .line 2141
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-static {v0}, Lorg/checkerframework/common/value/ValueCheckerUtils;->removeDuplicates(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2142
    return-object v0
.end method

.method public static getIntValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;
    .locals 3
    .param p0, "intAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2119
    if-nez p0, :cond_0

    .line 2120
    const/4 v0, 0x0

    return-object v0

    .line 2122
    :cond_0
    const-class v0, Ljava/lang/Long;

    const/4 v1, 0x1

    const-string v2, "value"

    invoke-static {p0, v2, v0, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    .line 2123
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v0}, Lorg/checkerframework/common/value/ValueCheckerUtils;->removeDuplicates(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2124
    return-object v0
.end method

.method public static getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;
    .locals 7
    .param p0, "rangeAnno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 2081
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 2082
    return-object v0

    .line 2084
    :cond_0
    invoke-static {p0}, Lorg/checkerframework/javacutil/AnnotationUtils;->annotationName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v2, "org.checkerframework.common.value.qual.IntRange"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v2, "org.checkerframework.common.value.qual.ArrayLenRange"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_2
    const-string v2, "org.checkerframework.common.value.qual.IntRangeFromGTENegativeOne"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "org.checkerframework.common.value.qual.IntRangeFromNonNegative"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :sswitch_4
    const-string v2, "org.checkerframework.common.value.qual.IntVal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_5
    const-string v2, "org.checkerframework.common.value.qual.IntRangeFromPositive"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string v2, "to"

    const-string v4, "from"

    const-wide/32 v5, 0x7fffffff

    packed-switch v1, :pswitch_data_0

    .line 2103
    return-object v0

    .line 2099
    :pswitch_0
    const-class v0, Ljava/lang/Integer;

    .line 2100
    invoke-static {p0, v4, v0, v3}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-class v4, Ljava/lang/Integer;

    .line 2101
    invoke-static {p0, v2, v4, v3}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    .line 2099
    invoke-static {v0, v1, v2, v3}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    return-object v0

    .line 2095
    :pswitch_1
    const-class v0, Ljava/lang/Long;

    .line 2096
    invoke-static {p0, v4, v0, v3}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-class v4, Ljava/lang/Long;

    .line 2097
    invoke-static {p0, v2, v4, v3}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2095
    invoke-static {v0, v1, v2, v3}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    return-object v0

    .line 2092
    :pswitch_2
    invoke-static {p0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getIntValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getRangeFromValues(Ljava/util/List;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    return-object v0

    .line 2090
    :pswitch_3
    const-wide/16 v0, -0x1

    invoke-static {v0, v1, v5, v6}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    return-object v0

    .line 2088
    :pswitch_4
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v5, v6}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    return-object v0

    .line 2086
    :pswitch_5
    const-wide/16 v0, 0x1

    invoke-static {v0, v1, v5, v6}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x76ca0ed5 -> :sswitch_5
        -0x1b4e6e14 -> :sswitch_4
        0x3a6601b0 -> :sswitch_3
        0x5449e76b -> :sswitch_2
        0x79bc0f27 -> :sswitch_1
        0x7e5c7d48 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSpecifiedMinLenValue(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/Integer;
    .locals 4
    .param p1, "annotation"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 2283
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2284
    return-object v0

    .line 2286
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->annotationName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v2, "org.checkerframework.common.value.qual.ArrayLenRange"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :sswitch_1
    const-string v2, "org.checkerframework.common.value.qual.StringVal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v2, "org.checkerframework.common.value.qual.ArrayLen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "org.checkerframework.common.value.qual.MinLen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 2297
    return-object v0

    .line 2294
    :pswitch_0
    nop

    .line 2295
    invoke-static {p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getStringValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getLengthsForStringValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2294
    invoke-static {v0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0

    .line 2292
    :pswitch_1
    invoke-static {p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getArrayLength(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0

    .line 2290
    :pswitch_2
    invoke-static {p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    iget-wide v0, v0, Lorg/checkerframework/common/value/util/Range;->from:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 2288
    :pswitch_3
    const-string v0, "value"

    const-class v1, Ljava/lang/Integer;

    invoke-static {p1, v0, v1, v3}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x14c46063 -> :sswitch_3
        0x10601bb6 -> :sswitch_2
        0x454d51d6 -> :sswitch_1
        0x79bc0f27 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getStringValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;
    .locals 3
    .param p0, "stringAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2215
    if-nez p0, :cond_0

    .line 2216
    const/4 v0, 0x0

    return-object v0

    .line 2218
    :cond_0
    const-class v0, Ljava/lang/String;

    .line 2219
    const-string v1, "value"

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    .line 2220
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Lorg/checkerframework/common/value/ValueCheckerUtils;->removeDuplicates(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2221
    return-object v0
.end method


# virtual methods
.method public canonicalAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 2
    .param p1, "anno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 230
    const-string v0, "org.checkerframework.common.value.qual.MinLen"

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getMinLenValue(Ljavax/lang/model/element/AnnotationMirror;)I

    move-result v0

    .line 232
    .local v0, "from":I
    const v1, 0x7fffffff

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createArrayLenRangeAnnotation(II)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1

    .line 235
    .end local v0    # "from":I
    :cond_0
    invoke-super {p0, p1}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->canonicalAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0
.end method

.method public convertArrayLenToArrayLenRange(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .param p1, "arrayLenAnno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 2064
    invoke-static {p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getArrayLength(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    .line 2065
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createArrayLenRangeAnnotation(II)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method

.method public convertIntRangeToIntVal(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .param p1, "intRangeAnno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 1768
    invoke-static {p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    .line 1769
    .local v0, "range":Lorg/checkerframework/common/value/util/Range;
    const-class v1, Ljava/lang/Long;

    invoke-static {v0, v1}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getValuesFromRange(Lorg/checkerframework/common/value/util/Range;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 1770
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p0, v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createIntValAnnotation(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    return-object v2
.end method

.method public convertIntValToIntRange(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 5
    .param p1, "intValAnno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 2070
    invoke-static {p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getIntValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    .line 2071
    .local v0, "intValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createIntRangeAnnotation(JJ)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method

.method public createArrayLenAnnotation(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 1853
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p1, :cond_0

    .line 1854
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 1856
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1857
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->BOTTOMVAL:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 1859
    :cond_1
    invoke-static {p1}, Lorg/checkerframework/common/value/ValueCheckerUtils;->removeDuplicates(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 1860
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_2

    goto :goto_0

    .line 1862
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_3

    .line 1863
    invoke-static {p1}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createArrayLenRangeAnnotation(II)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0

    .line 1865
    :cond_3
    new-instance v0, Lorg/checkerframework/javacutil/AnnotationBuilder;

    iget-object v1, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    const-class v2, Lorg/checkerframework/common/value/qual/ArrayLen;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;)V

    .line 1866
    .local v0, "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/util/List;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 1867
    invoke-virtual {v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1

    .line 1861
    .end local v0    # "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->BOTTOMVAL:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0
.end method

.method public createArrayLenRangeAnnotation(II)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 2023
    if-gt p1, p2, :cond_0

    .line 2024
    new-instance v0, Lorg/checkerframework/javacutil/AnnotationBuilder;

    iget-object v1, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    const-class v2, Lorg/checkerframework/common/value/qual/ArrayLenRange;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;)V

    .line 2025
    .local v0, "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    const-string v1, "from"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/Integer;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 2026
    const-string v1, "to"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/Integer;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 2027
    invoke-virtual {v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1

    .line 2023
    .end local v0    # "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public createArrayLenRangeAnnotation(Lorg/checkerframework/common/value/util/Range;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .param p1, "range"    # Lorg/checkerframework/common/value/util/Range;

    .line 2035
    invoke-virtual {p1}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2036
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->BOTTOMVAL:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 2037
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/common/value/util/Range;->isLongEverything()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/checkerframework/common/value/util/Range;->isWithinInteger()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 2040
    :cond_1
    iget-wide v0, p1, Lorg/checkerframework/common/value/util/Range;->from:J

    .line 2041
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iget-wide v1, p1, Lorg/checkerframework/common/value/util/Range;->to:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    .line 2040
    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createArrayLenRangeAnnotation(II)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0

    .line 2038
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0
.end method

.method createArrayLengthResultAnnotation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 5
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1617
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 1618
    .local v0, "arrayAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-static {v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->annotationName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "org.checkerframework.common.value.qual.ArrayLenRange"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v2, "org.checkerframework.common.value.qual.StringVal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v2, "org.checkerframework.common.value.qual.ArrayLen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 1632
    const-wide/16 v1, 0x0

    const-wide/32 v3, 0x7fffffff

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createIntRangeAnnotation(JJ)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1

    .line 1628
    :pswitch_0
    invoke-static {v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getStringValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v1

    .line 1629
    .local v1, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getLengthsForStringValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 1630
    .local v2, "lengthsS":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v3}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createNumberAnnotationMirror(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    return-object v3

    .line 1625
    .end local v1    # "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "lengthsS":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :pswitch_1
    invoke-static {v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v1

    .line 1626
    .local v1, "range":Lorg/checkerframework/common/value/util/Range;
    invoke-virtual {p0, v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createIntRangeAnnotation(Lorg/checkerframework/common/value/util/Range;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    return-object v2

    .line 1621
    .end local v1    # "range":Lorg/checkerframework/common/value/util/Range;
    :pswitch_2
    invoke-static {v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getArrayLength(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v1

    .line 1622
    .local v1, "lengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createNumberAnnotationMirror(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x10601bb6 -> :sswitch_2
        0x454d51d6 -> :sswitch_1
        0x79bc0f27 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createBooleanAnnotation(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 1880
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    if-nez p1, :cond_0

    .line 1881
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 1883
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1884
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->BOTTOMVAL:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 1886
    :cond_1
    invoke-static {p1}, Lorg/checkerframework/common/value/ValueCheckerUtils;->removeDuplicates(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 1887
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    .line 1888
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 1890
    :cond_2
    new-instance v0, Lorg/checkerframework/javacutil/AnnotationBuilder;

    iget-object v1, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    const-class v2, Lorg/checkerframework/common/value/qual/BoolVal;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;)V

    .line 1891
    .local v0, "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/util/List;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 1892
    invoke-virtual {v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method

.method public createCharAnnotation(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 1905
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    if-nez p1, :cond_0

    .line 1906
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 1908
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1909
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->BOTTOMVAL:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 1911
    :cond_1
    invoke-static {p1}, Lorg/checkerframework/common/value/ValueCheckerUtils;->removeDuplicates(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 1912
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    .line 1913
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 1915
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1916
    .local v0, "longValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    .line 1917
    .local v2, "value":C
    int-to-long v3, v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1918
    .end local v2    # "value":C
    goto :goto_0

    .line 1919
    :cond_3
    invoke-virtual {p0, v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createIntValAnnotation(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method

.method public createDoubleValAnnotation(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 1782
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    if-nez p1, :cond_0

    .line 1783
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 1785
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1786
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->BOTTOMVAL:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 1788
    :cond_1
    invoke-static {p1}, Lorg/checkerframework/common/value/ValueCheckerUtils;->removeDuplicates(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 1789
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    .line 1790
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 1792
    :cond_2
    new-instance v0, Lorg/checkerframework/javacutil/AnnotationBuilder;

    iget-object v1, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    const-class v2, Lorg/checkerframework/common/value/qual/DoubleVal;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;)V

    .line 1793
    .local v0, "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/util/List;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 1794
    invoke-virtual {v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic createFlowTransferFunction(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;)Lorg/checkerframework/framework/flow/CFAbstractTransfer;
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createFlowTransferFunction(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;)Lorg/checkerframework/framework/flow/CFTransfer;

    move-result-object p1

    return-object p1
.end method

.method public createFlowTransferFunction(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;)Lorg/checkerframework/framework/flow/CFTransfer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            "Lorg/checkerframework/framework/flow/CFTransfer;",
            ">;)",
            "Lorg/checkerframework/framework/flow/CFTransfer;"
        }
    .end annotation

    .line 262
    .local p1, "analysis":Lorg/checkerframework/framework/flow/CFAbstractAnalysis;, "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/framework/flow/CFTransfer;>;"
    new-instance v0, Lorg/checkerframework/common/value/ValueTransfer;

    invoke-direct {v0, p1}, Lorg/checkerframework/common/value/ValueTransfer;-><init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;)V

    return-object v0
.end method

.method public createIntRangeAnnotation(Lorg/checkerframework/common/value/util/Range;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 4
    .param p1, "range"    # Lorg/checkerframework/common/value/util/Range;

    .line 1968
    invoke-virtual {p1}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1969
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->BOTTOMVAL:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 1970
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/common/value/util/Range;->isLongEverything()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1971
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 1972
    :cond_1
    const-wide/16 v0, 0xa

    invoke-virtual {p1, v0, v1}, Lorg/checkerframework/common/value/util/Range;->isWiderThan(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1973
    iget-wide v0, p1, Lorg/checkerframework/common/value/util/Range;->from:J

    iget-wide v2, p1, Lorg/checkerframework/common/value/util/Range;->to:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createIntRangeAnnotation(JJ)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0

    .line 1975
    :cond_2
    const-class v0, Ljava/lang/Long;

    invoke-static {p1, v0}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getValuesFromRange(Lorg/checkerframework/common/value/util/Range;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 1976
    .local v0, "newValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p0, v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createIntValAnnotation(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method

.method public createIntValAnnotation(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 1745
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez p1, :cond_0

    .line 1746
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 1748
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1749
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->BOTTOMVAL:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 1751
    :cond_1
    invoke-static {p1}, Lorg/checkerframework/common/value/ValueCheckerUtils;->removeDuplicates(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 1752
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    .line 1753
    invoke-static {p1}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1754
    .local v0, "valMin":J
    invoke-static {p1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1755
    .local v2, "valMax":J
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createIntRangeAnnotation(JJ)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    return-object v4

    .line 1757
    .end local v0    # "valMin":J
    .end local v2    # "valMax":J
    :cond_2
    new-instance v0, Lorg/checkerframework/javacutil/AnnotationBuilder;

    iget-object v1, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    const-class v2, Lorg/checkerframework/common/value/qual/IntVal;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;)V

    .line 1758
    .local v0, "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/util/List;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 1759
    invoke-virtual {v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method

.method public createNumberAnnotationMirror(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 1925
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    if-nez p1, :cond_0

    .line 1926
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 1927
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1928
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->BOTTOMVAL:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 1930
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 1931
    .local v0, "first":Ljava/lang/Number;
    instance-of v1, v0, Ljava/lang/Integer;

    if-nez v1, :cond_6

    instance-of v1, v0, Ljava/lang/Short;

    if-nez v1, :cond_6

    instance-of v1, v0, Ljava/lang/Long;

    if-nez v1, :cond_6

    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_2

    goto :goto_2

    .line 1940
    :cond_2
    instance-of v1, v0, Ljava/lang/Double;

    if-nez v1, :cond_4

    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_3

    goto :goto_0

    .line 1947
    :cond_3
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ValueAnnotatedTypeFactory: unexpected class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1948
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1941
    :cond_4
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1942
    .local v1, "intValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    .line 1943
    .local v3, "number":Ljava/lang/Number;
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1944
    .end local v3    # "number":Ljava/lang/Number;
    goto :goto_1

    .line 1945
    :cond_5
    invoke-virtual {p0, v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createDoubleValAnnotation(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    return-object v2

    .line 1935
    .end local v1    # "intValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    :cond_6
    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1936
    .local v1, "intValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    .line 1937
    .restart local v3    # "number":Ljava/lang/Number;
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1938
    .end local v3    # "number":Ljava/lang/Number;
    goto :goto_3

    .line 1939
    :cond_7
    invoke-virtual {p0, v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createIntValAnnotation(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    return-object v2
.end method

.method public createQualifierHierarchy(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)Lorg/checkerframework/framework/type/QualifierHierarchy;
    .locals 1
    .param p1, "factory"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;

    .line 267
    new-instance v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueQualifierHierarchy;-><init>(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)V

    return-object v0
.end method

.method createResultingAnnotation(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p1, "resultType"    # Ljavax/lang/model/type/TypeMirror;
    .param p2, "value"    # Ljava/lang/Object;

    .line 1645
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createResultingAnnotation(Ljavax/lang/model/type/TypeMirror;Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0
.end method

.method createResultingAnnotation(Ljavax/lang/model/type/TypeMirror;Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 6
    .param p1, "resultType"    # Ljavax/lang/model/type/TypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljava/util/List<",
            "*>;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 1657
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez p2, :cond_0

    .line 1658
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 1662
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1663
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1664
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->BOTTOMVAL:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 1667
    :cond_1
    invoke-static {p1}, Lorg/checkerframework/javacutil/TypesUtils;->isString(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1668
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1669
    .local v0, "stringVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1670
    .local v2, "o":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1671
    .end local v2    # "o":Ljava/lang/Object;
    goto :goto_0

    .line 1672
    :cond_2
    invoke-virtual {p0, v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createStringAnnotation(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1

    .line 1673
    .end local v0    # "stringVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-static {p1}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getClassFromType(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, [C

    if-ne v0, v1, :cond_6

    .line 1674
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1675
    .restart local v0    # "stringVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1676
    .restart local v2    # "o":Ljava/lang/Object;
    instance-of v3, v2, [C

    if-eqz v3, :cond_4

    .line 1677
    new-instance v3, Ljava/lang/String;

    move-object v4, v2

    check-cast v4, [C

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1679
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1681
    .end local v2    # "o":Ljava/lang/Object;
    :goto_2
    goto :goto_1

    .line 1682
    :cond_5
    invoke-virtual {p0, v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createStringAnnotation(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1

    .line 1686
    .end local v0    # "stringVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    invoke-static {p1}, Lorg/checkerframework/javacutil/TypesUtils;->isPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1687
    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    .local v0, "primitiveKind":Ljavax/lang/model/type/TypeKind;
    goto :goto_3

    .line 1688
    .end local v0    # "primitiveKind":Ljavax/lang/model/type/TypeKind;
    :cond_7
    invoke-static {p1}, Lorg/checkerframework/javacutil/TypesUtils;->isBoxedPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1689
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v0, p1}, Ljavax/lang/model/util/Types;->unboxedType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/PrimitiveType;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    .line 1694
    .restart local v0    # "primitiveKind":Ljavax/lang/model/type/TypeKind;
    :goto_3
    sget-object v1, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$3;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {v0}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1731
    :pswitch_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected kind:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1696
    :pswitch_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1697
    .local v1, "boolVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1698
    .local v3, "o":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljava/lang/Boolean;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1699
    .end local v3    # "o":Ljava/lang/Object;
    goto :goto_4

    .line 1700
    :cond_8
    invoke-virtual {p0, v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createBooleanAnnotation(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    return-object v2

    .line 1721
    .end local v1    # "boolVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    :pswitch_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1722
    .local v1, "charVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1723
    .restart local v3    # "o":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_9

    .line 1724
    move-object v4, v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1726
    :cond_9
    move-object v4, v3

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1728
    .end local v3    # "o":Ljava/lang/Object;
    :goto_6
    goto :goto_5

    .line 1729
    :cond_a
    invoke-virtual {p0, v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createCharAnnotation(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    return-object v2

    .line 1707
    .end local v1    # "charVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    :pswitch_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1708
    .local v1, "numberVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1709
    .local v2, "characterVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1710
    .local v4, "o":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/Character;

    if-eqz v5, :cond_b

    .line 1711
    move-object v5, v4

    check-cast v5, Ljava/lang/Character;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1713
    :cond_b
    move-object v5, v4

    check-cast v5, Ljava/lang/Number;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1715
    .end local v4    # "o":Ljava/lang/Object;
    :goto_8
    goto :goto_7

    .line 1716
    :cond_c
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1717
    invoke-virtual {p0, v2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createCharAnnotation(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    return-object v3

    .line 1719
    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v3}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createNumberAnnotationMirror(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    return-object v3

    .line 1691
    .end local v0    # "primitiveKind":Ljavax/lang/model/type/TypeKind;
    .end local v1    # "numberVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    .end local v2    # "characterVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    :cond_e
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public createStringAnnotation(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 1824
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 1825
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 1827
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1828
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->BOTTOMVAL:Ljavax/lang/model/element/AnnotationMirror;

    return-object v0

    .line 1830
    :cond_1
    invoke-static {p1}, Lorg/checkerframework/common/value/ValueCheckerUtils;->removeDuplicates(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 1831
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    .line 1833
    invoke-static {p1}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getLengthsForStringValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1834
    .local v0, "lengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createArrayLenAnnotation(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1

    .line 1836
    .end local v0    # "lengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    new-instance v0, Lorg/checkerframework/javacutil/AnnotationBuilder;

    iget-object v1, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    const-class v2, Lorg/checkerframework/common/value/qual/StringVal;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;)V

    .line 1837
    .local v0, "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/util/List;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 1838
    invoke-virtual {v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
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

    .line 242
    new-instance v0, Ljava/util/LinkedHashSet;

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lorg/checkerframework/common/value/qual/ArrayLen;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lorg/checkerframework/common/value/qual/ArrayLenRange;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lorg/checkerframework/common/value/qual/IntVal;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lorg/checkerframework/common/value/qual/IntRange;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lorg/checkerframework/common/value/qual/BoolVal;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Lorg/checkerframework/common/value/qual/StringVal;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Lorg/checkerframework/common/value/qual/DoubleVal;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Lorg/checkerframework/common/value/qual/BottomVal;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Lorg/checkerframework/common/value/qual/UnknownVal;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-class v3, Lorg/checkerframework/common/value/qual/IntRangeFromPositive;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-class v3, Lorg/checkerframework/common/value/qual/IntRangeFromNonNegative;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-class v3, Lorg/checkerframework/common/value/qual/IntRangeFromGTENegativeOne;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-class v3, Lorg/checkerframework/common/value/qual/PolyValue;

    aput-object v3, v1, v2

    .line 243
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 242
    return-object v0
.end method

.method protected createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
    .locals 5

    .line 1075
    new-instance v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$2;

    invoke-direct {v0, p0, p0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$2;-><init>(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 1085
    .local v0, "arrayCreation":Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
    new-instance v1, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;

    const/4 v2, 0x3

    new-array v2, v2, [Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    new-instance v3, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;

    invoke-direct {v3, p0, p0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTreeAnnotator;-><init>(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;

    invoke-direct {v3, p0}, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 1087
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->addStandardLiteralQualifiers()Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;-><init>([Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;)V

    .line 1085
    return-object v1
.end method

.method protected createTypeAnnotator()Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;
    .locals 4

    .line 305
    new-instance v0, Lorg/checkerframework/framework/type/typeannotator/ListTypeAnnotator;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;

    new-instance v2, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTypeAnnotator;

    invoke-direct {v2, p0, p0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$ValueTypeAnnotator;-><init>(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-super {p0}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->createTypeAnnotator()Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/checkerframework/framework/type/typeannotator/ListTypeAnnotator;-><init>([Lorg/checkerframework/framework/type/typeannotator/TypeAnnotator;)V

    return-object v0
.end method

.method protected createTypeHierarchy()Lorg/checkerframework/framework/type/TypeHierarchy;
    .locals 7

    .line 274
    new-instance v6, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$1;

    iget-object v2, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 276
    invoke-virtual {p0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v3

    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 277
    const-string v1, "ignoreRawTypeArguments"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v4

    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 278
    const-string v1, "invariantArrays"

    invoke-virtual {v0, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v5

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$1;-><init>(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/framework/type/QualifierHierarchy;ZZ)V

    .line 274
    return-object v6
.end method

.method public getDummyAssignedTo(Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p1, "expressionTree"    # Lcom/sun/source/tree/ExpressionTree;

    .line 2392
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 2393
    .local v0, "type":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->VOID:Ljavax/lang/model/type/TypeKind;

    if-eq v1, v2, :cond_0

    .line 2394
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->type(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 2395
    .local v1, "atm":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p0, v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->addDefaultAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 2396
    return-object v1

    .line 2398
    .end local v1    # "atm":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected getFieldInvariantDeclarationAnnotations()Ljava/util/Set;
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

    .line 330
    new-instance v0, Ljava/util/HashSet;

    .line 331
    invoke-super {p0}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->getFieldInvariantDeclarationAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 332
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;>;"
    const-class v1, Lorg/checkerframework/common/value/qual/MinLenFieldInvariant;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 333
    return-object v0
.end method

.method public getFieldInvariants(Ljavax/lang/model/element/TypeElement;)Lorg/checkerframework/framework/util/FieldInvariants;
    .locals 8
    .param p1, "element"    # Ljavax/lang/model/element/TypeElement;

    .line 310
    const-class v0, Lorg/checkerframework/common/value/qual/MinLenFieldInvariant;

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 311
    .local v0, "fieldInvarAnno":Ljavax/lang/model/element/AnnotationMirror;
    if-nez v0, :cond_0

    .line 312
    const/4 v1, 0x0

    return-object v1

    .line 314
    :cond_0
    const-class v1, Ljava/lang/String;

    .line 315
    const-string v2, "field"

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v1

    .line 316
    .local v1, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v2, Ljava/lang/Integer;

    .line 317
    const-string v4, "minLen"

    invoke-static {v0, v4, v2, v3}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v2

    .line 318
    .local v2, "minlens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .local v3, "qualifiers":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 320
    .local v5, "minlen":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const v7, 0x7fffffff

    invoke-virtual {p0, v6, v7}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createArrayLenRangeAnnotation(II)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    .end local v5    # "minlen":Ljava/lang/Integer;
    goto :goto_0

    .line 323
    :cond_1
    invoke-super {p0, p1}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->getFieldInvariants(Ljavax/lang/model/element/TypeElement;)Lorg/checkerframework/framework/util/FieldInvariants;

    move-result-object v4

    .line 324
    .local v4, "superInvariants":Lorg/checkerframework/framework/util/FieldInvariants;
    new-instance v5, Lorg/checkerframework/framework/util/FieldInvariants;

    invoke-direct {v5, v4, v1, v3}, Lorg/checkerframework/framework/util/FieldInvariants;-><init>(Lorg/checkerframework/framework/util/FieldInvariants;Ljava/util/List;Ljava/util/List;)V

    return-object v5
.end method

.method public getFromValueFromIntRange(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)J
    .locals 6
    .param p1, "atm"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 370
    const-class v0, Lorg/checkerframework/common/value/qual/IntRange;

    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 372
    .local v0, "anno":Ljavax/lang/model/element/AnnotationMirror;
    const-string v1, "from"

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->hasElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 373
    const-class v2, Ljava/lang/Long;

    invoke-static {v0, v1, v2, v3}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 377
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 378
    .local v1, "type":Ljavax/lang/model/type/TypeMirror;
    sget-object v2, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$3;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-interface {v1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 420
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on a type of kind "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v2

    .line 395
    :pswitch_0
    move-object v2, v1

    check-cast v2, Ljavax/lang/model/type/DeclaredType;

    invoke-static {v2}, Lorg/checkerframework/javacutil/TypesUtils;->getQualifiedName(Ljavax/lang/model/type/DeclaredType;)Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 396
    .local v2, "qualifiedName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v3, "java.lang.Long"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_1
    const-string v3, "java.lang.Byte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_2
    const-string v3, "java.lang.Character"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_3
    const-string v3, "java.lang.Short"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_4
    const-string v4, "java.lang.Integer"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :goto_0
    const/4 v3, -0x1

    :goto_1
    packed-switch v3, :pswitch_data_1

    .line 413
    new-instance v3, Lorg/checkerframework/javacutil/UserError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal type \"@IntRange "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\". @IntRange can be applied to Java integral types."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/checkerframework/javacutil/UserError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 410
    :pswitch_1
    const-wide/high16 v3, -0x8000000000000000L

    .line 411
    .local v3, "from":J
    goto :goto_2

    .line 407
    .end local v3    # "from":J
    :pswitch_2
    const-wide/16 v3, 0x0

    .line 408
    .restart local v3    # "from":J
    goto :goto_2

    .line 404
    .end local v3    # "from":J
    :pswitch_3
    const-wide/16 v3, -0x80

    .line 405
    .restart local v3    # "from":J
    goto :goto_2

    .line 401
    .end local v3    # "from":J
    :pswitch_4
    const-wide/16 v3, -0x8000

    .line 402
    .restart local v3    # "from":J
    goto :goto_2

    .line 398
    .end local v3    # "from":J
    :pswitch_5
    const-wide/32 v3, -0x80000000

    .line 399
    .restart local v3    # "from":J
    nop

    .line 418
    :goto_2
    goto :goto_3

    .line 392
    .end local v2    # "qualifiedName":Ljava/lang/String;
    .end local v3    # "from":J
    :pswitch_6
    const-wide/high16 v3, -0x8000000000000000L

    .line 393
    .restart local v3    # "from":J
    goto :goto_3

    .line 389
    .end local v3    # "from":J
    :pswitch_7
    const-wide/16 v3, 0x0

    .line 390
    .restart local v3    # "from":J
    goto :goto_3

    .line 386
    .end local v3    # "from":J
    :pswitch_8
    const-wide/16 v3, -0x80

    .line 387
    .restart local v3    # "from":J
    goto :goto_3

    .line 383
    .end local v3    # "from":J
    :pswitch_9
    const-wide/16 v3, -0x8000

    .line 384
    .restart local v3    # "from":J
    goto :goto_3

    .line 380
    .end local v3    # "from":J
    :pswitch_a
    const-wide/32 v3, -0x80000000

    .line 381
    .restart local v3    # "from":J
    nop

    .line 422
    :goto_3
    return-wide v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x7a988a96 -> :sswitch_4
        -0x1ec16c58 -> :sswitch_3
        0x9415455 -> :sswitch_2
        0x17c0bc5c -> :sswitch_1
        0x17c521d0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getMaxLenValue(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/Integer;
    .locals 3
    .param p1, "annotation"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 2258
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2259
    return-object v0

    .line 2261
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->annotationName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v2, "org.checkerframework.common.value.qual.ArrayLenRange"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "org.checkerframework.common.value.qual.StringVal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v2, "org.checkerframework.common.value.qual.ArrayLen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 2270
    return-object v0

    .line 2267
    :pswitch_0
    nop

    .line 2268
    invoke-static {p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getStringValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getLengthsForStringValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2267
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0

    .line 2265
    :pswitch_1
    invoke-static {p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getArrayLength(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0

    .line 2263
    :pswitch_2
    invoke-static {p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    iget-wide v0, v0, Lorg/checkerframework/common/value/util/Range;->to:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10601bb6 -> :sswitch_2
        0x454d51d6 -> :sswitch_1
        0x79bc0f27 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getMethodIdentifier()Lorg/checkerframework/common/value/ValueMethodIdentifier;
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->methods:Lorg/checkerframework/common/value/ValueMethodIdentifier;

    return-object v0
.end method

.method public getMinLenFromString(Ljava/lang/String;Lcom/sun/source/tree/Tree;Lcom/sun/source/util/TreePath;)I
    .locals 5
    .param p1, "sequenceExpression"    # Ljava/lang/String;
    .param p2, "tree"    # Lcom/sun/source/tree/Tree;
    .param p3, "currentPath"    # Lcom/sun/source/util/TreePath;

    .line 2350
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p3}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getReceiverFromJavaExpressionString(Ljava/lang/String;Lcom/sun/source/util/TreePath;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v1
    :try_end_0
    .catch Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2354
    .local v1, "expressionObj":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    nop

    .line 2356
    instance-of v2, v1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;

    if-eqz v2, :cond_1

    .line 2357
    move-object v2, v1

    check-cast v2, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;

    .line 2359
    .local v2, "sequenceLiteral":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;
    invoke-virtual {v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 2360
    .local v3, "sequenceLiteralValue":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 2361
    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    .line 2360
    .end local v2    # "sequenceLiteral":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;
    .end local v3    # "sequenceLiteralValue":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 2363
    :cond_1
    instance-of v2, v1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;

    if-eqz v2, :cond_2

    .line 2364
    move-object v0, v1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;

    .line 2367
    .local v0, "arrayCreation":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;->getInitializers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    return v2

    .line 2363
    .end local v0    # "arrayCreation":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;
    :cond_2
    :goto_0
    nop

    .line 2370
    const-class v2, Lorg/checkerframework/common/value/qual/ArrayLenRange;

    invoke-virtual {p0, v1, p2, v2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotationFromReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lcom/sun/source/tree/Tree;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 2371
    .local v2, "lengthAnno":Ljavax/lang/model/element/AnnotationMirror;
    if-nez v2, :cond_3

    .line 2372
    const-class v3, Lorg/checkerframework/common/value/qual/ArrayLen;

    invoke-virtual {p0, v1, p2, v3}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotationFromReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lcom/sun/source/tree/Tree;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 2374
    :cond_3
    if-nez v2, :cond_4

    .line 2375
    const-class v3, Lorg/checkerframework/common/value/qual/StringVal;

    invoke-virtual {p0, v1, p2, v3}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotationFromReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lcom/sun/source/tree/Tree;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 2378
    :cond_4
    if-nez v2, :cond_5

    .line 2380
    return v0

    .line 2383
    :cond_5
    invoke-virtual {p0, v2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getMinLenValue(Ljavax/lang/model/element/AnnotationMirror;)I

    move-result v0

    return v0

    .line 2351
    .end local v1    # "expressionObj":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .end local v2    # "lengthAnno":Ljavax/lang/model/element/AnnotationMirror;
    :catch_0
    move-exception v1

    .line 2353
    .local v1, "e":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
    return v0
.end method

.method public getMinLenValue(Ljavax/lang/model/element/AnnotationMirror;)I
    .locals 2
    .param p1, "annotation"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 2310
    invoke-direct {p0, p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getSpecifiedMinLenValue(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/Integer;

    move-result-object v0

    .line 2311
    .local v0, "minLen":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_0

    .line 2314
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 2312
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public getMinLenValue(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)I
    .locals 1
    .param p1, "atm"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 2250
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getMinLenValue(Ljavax/lang/model/element/AnnotationMirror;)I

    move-result v0

    return v0
.end method

.method public getMinimumIntegralValue(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Long;
    .locals 4
    .param p1, "atm"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 2327
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 2328
    .local v0, "anm":Ljavax/lang/model/element/AnnotationMirror;
    const-string v1, "org.checkerframework.common.value.qual.IntVal"

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2329
    invoke-static {v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getIntValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v1

    .line 2330
    .local v1, "possibleValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v1}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    return-object v2

    .line 2331
    .end local v1    # "possibleValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_0
    invoke-virtual {p0, v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->isIntRange(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2332
    invoke-static {v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v1

    .line 2333
    .local v1, "range":Lorg/checkerframework/common/value/util/Range;
    iget-wide v2, v1, Lorg/checkerframework/common/value/util/Range;->from:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2

    .line 2335
    .end local v1    # "range":Lorg/checkerframework/common/value/util/Range;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getToValueFromIntRange(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)J
    .locals 6
    .param p1, "atm"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 434
    const-class v0, Lorg/checkerframework/common/value/qual/IntRange;

    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 436
    .local v0, "anno":Ljavax/lang/model/element/AnnotationMirror;
    const-string v1, "to"

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->hasElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 437
    const-class v2, Ljava/lang/Long;

    invoke-static {v0, v1, v2, v3}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 441
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 442
    .local v1, "type":Ljavax/lang/model/type/TypeMirror;
    sget-object v2, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$3;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-interface {v1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 484
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    const-string v3, "Tried to apply a default to an IntRange annotation that was neither an integral primitive nor a declared type."

    invoke-direct {v2, v3}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v2

    .line 459
    :pswitch_0
    move-object v2, v1

    check-cast v2, Ljavax/lang/model/type/DeclaredType;

    invoke-static {v2}, Lorg/checkerframework/javacutil/TypesUtils;->getQualifiedName(Ljavax/lang/model/type/DeclaredType;)Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 460
    .local v2, "qualifiedName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v3, "java.lang.Long"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_1
    const-string v3, "java.lang.Byte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_2
    const-string v3, "java.lang.Character"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_3
    const-string v3, "java.lang.Short"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_4
    const-string v4, "java.lang.Integer"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :goto_0
    const/4 v3, -0x1

    :goto_1
    packed-switch v3, :pswitch_data_1

    .line 477
    new-instance v3, Lorg/checkerframework/javacutil/UserError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal type \"@IntRange "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\". @IntRange can be applied to Java integral types."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/checkerframework/javacutil/UserError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 474
    :pswitch_1
    const-wide v3, 0x7fffffffffffffffL

    .line 475
    .local v3, "to":J
    goto :goto_2

    .line 471
    .end local v3    # "to":J
    :pswitch_2
    const-wide/32 v3, 0xffff

    .line 472
    .restart local v3    # "to":J
    goto :goto_2

    .line 468
    .end local v3    # "to":J
    :pswitch_3
    const-wide/16 v3, 0x7f

    .line 469
    .restart local v3    # "to":J
    goto :goto_2

    .line 465
    .end local v3    # "to":J
    :pswitch_4
    const-wide/16 v3, 0x7fff

    .line 466
    .restart local v3    # "to":J
    goto :goto_2

    .line 462
    .end local v3    # "to":J
    :pswitch_5
    const-wide/32 v3, 0x7fffffff

    .line 463
    .restart local v3    # "to":J
    nop

    .line 482
    :goto_2
    goto :goto_3

    .line 456
    .end local v2    # "qualifiedName":Ljava/lang/String;
    .end local v3    # "to":J
    :pswitch_6
    const-wide v3, 0x7fffffffffffffffL

    .line 457
    .restart local v3    # "to":J
    goto :goto_3

    .line 453
    .end local v3    # "to":J
    :pswitch_7
    const-wide/32 v3, 0xffff

    .line 454
    .restart local v3    # "to":J
    goto :goto_3

    .line 450
    .end local v3    # "to":J
    :pswitch_8
    const-wide/16 v3, 0x7f

    .line 451
    .restart local v3    # "to":J
    goto :goto_3

    .line 447
    .end local v3    # "to":J
    :pswitch_9
    const-wide/16 v3, 0x7fff

    .line 448
    .restart local v3    # "to":J
    goto :goto_3

    .line 444
    .end local v3    # "to":J
    :pswitch_a
    const-wide/32 v3, 0x7fffffff

    .line 445
    .restart local v3    # "to":J
    nop

    .line 487
    :goto_3
    return-wide v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x7a988a96 -> :sswitch_4
        -0x1ec16c58 -> :sswitch_3
        0x9415455 -> :sswitch_2
        0x17c0bc5c -> :sswitch_1
        0x17c521d0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public isIntRange(Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)Z"
        }
    .end annotation

    .line 2225
    .local p1, "anmSet":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    .line 2226
    .local v1, "anm":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p0, v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->isIntRange(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2227
    const/4 v0, 0x1

    return v0

    .line 2229
    .end local v1    # "anm":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 2230
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isIntRange(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 2
    .param p1, "anno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 2242
    invoke-static {p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->annotationName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v0

    .line 2243
    .local v0, "name":Ljava/lang/String;
    const-string v1, "org.checkerframework.common.value.qual.IntRange"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2244
    const-string v1, "org.checkerframework.common.value.qual.IntRangeFromPositive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2245
    const-string v1, "org.checkerframework.common.value.qual.IntRangeFromNonNegative"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2246
    const-string v1, "org.checkerframework.common.value.qual.IntRangeFromGTENegativeOne"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 2243
    :goto_1
    return v1
.end method

.method public methodFromUse(Lcom/sun/source/tree/ExpressionTree;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;
    .locals 7
    .param p1, "tree"    # Lcom/sun/source/tree/ExpressionTree;
    .param p2, "methodElt"    # Ljavax/lang/model/element/ExecutableElement;
    .param p3, "receiverType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 344
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->methodFromUse(Lcom/sun/source/tree/ExpressionTree;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;

    move-result-object v0

    .line 345
    .local v0, "superPair":Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const-string v2, "values"

    invoke-static {p2, v2, v1}, Lorg/checkerframework/javacutil/ElementUtils;->matchesElement(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 346
    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->ENUM:Ljavax/lang/model/element/ElementKind;

    if-ne v1, v2, :cond_2

    .line 347
    invoke-static {p2}, Lorg/checkerframework/javacutil/ElementUtils;->isStatic(Ljavax/lang/model/element/Element;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 348
    const/4 v1, 0x0

    .line 349
    .local v1, "count":I
    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    invoke-interface {v2}, Ljavax/lang/model/element/Element;->getEnclosedElements()Ljava/util/List;

    move-result-object v2

    .line 350
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/Element;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/Element;

    .line 351
    .local v4, "el":Ljavax/lang/model/element/Element;
    invoke-interface {v4}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v5

    sget-object v6, Ljavax/lang/model/element/ElementKind;->ENUM_CONSTANT:Ljavax/lang/model/element/ElementKind;

    if-ne v5, v6, :cond_0

    .line 352
    add-int/lit8 v1, v1, 0x1

    .line 354
    .end local v4    # "el":Ljavax/lang/model/element/Element;
    :cond_0
    goto :goto_0

    .line 355
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createArrayLenAnnotation(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 356
    .local v3, "am":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v4, v0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;->executableType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 358
    .end local v1    # "count":I
    .end local v2    # "l":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/Element;>;"
    .end local v3    # "am":Ljavax/lang/model/element/AnnotationMirror;
    :cond_2
    return-object v0
.end method
