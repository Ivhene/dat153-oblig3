.class public Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;
.super Ljava/lang/Object;
.source "StringSubstitutor.java"


# static fields
.field public static final DEFAULT_ESCAPE:C = '$'

.field public static final DEFAULT_PREFIX:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

.field public static final DEFAULT_SUFFIX:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

.field public static final DEFAULT_VALUE_DELIMITER:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

.field public static final DEFAULT_VAR_DEFAULT:Ljava/lang/String; = ":-"

.field public static final DEFAULT_VAR_END:Ljava/lang/String; = "}"

.field public static final DEFAULT_VAR_START:Ljava/lang/String; = "${"


# instance fields
.field private disableSubstitutionInValues:Z

.field private enableSubstitutionInVariables:Z

.field private enableUndefinedVariableException:Z

.field private escapeChar:C

.field private prefixMatcher:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

.field private preserveEscapes:Z

.field private suffixMatcher:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

.field private valueDelimiterMatcher:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

.field private variableResolver:Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 230
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;

    const-string v1, "${"

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->stringMatcher(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->DEFAULT_PREFIX:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    .line 235
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->stringMatcher(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->DEFAULT_SUFFIX:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    .line 240
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;

    .line 241
    const-string v1, ":-"

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->stringMatcher(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->DEFAULT_VALUE_DELIMITER:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    .line 240
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 379
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;

    sget-object v1, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->DEFAULT_PREFIX:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    sget-object v2, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->DEFAULT_SUFFIX:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    const/16 v3, 0x24

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;-><init>(Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;C)V

    .line 380
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

    .line 390
    .local p1, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->mapStringLookup(Ljava/util/Map;)Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->DEFAULT_PREFIX:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    sget-object v2, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->DEFAULT_SUFFIX:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    const/16 v3, 0x24

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;-><init>(Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;C)V

    .line 391
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

    .line 403
    .local p1, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->mapStringLookup(Ljava/util/Map;)Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;

    move-result-object v0

    const/16 v1, 0x24

    invoke-direct {p0, v0, p2, p3, v1}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;-><init>(Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;Ljava/lang/String;Ljava/lang/String;C)V

    .line 404
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

    .line 418
    .local p1, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->mapStringLookup(Ljava/util/Map;)Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;-><init>(Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;Ljava/lang/String;Ljava/lang/String;C)V

    .line 419
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V
    .locals 7
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

    .line 434
    .local p1, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->mapStringLookup(Ljava/util/Map;)Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;-><init>(Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V

    .line 435
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;)V
    .locals 3
    .param p1, "variableResolver"    # Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;

    .line 443
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->DEFAULT_PREFIX:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    sget-object v1, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->DEFAULT_SUFFIX:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    const/16 v2, 0x24

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;-><init>(Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;C)V

    .line 444
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 1
    .param p1, "variableResolver"    # Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "escape"    # C

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->setVariableResolver(Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;)Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;

    .line 458
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->setVariablePrefix(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;

    .line 459
    invoke-virtual {p0, p3}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->setVariableSuffix(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;

    .line 460
    invoke-virtual {p0, p4}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->setEscapeChar(C)Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;

    .line 461
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->DEFAULT_VALUE_DELIMITER:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->setValueDelimiterMatcher(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;

    .line 462
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V
    .locals 0
    .param p1, "variableResolver"    # Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "escape"    # C
    .param p5, "valueDelimiter"    # Ljava/lang/String;

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->setVariableResolver(Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;)Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;

    .line 477
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->setVariablePrefix(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;

    .line 478
    invoke-virtual {p0, p3}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->setVariableSuffix(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;

    .line 479
    invoke-virtual {p0, p4}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->setEscapeChar(C)Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;

    .line 480
    invoke-virtual {p0, p5}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->setValueDelimiter(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;

    .line 481
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;C)V
    .locals 6
    .param p1, "variableResolver"    # Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;
    .param p2, "prefixMatcher"    # Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .param p3, "suffixMatcher"    # Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .param p4, "escape"    # C

    .line 494
    sget-object v5, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->DEFAULT_VALUE_DELIMITER:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;-><init>(Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;CLorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)V

    .line 495
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;CLorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)V
    .locals 0
    .param p1, "variableResolver"    # Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;
    .param p2, "prefixMatcher"    # Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .param p3, "suffixMatcher"    # Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .param p4, "escape"    # C
    .param p5, "valueDelimiterMatcher"    # Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->setVariableResolver(Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;)Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;

    .line 510
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->setVariablePrefixMatcher(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;

    .line 511
    invoke-virtual {p0, p3}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->setVariableSuffixMatcher(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;

    .line 512
    invoke-virtual {p0, p4}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->setEscapeChar(C)Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;

    .line 513
    invoke-virtual {p0, p5}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->setValueDelimiterMatcher(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;

    .line 514
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

    .line 523
    .local p2, "priorVariables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    return-void

    .line 526
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;-><init>(I)V

    .line 527
    .local v0, "buf":Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    const-string v1, "Infinite loop in property interpolation of "

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 528
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 529
    const-string v1, ": "

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 530
    const-string v1, "->"

    invoke-virtual {v0, p2, v1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->appendWithSeparators(Ljava/lang/Iterable;Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 531
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static createInterpolator()Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;
    .locals 2

    .line 260
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;

    sget-object v1, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->interpolatorStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;-><init>(Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;)V

    return-object v0
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

    .line 273
    .local p1, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

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

    .line 291
    .local p1, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;

    invoke-direct {v0, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Properties;)Ljava/lang/String;
    .locals 4
    .param p0, "source"    # Ljava/lang/Object;
    .param p1, "valueProperties"    # Ljava/util/Properties;

    .line 304
    if-nez p1, :cond_0

    .line 305
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 307
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 308
    .local v0, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 309
    .local v1, "propNames":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 310
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 311
    .local v2, "propName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, "propValue":Ljava/lang/String;
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    .end local v2    # "propName":Ljava/lang/String;
    .end local v3    # "propValue":Ljava/lang/String;
    goto :goto_0

    .line 314
    :cond_1
    invoke-static {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->replace(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static replaceSystemProperties(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Ljava/lang/Object;

    .line 326
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;

    sget-object v1, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->systemPropertyStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;-><init>(Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;)V

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private substitute(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;IILjava/util/List;)I
    .locals 33
    .param p1, "buf"    # Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1259
    .local p4, "priorVariables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->getVariablePrefixMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v4

    .line 1260
    .local v4, "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->getVariableSuffixMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v5

    .line 1261
    .local v5, "suffMatcher":Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->getEscapeChar()C

    move-result v6

    .line 1262
    .local v6, "escape":C
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->getValueDelimiterMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v7

    .line 1263
    .local v7, "valueDelimMatcher":Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->isEnableSubstitutionInVariables()Z

    move-result v8

    .line 1264
    .local v8, "substitutionInVariablesEnabled":Z
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->isDisableSubstitutionInValues()Z

    move-result v9

    .line 1265
    .local v9, "substitutionInValuesDisabled":Z
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->isEnableUndefinedVariableException()Z

    move-result v10

    .line 1267
    .local v10, "undefinedVariableException":Z
    if-nez p4, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    .line 1268
    .local v13, "top":Z
    :goto_0
    const/4 v14, 0x0

    .line 1269
    .local v14, "altered":Z
    const/4 v15, 0x0

    .line 1270
    .local v15, "lengthChange":I
    iget-object v12, v1, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    .line 1271
    .local v12, "chars":[C
    add-int v17, v2, v3

    .line 1272
    .local v17, "bufEnd":I
    move/from16 v18, p2

    move/from16 v11, v17

    move/from16 v17, v15

    move/from16 v15, v18

    move-object/from16 v32, v12

    move-object/from16 v12, p4

    move/from16 p4, v14

    move-object/from16 v14, v32

    .line 1273
    .local v11, "bufEnd":I
    .local v12, "priorVariables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v14, "chars":[C
    .local v15, "pos":I
    .local v17, "lengthChange":I
    .local p4, "altered":Z
    :goto_1
    if-ge v15, v11, :cond_13

    .line 1274
    invoke-interface {v4, v14, v15, v2, v11}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;->isMatch([CIII)I

    move-result v19

    .line 1275
    .local v19, "startMatchLen":I
    if-nez v19, :cond_1

    .line 1276
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v31, v4

    move-object/from16 v23, v5

    move/from16 v24, v6

    move/from16 v26, v10

    move/from16 v21, v13

    move-object v13, v14

    const/16 v16, 0x1

    move/from16 v14, p4

    goto/16 :goto_8

    .line 1279
    :cond_1
    if-le v15, v2, :cond_3

    add-int/lit8 v20, v15, -0x1

    move/from16 v21, v13

    .end local v13    # "top":Z
    .local v21, "top":Z
    aget-char v13, v14, v20

    if-ne v13, v6, :cond_4

    .line 1281
    iget-boolean v13, v0, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->preserveEscapes:Z

    if-eqz v13, :cond_2

    .line 1282
    add-int/lit8 v15, v15, 0x1

    .line 1283
    move/from16 v13, v21

    goto :goto_1

    .line 1285
    :cond_2
    add-int/lit8 v13, v15, -0x1

    invoke-virtual {v1, v13}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->deleteCharAt(I)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 1286
    iget-object v13, v1, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    .line 1287
    .end local v14    # "chars":[C
    .local v13, "chars":[C
    add-int/lit8 v17, v17, -0x1

    .line 1288
    const/4 v14, 0x1

    .line 1289
    .end local p4    # "altered":Z
    .local v14, "altered":Z
    add-int/lit8 v11, v11, -0x1

    move-object/from16 v31, v4

    move-object/from16 v23, v5

    move/from16 v24, v6

    move/from16 v26, v10

    const/16 v16, 0x1

    goto/16 :goto_8

    .line 1279
    .end local v21    # "top":Z
    .local v13, "top":Z
    .local v14, "chars":[C
    .restart local p4    # "altered":Z
    :cond_3
    move/from16 v21, v13

    .line 1292
    .end local v13    # "top":Z
    .restart local v21    # "top":Z
    :cond_4
    move v13, v15

    .line 1293
    .local v13, "startPos":I
    add-int v15, v15, v19

    .line 1294
    const/16 v20, 0x0

    .line 1295
    .local v20, "endMatchLen":I
    const/16 v22, 0x0

    .line 1296
    .local v22, "nestedVarCount":I
    :goto_2
    if-ge v15, v11, :cond_12

    .line 1297
    if-eqz v8, :cond_5

    invoke-interface {v4, v14, v15, v2, v11}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;->isMatch([CIII)I

    move-result v23

    if-eqz v23, :cond_5

    .line 1299
    invoke-interface {v4, v14, v15, v2, v11}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;->isMatch([CIII)I

    move-result v20

    .line 1300
    add-int/lit8 v22, v22, 0x1

    .line 1301
    add-int v15, v15, v20

    .line 1302
    goto :goto_2

    .line 1305
    :cond_5
    invoke-interface {v5, v14, v15, v2, v11}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;->isMatch([CIII)I

    move-result v20

    .line 1306
    if-nez v20, :cond_6

    .line 1307
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1310
    :cond_6
    if-nez v22, :cond_11

    .line 1311
    move-object/from16 v23, v5

    .end local v5    # "suffMatcher":Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .local v23, "suffMatcher":Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    new-instance v5, Ljava/lang/String;

    move/from16 v24, v6

    .end local v6    # "escape":C
    .local v24, "escape":C
    add-int v6, v13, v19

    sub-int v25, v15, v13

    move/from16 v26, v10

    .end local v10    # "undefinedVariableException":Z
    .local v26, "undefinedVariableException":Z
    sub-int v10, v25, v19

    invoke-direct {v5, v14, v6, v10}, Ljava/lang/String;-><init>([CII)V

    .line 1313
    .local v5, "varNameExpr":Ljava/lang/String;
    if-eqz v8, :cond_7

    .line 1314
    new-instance v6, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    invoke-direct {v6, v5}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;-><init>(Ljava/lang/String;)V

    .line 1315
    .local v6, "bufName":Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    invoke-virtual {v6}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->length()I

    move-result v10

    move-object/from16 v25, v5

    const/4 v5, 0x0

    .end local v5    # "varNameExpr":Ljava/lang/String;
    .local v25, "varNameExpr":Ljava/lang/String;
    invoke-virtual {v0, v6, v5, v10}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->substitute(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;II)Z

    .line 1316
    invoke-virtual {v6}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v25    # "varNameExpr":Ljava/lang/String;
    .restart local v5    # "varNameExpr":Ljava/lang/String;
    goto :goto_3

    .line 1313
    .end local v6    # "bufName":Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    :cond_7
    move-object/from16 v25, v5

    .line 1318
    :goto_3
    add-int v15, v15, v20

    .line 1319
    move v6, v15

    .line 1321
    .local v6, "endPos":I
    move-object v10, v5

    .line 1322
    .local v10, "varName":Ljava/lang/String;
    const/16 v25, 0x0

    .line 1324
    .local v25, "varDefaultValue":Ljava/lang/String;
    if-eqz v7, :cond_b

    .line 1325
    move-object/from16 v27, v10

    .end local v10    # "varName":Ljava/lang/String;
    .local v27, "varName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    .line 1326
    .local v10, "varNameExprChars":[C
    const/16 v28, 0x0

    .line 1327
    .local v28, "valueDelimiterMatchLen":I
    const/16 v29, 0x0

    move/from16 v30, v11

    move/from16 v11, v29

    .local v11, "i":I
    .local v30, "bufEnd":I
    :goto_4
    move/from16 v29, v15

    .end local v15    # "pos":I
    .local v29, "pos":I
    array-length v15, v10

    if-ge v11, v15, :cond_a

    .line 1330
    if-nez v8, :cond_8

    array-length v15, v10

    invoke-interface {v4, v10, v11, v11, v15}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;->isMatch([CIII)I

    move-result v15

    if-eqz v15, :cond_8

    .line 1332
    move-object/from16 v31, v4

    goto :goto_5

    .line 1334
    :cond_8
    array-length v15, v10

    move-object/from16 v31, v4

    const/4 v4, 0x0

    .end local v4    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .local v31, "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    invoke-interface {v7, v10, v11, v4, v15}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;->isMatch([CIII)I

    move-result v15

    if-eqz v15, :cond_9

    .line 1336
    array-length v15, v10

    invoke-interface {v7, v10, v11, v4, v15}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;->isMatch([CIII)I

    move-result v15

    .line 1338
    .end local v28    # "valueDelimiterMatchLen":I
    .local v15, "valueDelimiterMatchLen":I
    invoke-virtual {v5, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 1339
    .end local v27    # "varName":Ljava/lang/String;
    .local v18, "varName":Ljava/lang/String;
    add-int v4, v11, v15

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    .line 1340
    move-object/from16 v10, v18

    goto :goto_6

    .line 1327
    .end local v15    # "valueDelimiterMatchLen":I
    .end local v18    # "varName":Ljava/lang/String;
    .restart local v27    # "varName":Ljava/lang/String;
    .restart local v28    # "valueDelimiterMatchLen":I
    :cond_9
    add-int/lit8 v11, v11, 0x1

    move/from16 v15, v29

    move-object/from16 v4, v31

    goto :goto_4

    .end local v31    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .restart local v4    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    :cond_a
    move-object/from16 v31, v4

    .end local v4    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .restart local v31    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    goto :goto_5

    .line 1324
    .end local v27    # "varName":Ljava/lang/String;
    .end local v28    # "valueDelimiterMatchLen":I
    .end local v29    # "pos":I
    .end local v30    # "bufEnd":I
    .end local v31    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .restart local v4    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .local v10, "varName":Ljava/lang/String;
    .local v11, "bufEnd":I
    .local v15, "pos":I
    :cond_b
    move-object/from16 v31, v4

    move-object/from16 v27, v10

    move/from16 v30, v11

    move/from16 v29, v15

    .line 1346
    .end local v4    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .end local v10    # "varName":Ljava/lang/String;
    .end local v11    # "bufEnd":I
    .end local v15    # "pos":I
    .restart local v27    # "varName":Ljava/lang/String;
    .restart local v29    # "pos":I
    .restart local v30    # "bufEnd":I
    .restart local v31    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    :goto_5
    move-object/from16 v10, v27

    .end local v27    # "varName":Ljava/lang/String;
    .restart local v10    # "varName":Ljava/lang/String;
    :goto_6
    if-nez v12, :cond_c

    .line 1347
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v4

    .line 1348
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v14, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1352
    :cond_c
    invoke-direct {v0, v10, v12}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->checkCyclicSubstitution(Ljava/lang/String;Ljava/util/List;)V

    .line 1353
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1356
    invoke-virtual {v0, v10, v1, v13, v6}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->resolveVariable(Ljava/lang/String;Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;II)Ljava/lang/String;

    move-result-object v4

    .line 1357
    .local v4, "varValue":Ljava/lang/String;
    if-nez v4, :cond_d

    .line 1358
    move-object/from16 v4, v25

    .line 1360
    :cond_d
    if-eqz v4, :cond_f

    .line 1361
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    .line 1362
    .local v11, "varLen":I
    invoke-virtual {v1, v13, v6, v4}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->replace(IILjava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 1363
    const/4 v15, 0x1

    .line 1364
    .end local p4    # "altered":Z
    .local v15, "altered":Z
    const/16 v18, 0x0

    .line 1365
    .local v18, "change":I
    if-nez v9, :cond_e

    .line 1366
    invoke-direct {v0, v1, v13, v11, v12}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->substitute(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;IILjava/util/List;)I

    move-result v18

    .line 1368
    :cond_e
    add-int v27, v18, v11

    sub-int v28, v6, v13

    sub-int v27, v27, v28

    .line 1369
    .end local v18    # "change":I
    .local v27, "change":I
    add-int v18, v29, v27

    .line 1370
    .end local v29    # "pos":I
    .local v18, "pos":I
    add-int v28, v30, v27

    .line 1371
    .end local v30    # "bufEnd":I
    .local v28, "bufEnd":I
    add-int v17, v17, v27

    .line 1372
    iget-object v14, v1, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    .line 1373
    .end local v11    # "varLen":I
    .end local v27    # "change":I
    move/from16 v29, v18

    move/from16 v11, v28

    goto :goto_7

    .end local v15    # "altered":Z
    .end local v18    # "pos":I
    .end local v28    # "bufEnd":I
    .restart local v29    # "pos":I
    .restart local v30    # "bufEnd":I
    .restart local p4    # "altered":Z
    :cond_f
    if-nez v26, :cond_10

    move/from16 v15, p4

    move/from16 v11, v30

    .line 1380
    .end local v30    # "bufEnd":I
    .end local p4    # "altered":Z
    .local v11, "bufEnd":I
    .restart local v15    # "altered":Z
    :goto_7
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v18

    const/16 v16, 0x1

    add-int/lit8 v1, v18, -0x1

    invoke-interface {v12, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1381
    move-object v13, v14

    move v14, v15

    move/from16 v15, v29

    goto :goto_8

    .line 1374
    .end local v11    # "bufEnd":I
    .end local v15    # "altered":Z
    .restart local v30    # "bufEnd":I
    .restart local p4    # "altered":Z
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-boolean v11, v0, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->enableSubstitutionInVariables:Z

    .line 1376
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    filled-new-array {v10, v11}, [Ljava/lang/Object;

    move-result-object v11

    .line 1374
    const-string v15, "Cannot resolve variable \'%s\' (enableSubstitutionInVariables=%s)."

    invoke-static {v15, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1383
    .end local v23    # "suffMatcher":Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .end local v24    # "escape":C
    .end local v25    # "varDefaultValue":Ljava/lang/String;
    .end local v26    # "undefinedVariableException":Z
    .end local v29    # "pos":I
    .end local v30    # "bufEnd":I
    .end local v31    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .local v4, "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .local v5, "suffMatcher":Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .local v6, "escape":C
    .local v10, "undefinedVariableException":Z
    .restart local v11    # "bufEnd":I
    .local v15, "pos":I
    :cond_11
    move-object/from16 v31, v4

    move-object/from16 v23, v5

    move/from16 v24, v6

    move/from16 v26, v10

    move/from16 v30, v11

    const/16 v16, 0x1

    .end local v4    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .end local v5    # "suffMatcher":Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .end local v6    # "escape":C
    .end local v10    # "undefinedVariableException":Z
    .end local v11    # "bufEnd":I
    .restart local v23    # "suffMatcher":Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .restart local v24    # "escape":C
    .restart local v26    # "undefinedVariableException":Z
    .restart local v30    # "bufEnd":I
    .restart local v31    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    add-int/lit8 v22, v22, -0x1

    .line 1384
    add-int v15, v15, v20

    move-object/from16 v1, p1

    goto/16 :goto_2

    .line 1296
    .end local v23    # "suffMatcher":Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .end local v24    # "escape":C
    .end local v26    # "undefinedVariableException":Z
    .end local v30    # "bufEnd":I
    .end local v31    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .restart local v4    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .restart local v5    # "suffMatcher":Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .restart local v6    # "escape":C
    .restart local v10    # "undefinedVariableException":Z
    .restart local v11    # "bufEnd":I
    :cond_12
    move-object/from16 v31, v4

    move-object/from16 v23, v5

    move/from16 v24, v6

    move/from16 v26, v10

    move/from16 v30, v11

    const/16 v16, 0x1

    .end local v4    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .end local v5    # "suffMatcher":Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .end local v6    # "escape":C
    .end local v10    # "undefinedVariableException":Z
    .end local v11    # "bufEnd":I
    .restart local v23    # "suffMatcher":Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .restart local v24    # "escape":C
    .restart local v26    # "undefinedVariableException":Z
    .restart local v30    # "bufEnd":I
    .restart local v31    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    move-object v13, v14

    move/from16 v14, p4

    .line 1389
    .end local v19    # "startMatchLen":I
    .end local v20    # "endMatchLen":I
    .end local v22    # "nestedVarCount":I
    .end local v30    # "bufEnd":I
    .end local p4    # "altered":Z
    .restart local v11    # "bufEnd":I
    .local v13, "chars":[C
    .local v14, "altered":Z
    :goto_8
    move-object/from16 v1, p1

    move/from16 p4, v14

    move-object/from16 v5, v23

    move/from16 v6, v24

    move/from16 v10, v26

    move-object/from16 v4, v31

    move-object v14, v13

    move/from16 v13, v21

    goto/16 :goto_1

    .line 1390
    .end local v21    # "top":Z
    .end local v23    # "suffMatcher":Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .end local v24    # "escape":C
    .end local v26    # "undefinedVariableException":Z
    .end local v31    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .restart local v4    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .restart local v5    # "suffMatcher":Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .restart local v6    # "escape":C
    .restart local v10    # "undefinedVariableException":Z
    .local v13, "top":Z
    .local v14, "chars":[C
    .restart local p4    # "altered":Z
    :cond_13
    move-object/from16 v31, v4

    move-object/from16 v23, v5

    move/from16 v24, v6

    move/from16 v26, v10

    move/from16 v30, v11

    move/from16 v21, v13

    .end local v4    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .end local v5    # "suffMatcher":Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .end local v6    # "escape":C
    .end local v10    # "undefinedVariableException":Z
    .end local v11    # "bufEnd":I
    .end local v13    # "top":Z
    .restart local v21    # "top":Z
    .restart local v23    # "suffMatcher":Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .restart local v24    # "escape":C
    .restart local v26    # "undefinedVariableException":Z
    .restart local v30    # "bufEnd":I
    .restart local v31    # "pfxMatcher":Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    if-eqz v21, :cond_14

    .line 1391
    return p4

    .line 1393
    :cond_14
    return v17
.end method


# virtual methods
.method public getEscapeChar()C
    .locals 1

    .line 542
    iget-char v0, p0, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->escapeChar:C

    return v0
.end method

.method public getStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;
    .locals 1

    .line 553
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->variableResolver:Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;

    return-object v0
.end method

.method public getValueDelimiterMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .locals 1

    .line 570
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->valueDelimiterMatcher:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    return-object v0
.end method

.method public getVariablePrefixMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .locals 1

    .line 584
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->prefixMatcher:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    return-object v0
.end method

.method public getVariableSuffixMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .locals 1

    .line 598
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->suffixMatcher:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    return-object v0
.end method

.method public isDisableSubstitutionInValues()Z
    .locals 1

    .line 623
    iget-boolean v0, p0, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->disableSubstitutionInValues:Z

    return v0
.end method

.method public isEnableSubstitutionInVariables()Z
    .locals 1

    .line 634
    iget-boolean v0, p0, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->enableSubstitutionInVariables:Z

    return v0
.end method

.method public isEnableUndefinedVariableException()Z
    .locals 1

    .line 643
    iget-boolean v0, p0, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->enableUndefinedVariableException:Z

    return v0
.end method

.method public isPreserveEscapes()Z
    .locals 1

    .line 652
    iget-boolean v0, p0, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->preserveEscapes:Z

    return v0
.end method

.method public replace(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Ljava/lang/CharSequence;

    .line 704
    if-nez p1, :cond_0

    .line 705
    const/4 v0, 0x0

    return-object v0

    .line 707
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->replace(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 724
    if-nez p1, :cond_0

    .line 725
    const/4 v0, 0x0

    return-object v0

    .line 727
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    invoke-direct {v0, p3}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/String;II)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    .line 728
    .local v0, "buf":Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->substitute(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;II)Z

    .line 729
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # Ljava/lang/Object;

    .line 742
    if-nez p1, :cond_0

    .line 743
    const/4 v0, 0x0

    return-object v0

    .line 745
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/Object;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    .line 746
    .local v0, "buf":Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->substitute(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;II)Z

    .line 747
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # Ljava/lang/String;

    .line 760
    if-nez p1, :cond_0

    .line 761
    const/4 v0, 0x0

    return-object v0

    .line 763
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;-><init>(Ljava/lang/String;)V

    .line 764
    .local v0, "buf":Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->substitute(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 765
    return-object p1

    .line 767
    :cond_1
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 784
    if-nez p1, :cond_0

    .line 785
    const/4 v0, 0x0

    return-object v0

    .line 787
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    invoke-direct {v0, p3}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/String;II)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    .line 788
    .local v0, "buf":Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->substitute(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 789
    add-int v1, p2, p3

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 791
    :cond_1
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # Ljava/lang/StringBuffer;

    .line 804
    if-nez p1, :cond_0

    .line 805
    const/4 v0, 0x0

    return-object v0

    .line 807
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/StringBuffer;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    .line 808
    .local v0, "buf":Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->substitute(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;II)Z

    .line 809
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/StringBuffer;II)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Ljava/lang/StringBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 826
    if-nez p1, :cond_0

    .line 827
    const/4 v0, 0x0

    return-object v0

    .line 829
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    invoke-direct {v0, p3}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/StringBuffer;II)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    .line 830
    .local v0, "buf":Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->substitute(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;II)Z

    .line 831
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 844
    if-nez p1, :cond_0

    .line 845
    const/4 v0, 0x0

    return-object v0

    .line 847
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    .line 848
    .local v0, "buf":Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->substitute(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;II)Z

    .line 849
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;II)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 866
    if-nez p1, :cond_0

    .line 867
    const/4 v0, 0x0

    return-object v0

    .line 869
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    invoke-direct {v0, p3}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;II)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    .line 870
    .local v0, "buf":Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->substitute(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;II)Z

    .line 871
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace([C)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # [C

    .line 665
    if-nez p1, :cond_0

    .line 666
    const/4 v0, 0x0

    return-object v0

    .line 668
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    array-length v1, p1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append([C)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    .line 669
    .local v0, "buf":Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->substitute(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;II)Z

    .line 670
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace([CII)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 687
    if-nez p1, :cond_0

    .line 688
    const/4 v0, 0x0

    return-object v0

    .line 690
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    invoke-direct {v0, p3}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append([CII)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    .line 691
    .local v0, "buf":Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->substitute(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;II)Z

    .line 692
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replaceIn(Ljava/lang/StringBuffer;)Z
    .locals 2
    .param p1, "source"    # Ljava/lang/StringBuffer;

    .line 883
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 884
    return v0

    .line 886
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->replaceIn(Ljava/lang/StringBuffer;II)Z

    move-result v0

    return v0
.end method

.method public replaceIn(Ljava/lang/StringBuffer;II)Z
    .locals 3
    .param p1, "source"    # Ljava/lang/StringBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 903
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 904
    return v0

    .line 906
    :cond_0
    new-instance v1, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    invoke-direct {v1, p3}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;-><init>(I)V

    invoke-virtual {v1, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/StringBuffer;II)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v1

    .line 907
    .local v1, "buf":Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    invoke-virtual {p0, v1, v0, p3}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->substitute(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 908
    return v0

    .line 910
    :cond_1
    add-int v0, p2, p3

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 911
    const/4 v0, 0x1

    return v0
.end method

.method public replaceIn(Ljava/lang/StringBuilder;)Z
    .locals 2
    .param p1, "source"    # Ljava/lang/StringBuilder;

    .line 923
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 924
    return v0

    .line 926
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->replaceIn(Ljava/lang/StringBuilder;II)Z

    move-result v0

    return v0
.end method

.method public replaceIn(Ljava/lang/StringBuilder;II)Z
    .locals 3
    .param p1, "source"    # Ljava/lang/StringBuilder;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 943
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 944
    return v0

    .line 946
    :cond_0
    new-instance v1, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    invoke-direct {v1, p3}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;-><init>(I)V

    invoke-virtual {v1, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/StringBuilder;II)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v1

    .line 947
    .local v1, "buf":Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    invoke-virtual {p0, v1, v0, p3}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->substitute(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 948
    return v0

    .line 950
    :cond_1
    add-int v0, p2, p3

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    const/4 v0, 0x1

    return v0
.end method

.method public replaceIn(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;)Z
    .locals 2
    .param p1, "source"    # Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 964
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 965
    return v0

    .line 967
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->substitute(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;II)Z

    move-result v0

    return v0
.end method

.method public replaceIn(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;II)Z
    .locals 1
    .param p1, "source"    # Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 984
    if-nez p1, :cond_0

    .line 985
    const/4 v0, 0x0

    return v0

    .line 987
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->substitute(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;II)Z

    move-result v0

    return v0
.end method

.method protected resolveVariable(Ljava/lang/String;Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;II)Ljava/lang/String;
    .locals 2
    .param p1, "variableName"    # Ljava/lang/String;
    .param p2, "buf"    # Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .param p3, "startPos"    # I
    .param p4, "endPos"    # I

    .line 1008
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->getStringLookup()Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;

    move-result-object v0

    .line 1009
    .local v0, "resolver":Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;
    if-nez v0, :cond_0

    .line 1010
    const/4 v1, 0x0

    return-object v1

    .line 1012
    :cond_0
    invoke-interface {v0, p1}, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;->lookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setDisableSubstitutionInValues(Z)Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;
    .locals 0
    .param p1, "disableSubstitutionInValues"    # Z

    .line 1022
    iput-boolean p1, p0, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->disableSubstitutionInValues:Z

    .line 1023
    return-object p0
.end method

.method public setEnableSubstitutionInVariables(Z)Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;
    .locals 0
    .param p1, "enableSubstitutionInVariables"    # Z

    .line 1035
    iput-boolean p1, p0, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->enableSubstitutionInVariables:Z

    .line 1036
    return-object p0
.end method

.method public setEnableUndefinedVariableException(Z)Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;
    .locals 0
    .param p1, "failOnUndefinedVariable"    # Z

    .line 1046
    iput-boolean p1, p0, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->enableUndefinedVariableException:Z

    .line 1047
    return-object p0
.end method

.method public setEscapeChar(C)Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;
    .locals 0
    .param p1, "escapeCharacter"    # C

    .line 1058
    iput-char p1, p0, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->escapeChar:C

    .line 1059
    return-object p0
.end method

.method public setPreserveEscapes(Z)Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;
    .locals 0
    .param p1, "preserveEscapes"    # Z

    .line 1073
    iput-boolean p1, p0, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->preserveEscapes:Z

    .line 1074
    return-object p0
.end method

.method public setValueDelimiter(C)Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;
    .locals 1
    .param p1, "valueDelimiter"    # C

    .line 1087
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->charMatcher(C)Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->setValueDelimiterMatcher(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setValueDelimiter(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;
    .locals 1
    .param p1, "valueDelimiter"    # Ljava/lang/String;

    .line 1103
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1107
    :cond_0
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->stringMatcher(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->setValueDelimiterMatcher(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;

    move-result-object v0

    return-object v0

    .line 1104
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->setValueDelimiterMatcher(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;

    .line 1105
    return-object p0
.end method

.method public setValueDelimiterMatcher(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;
    .locals 0
    .param p1, "valueDelimiterMatcher"    # Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    .line 1123
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->valueDelimiterMatcher:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    .line 1124
    return-object p0
.end method

.method public setVariablePrefix(C)Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;
    .locals 1
    .param p1, "prefix"    # C

    .line 1137
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->charMatcher(C)Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->setVariablePrefixMatcher(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setVariablePrefix(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;

    .line 1151
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

    .line 1152
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->stringMatcher(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->setVariablePrefixMatcher(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setVariablePrefixMatcher(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;
    .locals 3
    .param p1, "prefixMatcher"    # Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    .line 1166
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

    .line 1167
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->prefixMatcher:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    .line 1168
    return-object p0
.end method

.method public setVariableResolver(Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;)Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;
    .locals 0
    .param p1, "variableResolver"    # Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;

    .line 1178
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->variableResolver:Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;

    .line 1179
    return-object p0
.end method

.method public setVariableSuffix(C)Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;
    .locals 1
    .param p1, "suffix"    # C

    .line 1192
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->charMatcher(C)Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->setVariableSuffixMatcher(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setVariableSuffix(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;
    .locals 3
    .param p1, "suffix"    # Ljava/lang/String;

    .line 1206
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

    .line 1207
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->stringMatcher(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->setVariableSuffixMatcher(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setVariableSuffixMatcher(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;
    .locals 3
    .param p1, "suffixMatcher"    # Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    .line 1221
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

    .line 1222
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->suffixMatcher:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    .line 1223
    return-object p0
.end method

.method protected substitute(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;II)Z
    .locals 1
    .param p1, "buf"    # Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 1242
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/checkerframework/org/apache/commons/text/StringSubstitutor;->substitute(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;IILjava/util/List;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
