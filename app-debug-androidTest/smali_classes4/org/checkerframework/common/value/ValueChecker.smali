.class public Lorg/checkerframework/common/value/ValueChecker;
.super Lorg/checkerframework/common/basetype/BaseTypeChecker;
.source "ValueChecker.java"


# annotations
.annotation runtime Lorg/checkerframework/framework/qual/StubFiles;
    value = {
        "statically-executable.astub"
    }
.end annotation

.annotation runtime Lorg/checkerframework/framework/source/SupportedOptions;
    value = {
        "reportEvalWarns",
        "ignoreRangeOverflow",
        "nonNullStringsConcatenation"
    }
.end annotation


# static fields
.field public static final IGNORE_RANGE_OVERFLOW:Ljava/lang/String; = "ignoreRangeOverflow"

.field public static final NON_NULL_STRINGS_CONCATENATION:Ljava/lang/String; = "nonNullStringsConcatenation"

.field public static final REPORT_EVAL_WARNS:Ljava/lang/String; = "reportEvalWarns"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;-><init>()V

    return-void
.end method


# virtual methods
.method protected createSourceVisitor()Lorg/checkerframework/common/basetype/BaseTypeVisitor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/common/basetype/BaseTypeVisitor<",
            "*>;"
        }
    .end annotation

    .line 40
    new-instance v0, Lorg/checkerframework/common/value/ValueVisitor;

    invoke-direct {v0, p0}, Lorg/checkerframework/common/value/ValueVisitor;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    return-object v0
.end method

.method protected bridge synthetic createSourceVisitor()Lorg/checkerframework/framework/source/SourceVisitor;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lorg/checkerframework/common/value/ValueChecker;->createSourceVisitor()Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    move-result-object v0

    return-object v0
.end method

.method protected getImmediateSubcheckerClasses()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/checkerframework/common/basetype/BaseTypeChecker;",
            ">;>;"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method

.method public shouldResolveReflection()Z
    .locals 1

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public typeProcessingOver()V
    .locals 1

    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Lorg/checkerframework/common/value/util/Range;->ignoreOverflow:Z

    .line 61
    invoke-super {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->typeProcessingOver()V

    .line 62
    return-void
.end method
