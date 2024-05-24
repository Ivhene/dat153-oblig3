.class public Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;
.super Ljava/lang/Object;
.source "StrSubstitutor.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_ESCAPE:C = '$'

.field public static final DEFAULT_PREFIX:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

.field public static final DEFAULT_SUFFIX:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

.field public static final DEFAULT_VALUE_DELIMITER:Lorg/checkerframework/org/apache/commons/text/StrMatcher;


# instance fields
.field private disableSubstitutionInValues:Z

.field private enableSubstitutionInVariables:Z

.field private escapeChar:C

.field private prefixMatcher:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

.field private preserveEscapes:Z

.field private suffixMatcher:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

.field private valueDelimiterMatcher:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

.field private variableResolver:Lorg/checkerframework/org/apache/commons/text/StrLookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/org/apache/commons/text/StrLookup<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 137
    const-string v0, "${"

    invoke-static {v0}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->DEFAULT_PREFIX:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 142
    const-string v0, "}"

    invoke-static {v0}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 147
    const-string v0, ":-"

    invoke-static {v0}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->DEFAULT_VALUE_DELIMITER:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 262
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/checkerframework/org/apache/commons/text/StrLookup;

    sget-object v1, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->DEFAULT_PREFIX:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    sget-object v2, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    const/16 v3, 0x24

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;-><init>(Lorg/checkerframework/org/apache/commons/text/StrLookup;Lorg/checkerframework/org/apache/commons/text/StrMatcher;Lorg/checkerframework/org/apache/commons/text/StrMatcher;C)V

    .line 263
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)V"
        }
    .end annotation

    .line 273
    .local p1, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    invoke-static {p1}, Lorg/checkerframework/org/apache/commons/text/StrLookup;->mapLookup(Ljava/util/Map;)Lorg/checkerframework/org/apache/commons/text/StrLookup;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->DEFAULT_PREFIX:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    sget-object v2, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    const/16 v3, 0x24

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;-><init>(Lorg/checkerframework/org/apache/commons/text/StrLookup;Lorg/checkerframework/org/apache/commons/text/StrMatcher;Lorg/checkerframework/org/apache/commons/text/StrMatcher;C)V

    .line 274
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 286
    .local p1, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    invoke-static {p1}, Lorg/checkerframework/org/apache/commons/text/StrLookup;->mapLookup(Ljava/util/Map;)Lorg/checkerframework/org/apache/commons/text/StrLookup;

    move-result-object v0

    const/16 v1, 0x24

    invoke-direct {p0, v0, p2, p3, v1}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;-><init>(Lorg/checkerframework/org/apache/commons/text/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V

    .line 287
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 1
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "escape"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C)V"
        }
    .end annotation

    .line 301
    .local p1, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    invoke-static {p1}, Lorg/checkerframework/org/apache/commons/text/StrLookup;->mapLookup(Ljava/util/Map;)Lorg/checkerframework/org/apache/commons/text/StrLookup;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;-><init>(Lorg/checkerframework/org/apache/commons/text/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V

    .line 302
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V
    .locals 6
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "escape"    # C
    .param p5, "valueDelimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 317
    .local p1, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    invoke-static {p1}, Lorg/checkerframework/org/apache/commons/text/StrLookup;->mapLookup(Ljava/util/Map;)Lorg/checkerframework/org/apache/commons/text/StrLookup;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;-><init>(Lorg/checkerframework/org/apache/commons/text/StrLookup;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V

    .line 318
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/commons/text/StrLookup;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/org/apache/commons/text/StrLookup<",
            "*>;)V"
        }
    .end annotation

    .line 326
    .local p1, "variableResolver":Lorg/checkerframework/org/apache/commons/text/StrLookup;, "Lorg/checkerframework/org/apache/commons/text/StrLookup<*>;"
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->DEFAULT_PREFIX:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    sget-object v1, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    const/16 v2, 0x24

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;-><init>(Lorg/checkerframework/org/apache/commons/text/StrLookup;Lorg/checkerframework/org/apache/commons/text/StrMatcher;Lorg/checkerframework/org/apache/commons/text/StrMatcher;C)V

    .line 327
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/commons/text/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 1
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "escape"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/org/apache/commons/text/StrLookup<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C)V"
        }
    .end annotation

    .line 339
    .local p1, "variableResolver":Lorg/checkerframework/org/apache/commons/text/StrLookup;, "Lorg/checkerframework/org/apache/commons/text/StrLookup<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->preserveEscapes:Z

    .line 340
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->setVariableResolver(Lorg/checkerframework/org/apache/commons/text/StrLookup;)V

    .line 341
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->setVariablePrefix(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;

    .line 342
    invoke-virtual {p0, p3}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->setVariableSuffix(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;

    .line 343
    invoke-virtual {p0, p4}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->setEscapeChar(C)V

    .line 344
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->DEFAULT_VALUE_DELIMITER:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->setValueDelimiterMatcher(Lorg/checkerframework/org/apache/commons/text/StrMatcher;)Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;

    .line 345
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/commons/text/StrLookup;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V
    .locals 1
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "escape"    # C
    .param p5, "valueDelimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/org/apache/commons/text/StrLookup<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 358
    .local p1, "variableResolver":Lorg/checkerframework/org/apache/commons/text/StrLookup;, "Lorg/checkerframework/org/apache/commons/text/StrLookup<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->preserveEscapes:Z

    .line 359
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->setVariableResolver(Lorg/checkerframework/org/apache/commons/text/StrLookup;)V

    .line 360
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->setVariablePrefix(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;

    .line 361
    invoke-virtual {p0, p3}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->setVariableSuffix(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;

    .line 362
    invoke-virtual {p0, p4}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->setEscapeChar(C)V

    .line 363
    invoke-virtual {p0, p5}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->setValueDelimiter(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;

    .line 364
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/commons/text/StrLookup;Lorg/checkerframework/org/apache/commons/text/StrMatcher;Lorg/checkerframework/org/apache/commons/text/StrMatcher;C)V
    .locals 6
    .param p2, "prefixMatcher"    # Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .param p3, "suffixMatcher"    # Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .param p4, "escape"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/org/apache/commons/text/StrLookup<",
            "*>;",
            "Lorg/checkerframework/org/apache/commons/text/StrMatcher;",
            "Lorg/checkerframework/org/apache/commons/text/StrMatcher;",
            "C)V"
        }
    .end annotation

    .line 378
    .local p1, "variableResolver":Lorg/checkerframework/org/apache/commons/text/StrLookup;, "Lorg/checkerframework/org/apache/commons/text/StrLookup<*>;"
    sget-object v5, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->DEFAULT_VALUE_DELIMITER:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;-><init>(Lorg/checkerframework/org/apache/commons/text/StrLookup;Lorg/checkerframework/org/apache/commons/text/StrMatcher;Lorg/checkerframework/org/apache/commons/text/StrMatcher;CLorg/checkerframework/org/apache/commons/text/StrMatcher;)V

    .line 379
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/commons/text/StrLookup;Lorg/checkerframework/org/apache/commons/text/StrMatcher;Lorg/checkerframework/org/apache/commons/text/StrMatcher;CLorg/checkerframework/org/apache/commons/text/StrMatcher;)V
    .locals 1
    .param p2, "prefixMatcher"    # Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .param p3, "suffixMatcher"    # Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .param p4, "escape"    # C
    .param p5, "valueDelimiterMatcher"    # Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/org/apache/commons/text/StrLookup<",
            "*>;",
            "Lorg/checkerframework/org/apache/commons/text/StrMatcher;",
            "Lorg/checkerframework/org/apache/commons/text/StrMatcher;",
            "C",
            "Lorg/checkerframework/org/apache/commons/text/StrMatcher;",
            ")V"
        }
    .end annotation

    .line 393
    .local p1, "variableResolver":Lorg/checkerframework/org/apache/commons/text/StrLookup;, "Lorg/checkerframework/org/apache/commons/text/StrLookup<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->preserveEscapes:Z

    .line 394
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->setVariableResolver(Lorg/checkerframework/org/apache/commons/text/StrLookup;)V

    .line 395
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->setVariablePrefixMatcher(Lorg/checkerframework/org/apache/commons/text/StrMatcher;)Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;

    .line 396
    invoke-virtual {p0, p3}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->setVariableSuffixMatcher(Lorg/checkerframework/org/apache/commons/text/StrMatcher;)Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;

    .line 397
    invoke-virtual {p0, p4}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->setEscapeChar(C)V

    .line 398
    invoke-virtual {p0, p5}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->setValueDelimiterMatcher(Lorg/checkerframework/org/apache/commons/text/StrMatcher;)Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;

    .line 399
    return-void
.end method

.method private checkCyclicSubstitution(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "varName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 918
    .local p2, "priorVariables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 919
    return-void

    .line 921
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;-><init>(I)V

    .line 922
    .local v0, "buf":Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    const-string v1, "Infinite loop in property interpolation of "

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 923
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 924
    const-string v1, ": "

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 925
    const-string v1, "->"

    invoke-virtual {v0, p2, v1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->appendWithSeparators(Ljava/lang/Iterable;Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 926
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 200
    .local p1, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # Ljava/lang/Object;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 220
    .local p1, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;

    invoke-direct {v0, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Properties;)Ljava/lang/String;
    .locals 4
    .param p0, "source"    # Ljava/lang/Object;
    .param p1, "valueProperties"    # Ljava/util/Properties;

    .line 232
    if-nez p1, :cond_0

    .line 233
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 235
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 236
    .local v0, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 237
    .local v1, "propNames":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 238
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 239
    .local v2, "propName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, "propValue":Ljava/lang/String;
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .end local v2    # "propName":Ljava/lang/String;
    .end local v3    # "propValue":Ljava/lang/String;
    goto :goto_0

    .line 242
    :cond_1
    invoke-static {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->replace(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static replaceSystemProperties(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Ljava/lang/Object;

    .line 253
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;

    invoke-static {}, Lorg/checkerframework/org/apache/commons/text/StrLookup;->systemPropertiesLookup()Lorg/checkerframework/org/apache/commons/text/StrLookup;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;-><init>(Lorg/checkerframework/org/apache/commons/text/StrLookup;)V

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private substitute(Lorg/checkerframework/org/apache/commons/text/StrBuilder;IILjava/util/List;)I
    .locals 32
    .param p1, "buf"    # Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/org/apache/commons/text/StrBuilder;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 766
    .local p4, "priorVariables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->getVariablePrefixMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v4

    .line 767
    .local v4, "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->getVariableSuffixMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v5

    .line 768
    .local v5, "suffMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->getEscapeChar()C

    move-result v6

    .line 769
    .local v6, "escape":C
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->getValueDelimiterMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v7

    .line 770
    .local v7, "valueDelimMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->isEnableSubstitutionInVariables()Z

    move-result v8

    .line 771
    .local v8, "substitutionInVariablesEnabled":Z
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->isDisableSubstitutionInValues()Z

    move-result v9

    .line 773
    .local v9, "substitutionInValuesDisabled":Z
    if-nez p4, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    .line 774
    .local v12, "top":Z
    :goto_0
    const/4 v13, 0x0

    .line 775
    .local v13, "altered":Z
    const/4 v14, 0x0

    .line 776
    .local v14, "lengthChange":I
    iget-object v15, v1, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    .line 777
    .local v15, "chars":[C
    add-int v16, v2, v3

    .line 778
    .local v16, "bufEnd":I
    move/from16 v17, p2

    move-object v11, v15

    move/from16 v10, v16

    move v15, v14

    move/from16 v14, v17

    move/from16 v31, v13

    move-object/from16 v13, p4

    move/from16 p4, v31

    .line 779
    .end local v16    # "bufEnd":I
    .local v10, "bufEnd":I
    .local v11, "chars":[C
    .local v13, "priorVariables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v14, "pos":I
    .local v15, "lengthChange":I
    .local p4, "altered":Z
    :goto_1
    if-ge v14, v10, :cond_12

    .line 780
    invoke-virtual {v4, v11, v14, v2, v10}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v18

    .line 782
    .local v18, "startMatchLen":I
    if-nez v18, :cond_1

    .line 783
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v30, v4

    move-object/from16 v22, v5

    move/from16 v23, v6

    move/from16 v20, v12

    const/16 v16, 0x1

    move/from16 v12, p4

    goto/16 :goto_8

    .line 786
    :cond_1
    if-le v14, v2, :cond_3

    add-int/lit8 v19, v14, -0x1

    move/from16 v20, v12

    .end local v12    # "top":Z
    .local v20, "top":Z
    aget-char v12, v11, v19

    if-ne v12, v6, :cond_4

    .line 788
    iget-boolean v12, v0, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->preserveEscapes:Z

    if-eqz v12, :cond_2

    .line 789
    add-int/lit8 v14, v14, 0x1

    .line 790
    move/from16 v12, v20

    goto :goto_1

    .line 792
    :cond_2
    add-int/lit8 v12, v14, -0x1

    invoke-virtual {v1, v12}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->deleteCharAt(I)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 793
    iget-object v11, v1, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    .line 794
    add-int/lit8 v15, v15, -0x1

    .line 795
    const/4 v12, 0x1

    .line 796
    .end local p4    # "altered":Z
    .local v12, "altered":Z
    add-int/lit8 v10, v10, -0x1

    move-object/from16 v30, v4

    move-object/from16 v22, v5

    move/from16 v23, v6

    const/16 v16, 0x1

    goto/16 :goto_8

    .line 786
    .end local v20    # "top":Z
    .local v12, "top":Z
    .restart local p4    # "altered":Z
    :cond_3
    move/from16 v20, v12

    .line 799
    .end local v12    # "top":Z
    .restart local v20    # "top":Z
    :cond_4
    move v12, v14

    .line 800
    .local v12, "startPos":I
    add-int v14, v14, v18

    .line 801
    const/16 v19, 0x0

    .line 802
    .local v19, "endMatchLen":I
    const/16 v21, 0x0

    .line 803
    .local v21, "nestedVarCount":I
    :goto_2
    if-ge v14, v10, :cond_11

    .line 804
    if-eqz v8, :cond_5

    .line 805
    invoke-virtual {v4, v11, v14, v2, v10}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v22

    if-eqz v22, :cond_5

    .line 808
    invoke-virtual {v4, v11, v14, v2, v10}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v19

    .line 810
    add-int/lit8 v21, v21, 0x1

    .line 811
    add-int v14, v14, v19

    .line 812
    goto :goto_2

    .line 815
    :cond_5
    invoke-virtual {v5, v11, v14, v2, v10}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v19

    .line 817
    if-nez v19, :cond_6

    .line 818
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 821
    :cond_6
    if-nez v21, :cond_10

    .line 822
    move-object/from16 v22, v5

    .end local v5    # "suffMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .local v22, "suffMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    new-instance v5, Ljava/lang/String;

    move/from16 v23, v6

    .end local v6    # "escape":C
    .local v23, "escape":C
    add-int v6, v12, v18

    sub-int v24, v14, v12

    move/from16 v25, v15

    .end local v15    # "lengthChange":I
    .local v25, "lengthChange":I
    sub-int v15, v24, v18

    invoke-direct {v5, v11, v6, v15}, Ljava/lang/String;-><init>([CII)V

    .line 825
    .local v5, "varNameExpr":Ljava/lang/String;
    if-eqz v8, :cond_7

    .line 826
    new-instance v6, Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    invoke-direct {v6, v5}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;-><init>(Ljava/lang/String;)V

    .line 827
    .local v6, "bufName":Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    invoke-virtual {v6}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->length()I

    move-result v15

    move-object/from16 v24, v5

    const/4 v5, 0x0

    .end local v5    # "varNameExpr":Ljava/lang/String;
    .local v24, "varNameExpr":Ljava/lang/String;
    invoke-virtual {v0, v6, v5, v15}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->substitute(Lorg/checkerframework/org/apache/commons/text/StrBuilder;II)Z

    .line 828
    invoke-virtual {v6}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v24    # "varNameExpr":Ljava/lang/String;
    .restart local v5    # "varNameExpr":Ljava/lang/String;
    goto :goto_3

    .line 825
    .end local v6    # "bufName":Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    :cond_7
    move-object/from16 v24, v5

    .line 830
    :goto_3
    add-int v14, v14, v19

    .line 831
    move v6, v14

    .line 833
    .local v6, "endPos":I
    move-object v15, v5

    .line 834
    .local v15, "varName":Ljava/lang/String;
    const/16 v24, 0x0

    .line 836
    .local v24, "varDefaultValue":Ljava/lang/String;
    if-eqz v7, :cond_b

    .line 837
    move-object/from16 v26, v15

    .end local v15    # "varName":Ljava/lang/String;
    .local v26, "varName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v15

    .line 838
    .local v15, "varNameExprChars":[C
    const/16 v27, 0x0

    .line 839
    .local v27, "valueDelimiterMatchLen":I
    const/16 v28, 0x0

    move/from16 v29, v10

    move/from16 v10, v28

    .local v10, "i":I
    .local v29, "bufEnd":I
    :goto_4
    move/from16 v28, v14

    .end local v14    # "pos":I
    .local v28, "pos":I
    array-length v14, v15

    if-ge v10, v14, :cond_a

    .line 842
    if-nez v8, :cond_8

    array-length v14, v15

    .line 843
    invoke-virtual {v4, v15, v10, v10, v14}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v14

    if-eqz v14, :cond_8

    .line 847
    move-object/from16 v30, v4

    goto :goto_5

    .line 849
    :cond_8
    invoke-virtual {v7, v15, v10}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->isMatch([CI)I

    move-result v14

    if-eqz v14, :cond_9

    .line 850
    invoke-virtual {v7, v15, v10}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->isMatch([CI)I

    move-result v14

    .line 851
    .end local v27    # "valueDelimiterMatchLen":I
    .local v14, "valueDelimiterMatchLen":I
    move-object/from16 v30, v4

    const/4 v4, 0x0

    .end local v4    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .local v30, "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    invoke-virtual {v5, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 852
    .end local v26    # "varName":Ljava/lang/String;
    .local v17, "varName":Ljava/lang/String;
    add-int v4, v10, v14

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    .line 853
    move-object/from16 v15, v17

    goto :goto_6

    .line 839
    .end local v14    # "valueDelimiterMatchLen":I
    .end local v17    # "varName":Ljava/lang/String;
    .end local v30    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .restart local v4    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .restart local v26    # "varName":Ljava/lang/String;
    .restart local v27    # "valueDelimiterMatchLen":I
    :cond_9
    move-object/from16 v30, v4

    .end local v4    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .restart local v30    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    add-int/lit8 v10, v10, 0x1

    move/from16 v14, v28

    goto :goto_4

    .end local v30    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .restart local v4    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    :cond_a
    move-object/from16 v30, v4

    .end local v4    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .restart local v30    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    goto :goto_5

    .line 836
    .end local v26    # "varName":Ljava/lang/String;
    .end local v27    # "valueDelimiterMatchLen":I
    .end local v28    # "pos":I
    .end local v29    # "bufEnd":I
    .end local v30    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .restart local v4    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .local v10, "bufEnd":I
    .local v14, "pos":I
    .local v15, "varName":Ljava/lang/String;
    :cond_b
    move-object/from16 v30, v4

    move/from16 v29, v10

    move/from16 v28, v14

    move-object/from16 v26, v15

    .line 859
    .end local v4    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .end local v10    # "bufEnd":I
    .end local v14    # "pos":I
    .end local v15    # "varName":Ljava/lang/String;
    .restart local v26    # "varName":Ljava/lang/String;
    .restart local v28    # "pos":I
    .restart local v29    # "bufEnd":I
    .restart local v30    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    :goto_5
    move-object/from16 v15, v26

    .end local v26    # "varName":Ljava/lang/String;
    .restart local v15    # "varName":Ljava/lang/String;
    :goto_6
    if-nez v13, :cond_c

    .line 860
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v4

    .line 861
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v11, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 866
    :cond_c
    invoke-direct {v0, v15, v13}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->checkCyclicSubstitution(Ljava/lang/String;Ljava/util/List;)V

    .line 867
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 870
    invoke-virtual {v0, v15, v1, v12, v6}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->resolveVariable(Ljava/lang/String;Lorg/checkerframework/org/apache/commons/text/StrBuilder;II)Ljava/lang/String;

    move-result-object v4

    .line 872
    .local v4, "varValue":Ljava/lang/String;
    if-nez v4, :cond_d

    .line 873
    move-object/from16 v4, v24

    .line 875
    :cond_d
    if-eqz v4, :cond_f

    .line 876
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    .line 877
    .local v10, "varLen":I
    invoke-virtual {v1, v12, v6, v4}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->replace(IILjava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 878
    const/4 v14, 0x1

    .line 879
    .end local p4    # "altered":Z
    .local v14, "altered":Z
    const/16 v17, 0x0

    .line 880
    .local v17, "change":I
    if-nez v9, :cond_e

    .line 881
    invoke-direct {v0, v1, v12, v10, v13}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->substitute(Lorg/checkerframework/org/apache/commons/text/StrBuilder;IILjava/util/List;)I

    move-result v17

    .line 884
    :cond_e
    add-int v26, v17, v10

    sub-int v27, v6, v12

    sub-int v26, v26, v27

    .line 886
    .end local v17    # "change":I
    .local v26, "change":I
    add-int v17, v28, v26

    .line 887
    .end local v28    # "pos":I
    .local v17, "pos":I
    add-int v27, v29, v26

    .line 888
    .end local v29    # "bufEnd":I
    .local v27, "bufEnd":I
    add-int v25, v25, v26

    .line 889
    iget-object v11, v1, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    move/from16 v28, v17

    move/from16 v10, v27

    goto :goto_7

    .line 875
    .end local v10    # "varLen":I
    .end local v14    # "altered":Z
    .end local v17    # "pos":I
    .end local v26    # "change":I
    .end local v27    # "bufEnd":I
    .restart local v28    # "pos":I
    .restart local v29    # "bufEnd":I
    .restart local p4    # "altered":Z
    :cond_f
    move/from16 v14, p4

    move/from16 v10, v29

    .line 894
    .end local v29    # "bufEnd":I
    .end local p4    # "altered":Z
    .local v10, "bufEnd":I
    .restart local v14    # "altered":Z
    :goto_7
    nop

    .line 895
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v17

    const/16 v16, 0x1

    add-int/lit8 v0, v17, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 896
    move v12, v14

    move/from16 v15, v25

    move/from16 v14, v28

    goto :goto_8

    .line 898
    .end local v22    # "suffMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .end local v23    # "escape":C
    .end local v24    # "varDefaultValue":Ljava/lang/String;
    .end local v25    # "lengthChange":I
    .end local v28    # "pos":I
    .end local v30    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .local v4, "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .local v5, "suffMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .local v6, "escape":C
    .local v14, "pos":I
    .local v15, "lengthChange":I
    .restart local p4    # "altered":Z
    :cond_10
    move-object/from16 v30, v4

    move-object/from16 v22, v5

    move/from16 v23, v6

    move/from16 v29, v10

    move/from16 v25, v15

    const/16 v16, 0x1

    .end local v4    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .end local v5    # "suffMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .end local v6    # "escape":C
    .end local v10    # "bufEnd":I
    .end local v15    # "lengthChange":I
    .restart local v22    # "suffMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .restart local v23    # "escape":C
    .restart local v25    # "lengthChange":I
    .restart local v29    # "bufEnd":I
    .restart local v30    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    add-int/lit8 v21, v21, -0x1

    .line 899
    add-int v14, v14, v19

    move-object/from16 v0, p0

    goto/16 :goto_2

    .line 803
    .end local v22    # "suffMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .end local v23    # "escape":C
    .end local v25    # "lengthChange":I
    .end local v29    # "bufEnd":I
    .end local v30    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .restart local v4    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .restart local v5    # "suffMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .restart local v6    # "escape":C
    .restart local v10    # "bufEnd":I
    .restart local v15    # "lengthChange":I
    :cond_11
    move-object/from16 v30, v4

    move-object/from16 v22, v5

    move/from16 v23, v6

    move/from16 v29, v10

    move/from16 v25, v15

    const/16 v16, 0x1

    .end local v4    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .end local v5    # "suffMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .end local v6    # "escape":C
    .end local v10    # "bufEnd":I
    .end local v15    # "lengthChange":I
    .restart local v22    # "suffMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .restart local v23    # "escape":C
    .restart local v25    # "lengthChange":I
    .restart local v29    # "bufEnd":I
    .restart local v30    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    move/from16 v12, p4

    .line 904
    .end local v18    # "startMatchLen":I
    .end local v19    # "endMatchLen":I
    .end local v21    # "nestedVarCount":I
    .end local v25    # "lengthChange":I
    .end local v29    # "bufEnd":I
    .end local p4    # "altered":Z
    .restart local v10    # "bufEnd":I
    .local v12, "altered":Z
    .restart local v15    # "lengthChange":I
    :goto_8
    move-object/from16 v0, p0

    move/from16 p4, v12

    move/from16 v12, v20

    move-object/from16 v5, v22

    move/from16 v6, v23

    move-object/from16 v4, v30

    goto/16 :goto_1

    .line 905
    .end local v20    # "top":Z
    .end local v22    # "suffMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .end local v23    # "escape":C
    .end local v30    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .restart local v4    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .restart local v5    # "suffMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .restart local v6    # "escape":C
    .local v12, "top":Z
    .restart local p4    # "altered":Z
    :cond_12
    move-object/from16 v30, v4

    move-object/from16 v22, v5

    move/from16 v23, v6

    move/from16 v29, v10

    move/from16 v20, v12

    move/from16 v25, v15

    .end local v4    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .end local v5    # "suffMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .end local v6    # "escape":C
    .end local v10    # "bufEnd":I
    .end local v12    # "top":Z
    .end local v15    # "lengthChange":I
    .restart local v20    # "top":Z
    .restart local v22    # "suffMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .restart local v23    # "escape":C
    .restart local v25    # "lengthChange":I
    .restart local v29    # "bufEnd":I
    .restart local v30    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    if-eqz v20, :cond_13

    .line 906
    return p4

    .line 908
    :cond_13
    return v25
.end method


# virtual methods
.method public getEscapeChar()C
    .locals 1

    .line 965
    iget-char v0, p0, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->escapeChar:C

    return v0
.end method

.method public getValueDelimiterMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .locals 1

    .line 1115
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->valueDelimiterMatcher:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    return-object v0
.end method

.method public getVariablePrefixMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .locals 1

    .line 991
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->prefixMatcher:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    return-object v0
.end method

.method public getVariableResolver()Lorg/checkerframework/org/apache/commons/text/StrLookup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/org/apache/commons/text/StrLookup<",
            "*>;"
        }
    .end annotation

    .line 1179
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->variableResolver:Lorg/checkerframework/org/apache/commons/text/StrLookup;

    return-object v0
.end method

.method public getVariableSuffixMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .locals 1

    .line 1052
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->suffixMatcher:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    return-object v0
.end method

.method public isDisableSubstitutionInValues()Z
    .locals 1

    .line 1237
    iget-boolean v0, p0, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->disableSubstitutionInValues:Z

    return v0
.end method

.method public isEnableSubstitutionInVariables()Z
    .locals 1

    .line 1199
    iget-boolean v0, p0, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->enableSubstitutionInVariables:Z

    return v0
.end method

.method public isPreserveEscapes()Z
    .locals 1

    .line 1258
    iget-boolean v0, p0, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->preserveEscapes:Z

    return v0
.end method

.method public replace(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Ljava/lang/CharSequence;

    .line 532
    if-nez p1, :cond_0

    .line 533
    const/4 v0, 0x0

    return-object v0

    .line 535
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->replace(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 552
    if-nez p1, :cond_0

    .line 553
    const/4 v0, 0x0

    return-object v0

    .line 555
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/CharSequence;II)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    .line 556
    .local v0, "buf":Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->substitute(Lorg/checkerframework/org/apache/commons/text/StrBuilder;II)Z

    .line 557
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # Ljava/lang/Object;

    .line 610
    if-nez p1, :cond_0

    .line 611
    const/4 v0, 0x0

    return-object v0

    .line 613
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    .line 614
    .local v0, "buf":Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->substitute(Lorg/checkerframework/org/apache/commons/text/StrBuilder;II)Z

    .line 615
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # Ljava/lang/String;

    .line 410
    if-nez p1, :cond_0

    .line 411
    const/4 v0, 0x0

    return-object v0

    .line 413
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;-><init>(Ljava/lang/String;)V

    .line 414
    .local v0, "buf":Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->substitute(Lorg/checkerframework/org/apache/commons/text/StrBuilder;II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 415
    return-object p1

    .line 417
    :cond_1
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 433
    if-nez p1, :cond_0

    .line 434
    const/4 v0, 0x0

    return-object v0

    .line 436
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/String;II)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    .line 437
    .local v0, "buf":Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->substitute(Lorg/checkerframework/org/apache/commons/text/StrBuilder;II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 438
    add-int v1, p2, p3

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 440
    :cond_1
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # Ljava/lang/StringBuffer;

    .line 493
    if-nez p1, :cond_0

    .line 494
    const/4 v0, 0x0

    return-object v0

    .line 496
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/StringBuffer;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    .line 497
    .local v0, "buf":Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->substitute(Lorg/checkerframework/org/apache/commons/text/StrBuilder;II)Z

    .line 498
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/StringBuffer;II)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Ljava/lang/StringBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 515
    if-nez p1, :cond_0

    .line 516
    const/4 v0, 0x0

    return-object v0

    .line 518
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/StringBuffer;II)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    .line 519
    .local v0, "buf":Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->substitute(Lorg/checkerframework/org/apache/commons/text/StrBuilder;II)Z

    .line 520
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace(Lorg/checkerframework/org/apache/commons/text/StrBuilder;)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 570
    if-nez p1, :cond_0

    .line 571
    const/4 v0, 0x0

    return-object v0

    .line 573
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Lorg/checkerframework/org/apache/commons/text/StrBuilder;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    .line 574
    .local v0, "buf":Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->substitute(Lorg/checkerframework/org/apache/commons/text/StrBuilder;II)Z

    .line 575
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace(Lorg/checkerframework/org/apache/commons/text/StrBuilder;II)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 592
    if-nez p1, :cond_0

    .line 593
    const/4 v0, 0x0

    return-object v0

    .line 595
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Lorg/checkerframework/org/apache/commons/text/StrBuilder;II)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    .line 596
    .local v0, "buf":Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->substitute(Lorg/checkerframework/org/apache/commons/text/StrBuilder;II)Z

    .line 597
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace([C)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # [C

    .line 453
    if-nez p1, :cond_0

    .line 454
    const/4 v0, 0x0

    return-object v0

    .line 456
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    array-length v1, p1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append([C)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    .line 457
    .local v0, "buf":Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->substitute(Lorg/checkerframework/org/apache/commons/text/StrBuilder;II)Z

    .line 458
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace([CII)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 475
    if-nez p1, :cond_0

    .line 476
    const/4 v0, 0x0

    return-object v0

    .line 478
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append([CII)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    .line 479
    .local v0, "buf":Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->substitute(Lorg/checkerframework/org/apache/commons/text/StrBuilder;II)Z

    .line 480
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replaceIn(Ljava/lang/StringBuffer;)Z
    .locals 2
    .param p1, "source"    # Ljava/lang/StringBuffer;

    .line 628
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 629
    return v0

    .line 631
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->replaceIn(Ljava/lang/StringBuffer;II)Z

    move-result v0

    return v0
.end method

.method public replaceIn(Ljava/lang/StringBuffer;II)Z
    .locals 3
    .param p1, "source"    # Ljava/lang/StringBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 648
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 649
    return v0

    .line 651
    :cond_0
    new-instance v1, Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    invoke-direct {v1, p3}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;-><init>(I)V

    invoke-virtual {v1, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/StringBuffer;II)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v1

    .line 652
    .local v1, "buf":Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    invoke-virtual {p0, v1, v0, p3}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->substitute(Lorg/checkerframework/org/apache/commons/text/StrBuilder;II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 653
    return v0

    .line 655
    :cond_1
    add-int v0, p2, p3

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 656
    const/4 v0, 0x1

    return v0
.end method

.method public replaceIn(Ljava/lang/StringBuilder;)Z
    .locals 2
    .param p1, "source"    # Ljava/lang/StringBuilder;

    .line 669
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 670
    return v0

    .line 672
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->replaceIn(Ljava/lang/StringBuilder;II)Z

    move-result v0

    return v0
.end method

.method public replaceIn(Ljava/lang/StringBuilder;II)Z
    .locals 3
    .param p1, "source"    # Ljava/lang/StringBuilder;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 689
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 690
    return v0

    .line 692
    :cond_0
    new-instance v1, Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    invoke-direct {v1, p3}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;-><init>(I)V

    invoke-virtual {v1, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/StringBuilder;II)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v1

    .line 693
    .local v1, "buf":Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    invoke-virtual {p0, v1, v0, p3}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->substitute(Lorg/checkerframework/org/apache/commons/text/StrBuilder;II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 694
    return v0

    .line 696
    :cond_1
    add-int v0, p2, p3

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    const/4 v0, 0x1

    return v0
.end method

.method public replaceIn(Lorg/checkerframework/org/apache/commons/text/StrBuilder;)Z
    .locals 2
    .param p1, "source"    # Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 709
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 710
    return v0

    .line 712
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->substitute(Lorg/checkerframework/org/apache/commons/text/StrBuilder;II)Z

    move-result v0

    return v0
.end method

.method public replaceIn(Lorg/checkerframework/org/apache/commons/text/StrBuilder;II)Z
    .locals 1
    .param p1, "source"    # Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 728
    if-nez p1, :cond_0

    .line 729
    const/4 v0, 0x0

    return v0

    .line 731
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->substitute(Lorg/checkerframework/org/apache/commons/text/StrBuilder;II)Z

    move-result v0

    return v0
.end method

.method protected resolveVariable(Ljava/lang/String;Lorg/checkerframework/org/apache/commons/text/StrBuilder;II)Ljava/lang/String;
    .locals 2
    .param p1, "variableName"    # Ljava/lang/String;
    .param p2, "buf"    # Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .param p3, "startPos"    # I
    .param p4, "endPos"    # I

    .line 950
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->getVariableResolver()Lorg/checkerframework/org/apache/commons/text/StrLookup;

    move-result-object v0

    .line 951
    .local v0, "resolver":Lorg/checkerframework/org/apache/commons/text/StrLookup;, "Lorg/checkerframework/org/apache/commons/text/StrLookup<*>;"
    if-nez v0, :cond_0

    .line 952
    const/4 v1, 0x0

    return-object v1

    .line 954
    :cond_0
    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/commons/text/StrLookup;->lookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setDisableSubstitutionInValues(Z)V
    .locals 0
    .param p1, "disableSubstitutionInValues"    # Z

    .line 1248
    iput-boolean p1, p0, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->disableSubstitutionInValues:Z

    .line 1249
    return-void
.end method

.method public setEnableSubstitutionInVariables(Z)V
    .locals 0
    .param p1, "enableSubstitutionInVariables"    # Z

    .line 1212
    iput-boolean p1, p0, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->enableSubstitutionInVariables:Z

    .line 1213
    return-void
.end method

.method public setEscapeChar(C)V
    .locals 0
    .param p1, "escapeCharacter"    # C

    .line 976
    iput-char p1, p0, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->escapeChar:C

    .line 977
    return-void
.end method

.method public setPreserveEscapes(Z)V
    .locals 0
    .param p1, "preserveEscapes"    # Z

    .line 1273
    iput-boolean p1, p0, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->preserveEscapes:Z

    .line 1274
    return-void
.end method

.method public setValueDelimiter(C)Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;
    .locals 1
    .param p1, "valueDelimiter"    # C

    .line 1147
    invoke-static {p1}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->charMatcher(C)Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->setValueDelimiterMatcher(Lorg/checkerframework/org/apache/commons/text/StrMatcher;)Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setValueDelimiter(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;
    .locals 1
    .param p1, "valueDelimiter"    # Ljava/lang/String;

    .line 1164
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1168
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->setValueDelimiterMatcher(Lorg/checkerframework/org/apache/commons/text/StrMatcher;)Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;

    move-result-object v0

    return-object v0

    .line 1165
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->setValueDelimiterMatcher(Lorg/checkerframework/org/apache/commons/text/StrMatcher;)Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;

    .line 1166
    return-object p0
.end method

.method public setValueDelimiterMatcher(Lorg/checkerframework/org/apache/commons/text/StrMatcher;)Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;
    .locals 0
    .param p1, "valueDelimiterMatcher"    # Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 1132
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->valueDelimiterMatcher:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 1133
    return-object p0
.end method

.method public setVariablePrefix(C)Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;
    .locals 1
    .param p1, "prefix"    # C

    .line 1022
    invoke-static {p1}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->charMatcher(C)Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->setVariablePrefixMatcher(Lorg/checkerframework/org/apache/commons/text/StrMatcher;)Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setVariablePrefix(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;

    .line 1036
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Variable prefix must not be null!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lorg/checkerframework/org/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1037
    invoke-static {p1}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->setVariablePrefixMatcher(Lorg/checkerframework/org/apache/commons/text/StrMatcher;)Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setVariablePrefixMatcher(Lorg/checkerframework/org/apache/commons/text/StrMatcher;)Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;
    .locals 3
    .param p1, "prefixMatcher"    # Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 1006
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Variable prefix matcher must not be null!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lorg/checkerframework/org/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1007
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->prefixMatcher:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 1008
    return-object p0
.end method

.method public setVariableResolver(Lorg/checkerframework/org/apache/commons/text/StrLookup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/org/apache/commons/text/StrLookup<",
            "*>;)V"
        }
    .end annotation

    .line 1188
    .local p1, "variableResolver":Lorg/checkerframework/org/apache/commons/text/StrLookup;, "Lorg/checkerframework/org/apache/commons/text/StrLookup<*>;"
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->variableResolver:Lorg/checkerframework/org/apache/commons/text/StrLookup;

    .line 1189
    return-void
.end method

.method public setVariableSuffix(C)Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;
    .locals 1
    .param p1, "suffix"    # C

    .line 1083
    invoke-static {p1}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->charMatcher(C)Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->setVariableSuffixMatcher(Lorg/checkerframework/org/apache/commons/text/StrMatcher;)Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setVariableSuffix(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;
    .locals 3
    .param p1, "suffix"    # Ljava/lang/String;

    .line 1097
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Variable suffix must not be null!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lorg/checkerframework/org/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1098
    invoke-static {p1}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->setVariableSuffixMatcher(Lorg/checkerframework/org/apache/commons/text/StrMatcher;)Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setVariableSuffixMatcher(Lorg/checkerframework/org/apache/commons/text/StrMatcher;)Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;
    .locals 3
    .param p1, "suffixMatcher"    # Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 1067
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Variable suffix matcher must not be null!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lorg/checkerframework/org/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1068
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->suffixMatcher:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 1069
    return-object p0
.end method

.method protected substitute(Lorg/checkerframework/org/apache/commons/text/StrBuilder;II)Z
    .locals 1
    .param p1, "buf"    # Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 750
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/checkerframework/org/apache/commons/text/StrSubstitutor;->substitute(Lorg/checkerframework/org/apache/commons/text/StrBuilder;IILjava/util/List;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
