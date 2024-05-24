.class public abstract Lorg/checkerframework/framework/source/SourceChecker;
.super Lorg/checkerframework/javacutil/AbstractTypeProcessor;
.source "SourceChecker.java"

# interfaces
.implements Lorg/checkerframework/framework/util/CFContext;
.implements Lorg/checkerframework/framework/util/OptionConfiguration;


# annotations
.annotation runtime Lorg/checkerframework/framework/source/SupportedOptions;
    value = {
        "suppressWarnings",
        "skipUses",
        "onlyUses",
        "skipDefs",
        "onlyDefs",
        "assumeSideEffectFree",
        "assumeDeterministic",
        "assumePure",
        "assumeAssertionsAreEnabled",
        "assumeAssertionsAreDisabled",
        "warns",
        "checkPurityAnnotations",
        "invariantArrays",
        "checkCastElementType",
        "useDefaultsForUncheckedCode",
        "concurrentSemantics",
        "conservativeUninferredTypeArguments",
        "ignoreRawTypeArguments",
        "lint",
        "suggestPureMethods",
        "resolveReflection",
        "infer",
        "showSuppressWarningKeys",
        "warnUnneededSuppressions",
        "requirePrefixInWarningSuppressions",
        "ignoreInvalidAnnotationLocations",
        "stubs",
        "stubWarnIfNotFound",
        "stubWarnIfNotFoundIgnoresClasses",
        "stubWarnIfOverwritesBytecode",
        "stubWarnIfRedundantWithBytecode",
        "printGitProperties",
        "printAllQualifiers",
        "printVerboseGenerics",
        "detailedmsgtext",
        "noPrintErrorStack",
        "nomsgtext",
        "ignorejdkastub",
        "permitMissingJdk",
        "nocheckjdk",
        "stubDebug",
        "filenames",
        "showchecks",
        "showInferenceSteps",
        "cfgviz",
        "flowdotdir",
        "verbosecfg",
        "resourceStats",
        "atfCacheSize",
        "atfDoNotCache"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DETAILS_SEPARATOR:Ljava/lang/String; = " $$ "

.field private static final LINE_SEPARATOR:Ljava/lang/String;

.field protected static final MSGS_FILE:Ljava/lang/String; = "messages.properties"

.field private static final OPTION_SEPARATOR:Ljava/lang/String; = "_"

.field public static final SUPPRESS_ALL_KEY:Ljava/lang/String; = "all"

.field public static final UNNEEDED_SUPPRESSION_KEY:Ljava/lang/String; = "unneeded.suppression"

.field private static gitPropertiesPrinted:Z


# instance fields
.field private activeLints:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private activeOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected currentRoot:Lcom/sun/source/tree/CompilationUnitTree;

.field protected final elementsWithSuppressedWarnings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Element;",
            ">;"
        }
    .end annotation
.end field

.field protected errsOnLastExit:I

.field protected messager:Ljavax/annotation/processing/Messager;

.field protected messages:Ljava/util/Properties;

.field private onlyDefsPattern:Ljava/util/regex/Pattern;

.field private onlyUsesPattern:Ljava/util/regex/Pattern;

.field protected parentChecker:Lorg/checkerframework/framework/source/SourceChecker;

.field private previousErrorCompilationUnit:Lcom/sun/source/tree/CompilationUnitTree;

.field private skipDefsPattern:Ljava/util/regex/Pattern;

.field private skipUsesPattern:Ljava/util/regex/Pattern;

.field private supportedLints:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private suppressWarnings:[Ljava/lang/String;

.field private final suppressWarningsClassName:Ljava/lang/String;

.field protected trees:Lcom/sun/source/util/Trees;

.field protected upstreamCheckerNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected visitor:Lorg/checkerframework/framework/source/SourceVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/framework/source/SourceVisitor<",
            "**>;"
        }
    .end annotation
.end field

.field private warnedAboutSourceLevel:Z


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 2306
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 89
    nop

    .line 359
    const/4 v0, 0x0

    sput-boolean v0, Lorg/checkerframework/framework/source/SourceChecker;->gitPropertiesPrinted:Z

    .line 456
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/framework/source/SourceChecker;->LINE_SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 351
    invoke-direct {p0}, Lorg/checkerframework/javacutil/AbstractTypeProcessor;-><init>()V

    .line 965
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->warnedAboutSourceLevel:Z

    .line 973
    iput v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->errsOnLastExit:I

    .line 1152
    const-class v0, Ljava/lang/SuppressWarnings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->suppressWarningsClassName:Ljava/lang/String;

    .line 1642
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->elementsWithSuppressedWarnings:Ljava/util/Set;

    return-void
.end method

.method private static arrayToLowerCase([Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "a"    # [Ljava/lang/String;

    .line 786
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 787
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    .line 786
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 789
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method private checkSuppressWarnings(Ljava/lang/SuppressWarnings;Ljava/lang/String;)Z
    .locals 6
    .param p1, "anno"    # Ljava/lang/SuppressWarnings;
    .param p2, "errKey"    # Ljava/lang/String;

    .line 1464
    invoke-virtual {p0}, Lorg/checkerframework/framework/source/SourceChecker;->getSuppressWarningsKeys()Ljava/util/Collection;

    move-result-object v0

    .line 1465
    .local v0, "checkerSwKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1466
    return v2

    .line 1469
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/framework/source/SourceChecker;->suppressWarnings:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1470
    invoke-virtual {p0}, Lorg/checkerframework/framework/source/SourceChecker;->getOptions()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/checkerframework/framework/source/SourceChecker;->createSuppressWarnings(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/framework/source/SourceChecker;->suppressWarnings:[Ljava/lang/String;

    .line 1472
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/framework/source/SourceChecker;->suppressWarnings:[Ljava/lang/String;

    .line 1473
    .local v1, "cmdLineSwKeys":[Ljava/lang/String;
    invoke-direct {p0, v1, p2}, Lorg/checkerframework/framework/source/SourceChecker;->checkSuppressWarnings([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 1474
    return v4

    .line 1477
    :cond_2
    if-eqz p1, :cond_3

    .line 1478
    invoke-interface {p1}, Ljava/lang/SuppressWarnings;->value()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/checkerframework/framework/source/SourceChecker;->arrayToLowerCase([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1479
    .local v3, "userSwKeys":[Ljava/lang/String;
    invoke-direct {p0, v3, p2}, Lorg/checkerframework/framework/source/SourceChecker;->checkSuppressWarnings([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1480
    return v4

    .line 1484
    .end local v3    # "userSwKeys":[Ljava/lang/String;
    :cond_3
    return v2
.end method

.method private checkSuppressWarnings([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "userSwKeys"    # [Ljava/lang/String;
    .param p2, "errKey"    # Ljava/lang/String;

    .line 1498
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1499
    return v0

    .line 1502
    :cond_0
    const-string v1, "requirePrefixInWarningSuppressions"

    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/source/SourceChecker;->hasOption(Ljava/lang/String;)Z

    move-result v1

    .line 1504
    .local v1, "requirePrefix":Z
    invoke-virtual {p0}, Lorg/checkerframework/framework/source/SourceChecker;->getSuppressWarningsKeys()Ljava/util/Collection;

    move-result-object v2

    .line 1507
    .local v2, "checkerKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    array-length v3, p1

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_6

    aget-object v5, p1, v4

    .line 1508
    .local v5, "userKey":Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1509
    .local v6, "colonPos":I
    const/4 v7, -0x1

    const/4 v8, 0x1

    if-ne v6, v7, :cond_2

    .line 1511
    invoke-interface {v2, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1513
    return v8

    .line 1515
    :cond_1
    if-eqz v1, :cond_4

    .line 1516
    goto :goto_1

    .line 1520
    :cond_2
    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1521
    .local v7, "userCheckerKey":Ljava/lang/String;
    invoke-interface {v2, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1522
    goto :goto_1

    .line 1524
    :cond_3
    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1526
    .end local v7    # "userCheckerKey":Ljava/lang/String;
    :cond_4
    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1527
    return v8

    .line 1507
    .end local v5    # "userKey":Ljava/lang/String;
    .end local v6    # "colonPos":I
    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1531
    :cond_6
    return v0
.end method

.method private createActiveLints(Ljava/util/Map;)Ljava/util/Set;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 688
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "lint"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 689
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 692
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 693
    .local v0, "lintString":Ljava/lang/String;
    const-string v1, "all"

    if-nez v0, :cond_1

    .line 694
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 697
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 698
    .local v2, "activeLint":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_5

    aget-object v7, v3, v6

    .line 699
    .local v7, "s":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/checkerframework/framework/source/SourceChecker;->getSupportedLintOptions()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "none"

    if-nez v8, :cond_3

    .line 700
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v10, 0x2d

    if-ne v8, v10, :cond_2

    .line 701
    invoke-virtual {p0}, Lorg/checkerframework/framework/source/SourceChecker;->getSupportedLintOptions()Ljava/util/Set;

    move-result-object v8

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    nop

    .line 702
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 703
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 705
    iget-object v8, p0, Lorg/checkerframework/framework/source/SourceChecker;->messager:Ljavax/annotation/processing/Messager;

    sget-object v10, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unsupported lint option: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "; All options: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 710
    invoke-virtual {p0}, Lorg/checkerframework/framework/source/SourceChecker;->getSupportedLintOptions()Ljava/util/Set;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 705
    invoke-interface {v8, v10, v11}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    .line 714
    :cond_3
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 715
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 716
    const-string v8, "-all"

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 698
    .end local v7    # "s":Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 720
    :cond_5
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method private createActiveOptions(Ljava/util/Map;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 724
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 728
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 730
    .local v0, "activeOpts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 731
    .local v2, "opt":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 732
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 734
    .local v4, "value":Ljava/lang/String;
    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 736
    .local v6, "split":[Ljava/lang/String;
    array-length v7, v6

    packed-switch v7, :pswitch_data_0

    .line 757
    new-instance v1, Lorg/checkerframework/javacutil/UserError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid option name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " At most one separator "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " expected, but found "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v7, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/checkerframework/javacutil/UserError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 743
    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 746
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v9, v6, v8

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 747
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 748
    :cond_2
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    .line 752
    if-eqz v5, :cond_4

    .line 753
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lorg/checkerframework/javacutil/AbstractTypeProcessor;

    .line 754
    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 755
    goto :goto_1

    .line 739
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :pswitch_1
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    nop

    .line 766
    .end local v2    # "opt":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    .end local v6    # "split":[Ljava/lang/String;
    :cond_4
    :goto_1
    goto/16 :goto_0

    .line 767
    :cond_5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createSuppressWarnings(Ljava/util/Map;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 772
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "suppressWarnings"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 773
    return-object v2

    .line 776
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 777
    .local v0, "swString":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 778
    return-object v2

    .line 781
    :cond_1
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/framework/source/SourceChecker;->arrayToLowerCase([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private findSuppressWarningsTree(Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/Tree;
    .locals 5
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 1161
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isClassTree(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1162
    move-object v0, p1

    check-cast v0, Lcom/sun/source/tree/ClassTree;

    invoke-interface {v0}, Lcom/sun/source/tree/ClassTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/source/tree/ModifiersTree;->getAnnotations()Ljava/util/List;

    move-result-object v0

    .local v0, "annotations":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/AnnotationTree;>;"
    goto :goto_0

    .line 1163
    .end local v0    # "annotations":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/AnnotationTree;>;"
    :cond_0
    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_1

    .line 1164
    move-object v0, p1

    check-cast v0, Lcom/sun/source/tree/MethodTree;

    invoke-interface {v0}, Lcom/sun/source/tree/MethodTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/source/tree/ModifiersTree;->getAnnotations()Ljava/util/List;

    move-result-object v0

    .restart local v0    # "annotations":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/AnnotationTree;>;"
    goto :goto_0

    .line 1166
    .end local v0    # "annotations":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/AnnotationTree;>;"
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/sun/source/tree/VariableTree;

    invoke-interface {v0}, Lcom/sun/source/tree/VariableTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/source/tree/ModifiersTree;->getAnnotations()Ljava/util/List;

    move-result-object v0

    .line 1169
    .restart local v0    # "annotations":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/AnnotationTree;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/source/tree/AnnotationTree;

    .line 1170
    .local v2, "annotationTree":Lcom/sun/source/tree/AnnotationTree;
    nop

    .line 1171
    invoke-static {v2}, Lorg/checkerframework/javacutil/TreeUtils;->annotationFromAnnotationTree(Lcom/sun/source/tree/AnnotationTree;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/framework/source/SourceChecker;->suppressWarningsClassName:Ljava/lang/String;

    .line 1170
    invoke-static {v3, v4}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1173
    return-object v2

    .line 1175
    .end local v2    # "annotationTree":Lcom/sun/source/tree/AnnotationTree;
    :cond_2
    goto :goto_1

    .line 1176
    :cond_3
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Did not find @SuppressWarnings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getDefaultWarningSuppressionKey()Ljava/lang/String;
    .locals 4

    .line 2161
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 2162
    .local v0, "className":Ljava/lang/String;
    const-string v1, "Checker"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 2163
    .local v1, "indexOfChecker":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2164
    const-string v3, "Subchecker"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 2166
    :cond_0
    if-ne v1, v2, :cond_1

    move-object v2, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2167
    .local v2, "result":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getOnlyDefsPattern(Ljava/util/Map;)Ljava/util/regex/Pattern;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/regex/Pattern;"
        }
    .end annotation

    .line 680
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "onlyDefs"

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/framework/source/SourceChecker;->getOnlyPattern(Ljava/lang/String;Ljava/util/Map;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method private getOnlyPattern(Ljava/lang/String;Ljava/util/Map;)Ljava/util/regex/Pattern;
    .locals 1
    .param p1, "patternName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/regex/Pattern;"
        }
    .end annotation

    .line 630
    .local p2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "."

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/framework/source/SourceChecker;->getPattern(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method private getOnlyUsesPattern(Ljava/util/Map;)Ljava/util/regex/Pattern;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/regex/Pattern;"
        }
    .end annotation

    .line 672
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "onlyUses"

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/framework/source/SourceChecker;->getOnlyPattern(Ljava/lang/String;Ljava/util/Map;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method private getPattern(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 6
    .param p1, "patternName"    # Ljava/lang/String;
    .param p3, "defaultPattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/regex/Pattern;"
        }
    .end annotation

    .line 635
    .local p2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, ""

    .line 637
    .local v0, "pattern":Ljava/lang/String;
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "The "

    if-eqz v1, :cond_0

    .line 638
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 639
    if-nez v0, :cond_2

    .line 640
    sget-object v1, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " property is empty; please fix your command line"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v4, v5}, Lorg/checkerframework/framework/source/SourceChecker;->message(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 643
    const-string v0, ""

    goto :goto_0

    .line 645
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkers."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 647
    :cond_1
    invoke-static {p1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 648
    invoke-static {p1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 651
    :cond_2
    :goto_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_3

    .line 652
    sget-object v1, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " property contains \"/\", which will never match a class name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v3, v2}, Lorg/checkerframework/framework/source/SourceChecker;->message(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 660
    :cond_3
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 661
    move-object v0, p3

    .line 664
    :cond_4
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    return-object v1
.end method

.method private getSkipDefsPattern(Ljava/util/Map;)Ljava/util/regex/Pattern;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/regex/Pattern;"
        }
    .end annotation

    .line 676
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "skipDefs"

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/framework/source/SourceChecker;->getSkipPattern(Ljava/lang/String;Ljava/util/Map;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method private getSkipPattern(Ljava/lang/String;Ljava/util/Map;)Ljava/util/regex/Pattern;
    .locals 1
    .param p1, "patternName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/regex/Pattern;"
        }
    .end annotation

    .line 625
    .local p2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "\\]\'\"\\]"

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/framework/source/SourceChecker;->getPattern(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method private getSkipUsesPattern(Ljava/util/Map;)Ljava/util/regex/Pattern;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/regex/Pattern;"
        }
    .end annotation

    .line 668
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "skipUses"

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/framework/source/SourceChecker;->getSkipPattern(Ljava/lang/String;Ljava/util/Map;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method private isAnnotatedForThisCheckerOrUpstreamChecker(Ljavax/lang/model/element/Element;)Z
    .locals 8
    .param p1, "elt"    # Ljavax/lang/model/element/Element;

    .line 1690
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const-string v1, "source"

    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/source/SourceChecker;->useUncheckedCodeDefault(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 1694
    :cond_0
    const-class v1, Lorg/checkerframework/framework/qual/AnnotatedFor;

    invoke-interface {p1, v1}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/qual/AnnotatedFor;

    .line 1696
    .local v1, "anno":Lorg/checkerframework/framework/qual/AnnotatedFor;
    if-nez v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lorg/checkerframework/framework/qual/AnnotatedFor;->value()[Ljava/lang/String;

    move-result-object v2

    .line 1698
    .local v2, "userAnnotatedFors":[Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_3

    .line 1699
    invoke-virtual {p0}, Lorg/checkerframework/framework/source/SourceChecker;->getUpstreamCheckerNames()Ljava/util/List;

    move-result-object v3

    .line 1701
    .local v3, "upstreamCheckerNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v4, v2

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v6, v2, v5

    .line 1702
    .local v6, "userAnnotatedFor":Ljava/lang/String;
    invoke-static {v6, v3}, Lorg/checkerframework/framework/util/CheckerMain;->matchesCheckerOrSubcheckerFromList(Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1704
    const/4 v0, 0x1

    return v0

    .line 1701
    .end local v6    # "userAnnotatedFor":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1709
    .end local v3    # "upstreamCheckerNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    return v0

    .line 1691
    .end local v1    # "anno":Lorg/checkerframework/framework/qual/AnnotatedFor;
    .end local v2    # "userAnnotatedFors":[Ljava/lang/String;
    :cond_4
    :goto_2
    return v0
.end method

.method private logBugInCF(Lorg/checkerframework/javacutil/BugInCF;)V
    .locals 11
    .param p1, "ce"    # Lorg/checkerframework/javacutil/BugInCF;

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/checkerframework/javacutil/BugInCF;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 801
    .local v0, "msg":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/checkerframework/framework/source/SourceChecker;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/checkerframework/framework/source/SourceChecker;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 803
    invoke-interface {v1}, Ljavax/annotation/processing/ProcessingEnvironment;->getOptions()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/checkerframework/framework/source/SourceChecker;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 804
    invoke-interface {v1}, Ljavax/annotation/processing/ProcessingEnvironment;->getOptions()Ljava/util/Map;

    move-result-object v1

    const-string v4, "noPrintErrorStack"

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 806
    .local v1, "noPrintErrorStack":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 807
    const-string v2, "; The Checker Framework crashed.  Please report the crash.  To see the full stack trace, don\'t invoke the compiler with -AnoPrintErrorStack"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 811
    :cond_1
    iget-object v4, p0, Lorg/checkerframework/framework/source/SourceChecker;->currentRoot:Lcom/sun/source/tree/CompilationUnitTree;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/sun/source/tree/CompilationUnitTree;->getSourceFile()Ljavax/tools/JavaFileObject;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 812
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nCompilation unit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/checkerframework/framework/source/SourceChecker;->currentRoot:Lcom/sun/source/tree/CompilationUnitTree;

    invoke-interface {v5}, Lcom/sun/source/tree/CompilationUnitTree;->getSourceFile()Ljavax/tools/JavaFileObject;

    move-result-object v5

    invoke-interface {v5}, Ljavax/tools/JavaFileObject;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    :cond_2
    iget-object v4, p0, Lorg/checkerframework/framework/source/SourceChecker;->visitor:Lorg/checkerframework/framework/source/SourceVisitor;

    if-eqz v4, :cond_3

    .line 816
    iget-object v4, v4, Lorg/checkerframework/framework/source/SourceVisitor;->lastVisited:Lcom/sun/source/tree/Tree;

    check-cast v4, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    .line 817
    .local v4, "pos":Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;
    if-eqz v4, :cond_3

    .line 818
    new-instance v5, Lcom/sun/tools/javac/util/DiagnosticSource;

    iget-object v6, p0, Lorg/checkerframework/framework/source/SourceChecker;->currentRoot:Lcom/sun/source/tree/CompilationUnitTree;

    .line 819
    invoke-interface {v6}, Lcom/sun/source/tree/CompilationUnitTree;->getSourceFile()Ljavax/tools/JavaFileObject;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/sun/tools/javac/util/DiagnosticSource;-><init>(Ljavax/tools/JavaFileObject;Lcom/sun/tools/javac/util/AbstractLog;)V

    .line 820
    .local v5, "source":Lcom/sun/tools/javac/util/DiagnosticSource;
    invoke-interface {v4}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;->getStartPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sun/tools/javac/util/DiagnosticSource;->getLineNumber(I)I

    move-result v6

    .line 821
    .local v6, "linenr":I
    invoke-interface {v4}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;->getStartPosition()I

    move-result v7

    invoke-virtual {v5, v7, v3}, Lcom/sun/tools/javac/util/DiagnosticSource;->getColumnNumber(IZ)I

    move-result v3

    .line 822
    .local v3, "col":I
    invoke-interface {v4}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;->getStartPosition()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/sun/tools/javac/util/DiagnosticSource;->getLine(I)Ljava/lang/String;

    move-result-object v7

    .line 824
    .local v7, "line":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\nLast visited tree at line "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " column "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    .end local v3    # "col":I
    .end local v4    # "pos":Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;
    .end local v5    # "source":Lcom/sun/tools/javac/util/DiagnosticSource;
    .end local v6    # "linenr":I
    .end local v7    # "line":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 836
    invoke-virtual {p1}, Lorg/checkerframework/javacutil/BugInCF;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 838
    invoke-virtual {p1}, Lorg/checkerframework/javacutil/BugInCF;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/checkerframework/framework/source/SourceChecker;->formatStackTrace([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 834
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    invoke-virtual {p1}, Lorg/checkerframework/javacutil/BugInCF;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/NoClassDefFoundError;

    .line 840
    .local v3, "printClasspath":Z
    invoke-virtual {p1}, Lorg/checkerframework/javacutil/BugInCF;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    .line 841
    .local v5, "cause":Ljava/lang/Throwable;
    :goto_1
    if-eqz v5, :cond_4

    .line 842
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\nUnderlying Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 846
    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/checkerframework/framework/source/SourceChecker;->formatStackTrace([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 842
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    instance-of v6, v5, Ljava/lang/NoClassDefFoundError;

    or-int/2addr v3, v6

    .line 848
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    goto :goto_1

    .line 851
    :cond_4
    if-eqz v3, :cond_5

    .line 852
    const-string v4, "\nClasspath:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 854
    .local v4, "cl":Ljava/lang/ClassLoader;
    move-object v6, v4

    check-cast v6, Ljava/net/URLClassLoader;

    invoke-virtual {v6}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v6

    .line 855
    .local v6, "urls":[Ljava/net/URL;
    array-length v7, v6

    :goto_2
    if-ge v2, v7, :cond_5

    aget-object v8, v6, v2

    .line 856
    .local v8, "url":Ljava/net/URL;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    .end local v8    # "url":Ljava/net/URL;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 861
    .end local v3    # "printClasspath":Z
    .end local v4    # "cl":Ljava/lang/ClassLoader;
    .end local v5    # "cause":Ljava/lang/Throwable;
    .end local v6    # "urls":[Ljava/net/URL;
    :cond_5
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/checkerframework/framework/source/SourceChecker;->printMessage(Ljava/lang/String;)V

    .line 862
    return-void
.end method

.method private logUserError(Lorg/checkerframework/javacutil/UserError;)V
    .locals 1
    .param p1, "ce"    # Lorg/checkerframework/javacutil/UserError;

    .line 794
    invoke-virtual {p1}, Lorg/checkerframework/javacutil/UserError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 795
    .local v0, "msg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/checkerframework/framework/source/SourceChecker;->printMessage(Ljava/lang/String;)V

    .line 796
    return-void
.end method

.method private varargs message(Ljavax/tools/Diagnostic$Kind;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "kind"    # Ljavax/tools/Diagnostic$Kind;
    .param p2, "source"    # Ljava/lang/Object;
    .param p3, "msgKey"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 1249
    iget-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->messages:Ljava/util/Properties;

    if-eqz v0, :cond_11

    .line 1251
    if-eqz p4, :cond_1

    .line 1252
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_1

    .line 1253
    aget-object v1, p4, v0

    if-nez v1, :cond_0

    .line 1254
    goto :goto_1

    .line 1258
    :cond_0
    aget-object v1, p4, v0

    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/source/SourceChecker;->processArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p4, v0

    .line 1252
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1262
    .end local v0    # "i":I
    :cond_1
    sget-object v0, Ljavax/tools/Diagnostic$Kind;->NOTE:Ljavax/tools/Diagnostic$Kind;

    if-ne p1, v0, :cond_2

    .line 1263
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(NOTE) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1264
    return-void

    .line 1267
    :cond_2
    const-string v0, "(%s)"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1269
    .local v0, "defaultFormat":Ljava/lang/String;
    iget-object v1, p0, Lorg/checkerframework/framework/source/SourceChecker;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v1}, Ljavax/annotation/processing/ProcessingEnvironment;->getOptions()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/checkerframework/framework/source/SourceChecker;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 1270
    invoke-interface {v1}, Ljavax/annotation/processing/ProcessingEnvironment;->getOptions()Ljava/util/Map;

    move-result-object v1

    const-string v2, "nomsgtext"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1271
    move-object v1, v0

    .local v1, "fmtString":Ljava/lang/String;
    goto/16 :goto_6

    .line 1272
    .end local v1    # "fmtString":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lorg/checkerframework/framework/source/SourceChecker;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v1}, Ljavax/annotation/processing/ProcessingEnvironment;->getOptions()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/checkerframework/framework/source/SourceChecker;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 1273
    invoke-interface {v1}, Ljavax/annotation/processing/ProcessingEnvironment;->getOptions()Ljava/util/Map;

    move-result-object v1

    const-string v2, "detailedmsgtext"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1284
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    const-string v2, " $$ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1290
    const/4 v3, 0x0

    if-eqz p4, :cond_4

    .line 1291
    array-length v4, p4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1292
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1293
    array-length v4, p4

    :goto_2
    if-ge v3, v4, :cond_5

    aget-object v5, p4, v3

    .line 1294
    .local v5, "arg":Ljava/lang/Object;
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1295
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1293
    .end local v5    # "arg":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1299
    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1300
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1306
    :cond_5
    instance-of v3, p2, Ljavax/lang/model/element/Element;

    if-eqz v3, :cond_6

    .line 1307
    iget-object v3, p0, Lorg/checkerframework/framework/source/SourceChecker;->trees:Lcom/sun/source/util/Trees;

    move-object v4, p2

    check-cast v4, Ljavax/lang/model/element/Element;

    invoke-virtual {v3, v4}, Lcom/sun/source/util/Trees;->getTree(Ljavax/lang/model/element/Element;)Lcom/sun/source/tree/Tree;

    move-result-object v3

    .local v3, "tree":Lcom/sun/source/tree/Tree;
    goto :goto_3

    .line 1308
    .end local v3    # "tree":Lcom/sun/source/tree/Tree;
    :cond_6
    instance-of v3, p2, Lcom/sun/source/tree/Tree;

    if-eqz v3, :cond_7

    .line 1309
    move-object v3, p2

    check-cast v3, Lcom/sun/source/tree/Tree;

    .restart local v3    # "tree":Lcom/sun/source/tree/Tree;
    goto :goto_3

    .line 1311
    .end local v3    # "tree":Lcom/sun/source/tree/Tree;
    :cond_7
    const/4 v3, 0x0

    .line 1313
    .restart local v3    # "tree":Lcom/sun/source/tree/Tree;
    :goto_3
    iget-object v4, p0, Lorg/checkerframework/framework/source/SourceChecker;->currentRoot:Lcom/sun/source/tree/CompilationUnitTree;

    iget-object v5, p0, Lorg/checkerframework/framework/source/SourceChecker;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-virtual {p0, v3, v4, v5}, Lorg/checkerframework/framework/source/SourceChecker;->treeToFilePositionString(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/CompilationUnitTree;Ljavax/annotation/processing/ProcessingEnvironment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1314
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1317
    invoke-virtual {p0, p3, v0}, Lorg/checkerframework/framework/source/SourceChecker;->fullMessageOf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1319
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1321
    .end local v3    # "tree":Lcom/sun/source/tree/Tree;
    .local v1, "fmtString":Ljava/lang/String;
    goto/16 :goto_6

    .line 1324
    .end local v1    # "fmtString":Ljava/lang/String;
    :cond_8
    iget-object v1, p0, Lorg/checkerframework/framework/source/SourceChecker;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v1}, Ljavax/annotation/processing/ProcessingEnvironment;->getOptions()Ljava/util/Map;

    move-result-object v1

    const-string v2, "showSuppressWarningKeys"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "[%s:%s] "

    if-eqz v1, :cond_9

    .line 1325
    invoke-virtual {p0}, Lorg/checkerframework/framework/source/SourceChecker;->getSuppressWarningsKeys()Ljava/util/Collection;

    move-result-object v1

    filled-new-array {v1, p3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "suppressing":Ljava/lang/String;
    goto/16 :goto_5

    .line 1326
    .end local v1    # "suppressing":Ljava/lang/String;
    :cond_9
    iget-object v1, p0, Lorg/checkerframework/framework/source/SourceChecker;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 1327
    invoke-interface {v1}, Ljavax/annotation/processing/ProcessingEnvironment;->getOptions()Ljava/util/Map;

    move-result-object v1

    .line 1328
    const-string v3, "requirePrefixInWarningSuppressions"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "[%s] "

    if-eqz v1, :cond_d

    .line 1331
    invoke-direct {p0}, Lorg/checkerframework/framework/source/SourceChecker;->getDefaultWarningSuppressionKey()Ljava/lang/String;

    move-result-object v1

    .line 1332
    .local v1, "defaultKey":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/checkerframework/framework/source/SourceChecker;->getSuppressWarningsKeys()Ljava/util/Collection;

    move-result-object v4

    .line 1333
    .local v4, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v4, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1334
    filled-new-array {v1, p3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .local v2, "suppressing":Ljava/lang/String;
    goto :goto_4

    .line 1335
    .end local v2    # "suppressing":Ljava/lang/String;
    :cond_a
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1336
    const-string v3, "all"

    invoke-interface {v4, v3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 1337
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1338
    filled-new-array {v3, p3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .restart local v2    # "suppressing":Ljava/lang/String;
    goto :goto_4

    .line 1340
    .end local v2    # "suppressing":Ljava/lang/String;
    :cond_b
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1341
    .local v3, "firstKey":Ljava/lang/String;
    filled-new-array {v3, p3}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1342
    .end local v3    # "firstKey":Ljava/lang/String;
    .restart local v2    # "suppressing":Ljava/lang/String;
    move-object v1, v2

    goto :goto_4

    .line 1344
    .end local v2    # "suppressing":Ljava/lang/String;
    :cond_c
    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1346
    .end local v4    # "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v1, "suppressing":Ljava/lang/String;
    :goto_4
    goto :goto_5

    .line 1347
    .end local v1    # "suppressing":Ljava/lang/String;
    :cond_d
    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1349
    .restart local v1    # "suppressing":Ljava/lang/String;
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p3, v0}, Lorg/checkerframework/framework/source/SourceChecker;->fullMessageOf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1353
    .local v1, "fmtString":Ljava/lang/String;
    :goto_6
    :try_start_0
    invoke-static {v1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1357
    .local v2, "messageText":Ljava/lang/String;
    goto :goto_7

    .line 1354
    .end local v2    # "messageText":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1355
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid format string: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" args: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1356
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1359
    .local v2, "messageText":Ljava/lang/String;
    :goto_7
    sget-object v3, Lorg/checkerframework/framework/source/SourceChecker;->LINE_SEPARATOR:Ljava/lang/String;

    const-string v4, "\n"

    if-eq v3, v4, :cond_e

    .line 1361
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1364
    :cond_e
    instance-of v3, p2, Ljavax/lang/model/element/Element;

    if-eqz v3, :cond_f

    .line 1365
    iget-object v3, p0, Lorg/checkerframework/framework/source/SourceChecker;->messager:Ljavax/annotation/processing/Messager;

    move-object v4, p2

    check-cast v4, Ljavax/lang/model/element/Element;

    invoke-interface {v3, p1, v2, v4}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V

    goto :goto_8

    .line 1366
    :cond_f
    instance-of v3, p2, Lcom/sun/source/tree/Tree;

    if-eqz v3, :cond_10

    .line 1367
    move-object v3, p2

    check-cast v3, Lcom/sun/source/tree/Tree;

    iget-object v4, p0, Lorg/checkerframework/framework/source/SourceChecker;->currentRoot:Lcom/sun/source/tree/CompilationUnitTree;

    invoke-virtual {p0, p1, v2, v3, v4}, Lorg/checkerframework/framework/source/SourceChecker;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/CompilationUnitTree;)V

    .line 1371
    :goto_8
    return-void

    .line 1369
    :cond_10
    new-instance v3, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid position source: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1249
    .end local v0    # "defaultFormat":Ljava/lang/String;
    .end local v1    # "fmtString":Ljava/lang/String;
    .end local v2    # "messageText":Ljava/lang/String;
    :cond_11
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "null messages"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private parentOfOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1874
    const-string v0, "all"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1875
    const/4 v0, 0x0

    return-object v0

    .line 1876
    :cond_0
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1877
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1879
    :cond_1
    return-object v0
.end method

.method private printMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 866
    iget-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->messager:Ljavax/annotation/processing/Messager;

    if-nez v0, :cond_0

    .line 867
    iget-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->messager:Ljavax/annotation/processing/Messager;

    .line 869
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->messager:Ljavax/annotation/processing/Messager;

    sget-object v1, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    invoke-interface {v0, v1, p1}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    .line 870
    return-void
.end method

.method private reportUnneededSuppression(Lcom/sun/source/tree/Tree;Ljava/lang/String;)V
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "key"    # Ljava/lang/String;

    .line 1142
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/source/SourceChecker;->findSuppressWarningsTree(Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/Tree;

    move-result-object v0

    .line 1143
    .local v0, "swTree":Lcom/sun/source/tree/Tree;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1147
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 1144
    const-string v2, "unneeded.suppression"

    invoke-static {v2, v1}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v1

    .line 1143
    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/framework/source/SourceChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 1149
    return-void
.end method

.method private wrapThrowableAsBugInCF(Ljava/lang/String;Ljava/lang/Throwable;Lcom/sun/source/util/TreePath;)Lorg/checkerframework/javacutil/BugInCF;
    .locals 5
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;
    .param p3, "p"    # Lcom/sun/source/util/TreePath;

    .line 1180
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": unexpected Throwable ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1183
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1185
    const-string v2, ""

    if-nez p3, :cond_0

    .line 1186
    move-object v3, v2

    goto :goto_0

    .line 1188
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " while processing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/sun/source/util/TreePath;->getCompilationUnit()Lcom/sun/source/tree/CompilationUnitTree;

    move-result-object v4

    invoke-interface {v4}, Lcom/sun/source/tree/CompilationUnitTree;->getSourceFile()Ljavax/tools/JavaFileObject;

    move-result-object v4

    invoke-interface {v4}, Ljavax/tools/JavaFileObject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1189
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "; message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1180
    return-object v0
.end method


# virtual methods
.method protected addOptions(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1929
    .local p1, "moreopts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p0}, Lorg/checkerframework/framework/source/SourceChecker;->getOptions()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1930
    .local v0, "activeOpts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1931
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/framework/source/SourceChecker;->activeOptions:Ljava/util/Map;

    .line 1932
    return-void
.end method

.method protected abstract createSourceVisitor()Lorg/checkerframework/framework/source/SourceVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/framework/source/SourceVisitor<",
            "**>;"
        }
    .end annotation
.end method

.method protected createSupportedLintOptions()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1898
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/checkerframework/framework/source/SupportedLintOptions;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/source/SupportedLintOptions;

    .line 1900
    .local v0, "sl":Lorg/checkerframework/framework/source/SupportedLintOptions;
    if-nez v0, :cond_0

    .line 1901
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 1904
    :cond_0
    invoke-interface {v0}, Lorg/checkerframework/framework/source/SupportedLintOptions;->value()[Ljava/lang/String;

    move-result-object v1

    .line 1905
    .local v1, "slValue":[Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1907
    move-object v2, v1

    .line 1908
    .local v2, "lintArray":[Ljava/lang/String;
    new-instance v3, Ljava/util/HashSet;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 1909
    .local v3, "lintSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v2, v5

    .line 1910
    .local v6, "s":Ljava/lang/String;
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1909
    .end local v6    # "s":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1912
    :cond_1
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    return-object v4

    .line 1905
    .end local v2    # "lintArray":[Ljava/lang/String;
    .end local v3    # "lintSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method protected expandCFOptions(Ljava/util/List;[Ljava/lang/String;)Ljava/util/Collection;
    .locals 9
    .param p2, "options"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Class<",
            "*>;>;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2083
    .local p1, "clazzPrefixes":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Class<*>;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2085
    .local v0, "res":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    .line 2086
    .local v3, "option":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2087
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 2088
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2089
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2090
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_1

    .line 2085
    .end local v3    # "option":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2092
    :cond_1
    return-object v0
.end method

.method protected formatStackTrace([Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 6
    .param p1, "stackTrace"    # [Ljava/lang/StackTraceElement;

    .line 1195
    const/4 v0, 0x1

    .line 1196
    .local v0, "first":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1197
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v2, p1

    if-nez v2, :cond_0

    .line 1198
    const-string v2, "no stack trace available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1200
    :cond_0
    const-string v2, "Stack trace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1202
    :goto_0
    array-length v2, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    .line 1203
    .local v4, "ste":Ljava/lang/StackTraceElement;
    if-nez v0, :cond_1

    .line 1204
    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1206
    :cond_1
    const/4 v0, 0x0

    .line 1207
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1202
    .end local v4    # "ste":Ljava/lang/StackTraceElement;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1209
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected fullMessageOf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "messageKey"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .line 1217
    move-object v0, p1

    .line 1220
    .local v0, "key":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/framework/source/SourceChecker;->messages:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1221
    iget-object v1, p0, Lorg/checkerframework/framework/source/SourceChecker;->messages:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1224
    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1225
    .local v1, "dot":I
    if-gez v1, :cond_1

    .line 1226
    return-object p2

    .line 1228
    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1229
    .end local v1    # "dot":I
    goto :goto_0
.end method

.method public getAnnotationProvider()Lorg/checkerframework/javacutil/AnnotationProvider;
    .locals 2

    .line 586
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getAnnotationProvider is not implemented for this class."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getBooleanOption(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1968
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/framework/source/SourceChecker;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getBooleanOption(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 1981
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/source/SourceChecker;->getOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1982
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1983
    return p2

    .line 1985
    :cond_0
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1986
    const/4 v1, 0x1

    return v1

    .line 1988
    :cond_1
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1989
    const/4 v1, 0x0

    return v1

    .line 1991
    :cond_2
    new-instance v1, Lorg/checkerframework/javacutil/UserError;

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v2

    .line 1992
    const-string v3, "Value of %s option should be a boolean, but is \"%s\"."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/UserError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getChecker()Lorg/checkerframework/framework/source/SourceChecker;
    .locals 0

    .line 549
    return-object p0
.end method

.method public getContext()Lorg/checkerframework/framework/util/CFContext;
    .locals 0

    .line 544
    return-object p0
.end method

.method public getElementUtils()Ljavax/lang/model/util/Elements;
    .locals 1

    .line 559
    invoke-virtual {p0}, Lorg/checkerframework/framework/source/SourceChecker;->getProcessingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v0

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    return-object v0
.end method

.method public final getLintOption(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1765
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/framework/source/SourceChecker;->getLintOption(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getLintOption(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .line 1786
    invoke-virtual {p0}, Lorg/checkerframework/framework/source/SourceChecker;->getSupportedLintOptions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1790
    iget-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->activeLints:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1791
    iget-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getOptions()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/framework/source/SourceChecker;->createActiveLints(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->activeLints:Ljava/util/Set;

    .line 1794
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->activeLints:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1795
    return p2

    .line 1798
    :cond_1
    move-object v0, p1

    .line 1799
    .local v0, "tofind":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_4

    .line 1800
    iget-object v1, p0, Lorg/checkerframework/framework/source/SourceChecker;->activeLints:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1801
    const/4 v1, 0x1

    return v1

    .line 1802
    :cond_2
    iget-object v1, p0, Lorg/checkerframework/framework/source/SourceChecker;->activeLints:Ljava/util/Set;

    const-string v2, "-%s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1803
    const/4 v1, 0x0

    return v1

    .line 1806
    :cond_3
    invoke-direct {p0, v0}, Lorg/checkerframework/framework/source/SourceChecker;->parentOfOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1809
    :cond_4
    return p2

    .line 1787
    .end local v0    # "tofind":Ljava/lang/String;
    :cond_5
    new-instance v0, Lorg/checkerframework/javacutil/UserError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal lint option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/UserError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMessages()Ljava/util/Properties;
    .locals 5

    .line 601
    iget-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->messages:Ljava/util/Properties;

    if-eqz v0, :cond_0

    .line 602
    return-object v0

    .line 605
    :cond_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->messages:Ljava/util/Properties;

    .line 606
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 608
    .local v0, "checkers":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/lang/Class<*>;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 609
    .local v1, "currClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v2, Lorg/checkerframework/framework/source/SourceChecker;

    if-eq v1, v2, :cond_1

    .line 610
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 611
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 613
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 615
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 616
    iget-object v2, p0, Lorg/checkerframework/framework/source/SourceChecker;->messages:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    const-string v4, "messages.properties"

    invoke-virtual {p0, v3, v4}, Lorg/checkerframework/framework/source/SourceChecker;->getProperties(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    goto :goto_1

    .line 618
    :cond_2
    iget-object v2, p0, Lorg/checkerframework/framework/source/SourceChecker;->messages:Ljava/util/Properties;

    return-object v2
.end method

.method public final getOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1956
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/framework/source/SourceChecker;->getOption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 2021
    invoke-virtual {p0}, Lorg/checkerframework/framework/source/SourceChecker;->getSupportedOptions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2025
    iget-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->activeOptions:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2026
    iget-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getOptions()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/framework/source/SourceChecker;->createActiveOptions(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->activeOptions:Ljava/util/Map;

    .line 2029
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->activeOptions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2030
    return-object p2

    .line 2033
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->activeOptions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2034
    iget-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->activeOptions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2036
    :cond_2
    return-object p2

    .line 2022
    :cond_3
    new-instance v0, Lorg/checkerframework/javacutil/UserError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/UserError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOptionConfiguration()Lorg/checkerframework/framework/util/OptionConfiguration;
    .locals 0

    .line 554
    return-object p0
.end method

.method public getOptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2003
    iget-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->activeOptions:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2004
    iget-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getOptions()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/framework/source/SourceChecker;->createActiveOptions(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->activeOptions:Ljava/util/Map;

    .line 2006
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->activeOptions:Ljava/util/Map;

    return-object v0
.end method

.method public getProcessingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;
    .locals 1

    .line 503
    iget-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    return-object v0
.end method

.method protected getProperties(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Properties;
    .locals 5
    .param p2, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Properties;"
        }
    .end annotation

    .line 2270
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 2272
    .local v0, "prop":Ljava/util/Properties;
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 2274
    .local v1, "base":Ljava/io/InputStream;
    if-nez v1, :cond_0

    .line 2276
    return-object v0

    .line 2279
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2284
    .end local v1    # "base":Ljava/io/InputStream;
    goto :goto_0

    .line 2280
    :catch_0
    move-exception v1

    .line 2281
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t parse properties file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3, v4}, Lorg/checkerframework/framework/source/SourceChecker;->message(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2285
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-object v0
.end method

.method protected final getStandardSuppressWarningsKeys()Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2140
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 2141
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "all"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2143
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/checkerframework/framework/source/SuppressWarningsKeys;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/source/SuppressWarningsKeys;

    .line 2144
    .local v1, "annotation":Lorg/checkerframework/framework/source/SuppressWarningsKeys;
    if-eqz v1, :cond_0

    .line 2146
    invoke-interface {v1}, Lorg/checkerframework/framework/source/SuppressWarningsKeys;->value()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 2147
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2146
    .end local v5    # "key":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2152
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/framework/source/SourceChecker;->getDefaultWarningSuppressionKey()Ljava/lang/String;

    move-result-object v2

    .line 2153
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2156
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public final getSupportedAnnotationTypes()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2113
    nop

    .line 2114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljavax/annotation/processing/SupportedAnnotationTypes;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ljavax/annotation/processing/SupportedAnnotationTypes;

    .line 2115
    .local v0, "supported":Ljavax/annotation/processing/SupportedAnnotationTypes;
    if-nez v0, :cond_0

    .line 2120
    const-string v1, "*"

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 2116
    :cond_0
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    const-string v2, "@SupportedAnnotationTypes should not be written on any checker; supported annotation types are inherited from SourceChecker."

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSupportedLintOptions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1890
    iget-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->supportedLints:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1891
    invoke-virtual {p0}, Lorg/checkerframework/framework/source/SourceChecker;->createSupportedLintOptions()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->supportedLints:Ljava/util/Set;

    .line 1893
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->supportedLints:Ljava/util/Set;

    return-object v0
.end method

.method public getSupportedOptions()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2046
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2051
    .local v0, "options":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-super {p0}, Lorg/checkerframework/javacutil/AbstractTypeProcessor;->getSupportedOptions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2056
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2057
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2060
    .local v2, "clazzPrefixes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2062
    const-class v3, Lorg/checkerframework/framework/source/SupportedOptions;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/source/SupportedOptions;

    .line 2063
    .local v3, "so":Lorg/checkerframework/framework/source/SupportedOptions;
    if-eqz v3, :cond_1

    .line 2064
    invoke-interface {v3}, Lorg/checkerframework/framework/source/SupportedOptions;->value()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lorg/checkerframework/framework/source/SourceChecker;->expandCFOptions(Ljava/util/List;[Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2066
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 2067
    .end local v3    # "so":Lorg/checkerframework/framework/source/SupportedOptions;
    if-eqz v1, :cond_2

    .line 2068
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lorg/checkerframework/javacutil/AbstractTypeProcessor;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2070
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    return-object v3
.end method

.method public final getSupportedSourceVersion()Ljavax/lang/model/SourceVersion;
    .locals 1

    .line 2290
    invoke-static {}, Ljavax/lang/model/SourceVersion;->latest()Ljavax/lang/model/SourceVersion;

    move-result-object v0

    return-object v0
.end method

.method public getSuppressWarningsKeys()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2129
    invoke-virtual {p0}, Lorg/checkerframework/framework/source/SourceChecker;->getStandardSuppressWarningsKeys()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getTreeUtils()Lcom/sun/source/util/Trees;
    .locals 1

    .line 569
    invoke-virtual {p0}, Lorg/checkerframework/framework/source/SourceChecker;->getProcessingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/source/util/Trees;->instance(Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/sun/source/util/Trees;

    move-result-object v0

    return-object v0
.end method

.method public getTypeUtils()Ljavax/lang/model/util/Types;
    .locals 1

    .line 564
    invoke-virtual {p0}, Lorg/checkerframework/framework/source/SourceChecker;->getProcessingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v0

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v0

    return-object v0
.end method

.method public getUpstreamCheckerNames()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->upstreamCheckerNames:Ljava/util/List;

    if-nez v0, :cond_0

    .line 529
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->upstreamCheckerNames:Ljava/util/List;

    .line 531
    move-object v0, p0

    .line 533
    .local v0, "checker":Lorg/checkerframework/framework/source/SourceChecker;
    :goto_0
    if-eqz v0, :cond_0

    .line 534
    iget-object v1, p0, Lorg/checkerframework/framework/source/SourceChecker;->upstreamCheckerNames:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    iget-object v0, v0, Lorg/checkerframework/framework/source/SourceChecker;->parentChecker:Lorg/checkerframework/framework/source/SourceChecker;

    goto :goto_0

    .line 539
    .end local v0    # "checker":Lorg/checkerframework/framework/source/SourceChecker;
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->upstreamCheckerNames:Ljava/util/List;

    return-object v0
.end method

.method public getVisitor()Lorg/checkerframework/framework/source/SourceVisitor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/framework/source/SourceVisitor<",
            "**>;"
        }
    .end annotation

    .line 574
    iget-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->visitor:Lorg/checkerframework/framework/source/SourceVisitor;

    return-object v0
.end method

.method public final hasOption(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1945
    invoke-virtual {p0}, Lorg/checkerframework/framework/source/SourceChecker;->getOptions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized init(Ljavax/annotation/processing/ProcessingEnvironment;)V
    .locals 6
    .param p1, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;

    monitor-enter p0

    .line 471
    :try_start_0
    invoke-super {p0, p1}, Lorg/checkerframework/javacutil/AbstractTypeProcessor;->init(Ljavax/annotation/processing/ProcessingEnvironment;)V

    .line 474
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/source/SourceChecker;->setProcessingEnvironment(Ljavax/annotation/processing/ProcessingEnvironment;)V

    .line 478
    invoke-static {}, Lorg/checkerframework/javacutil/PluginUtil;->getJreVersion()I

    move-result v0

    .line 479
    .local v0, "jreVersion":I
    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_3

    .line 483
    const/16 v4, 0xc

    if-gt v0, v4, :cond_2

    .line 488
    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    .line 489
    sget-object v1, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    const-string v4, "The Checker Framework is only tested with JDK 8 and JDK 11. You are using version %d. Please use JDK 8 or JDK 11."

    new-array v3, v3, [Ljava/lang/Object;

    .line 492
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    .line 489
    invoke-virtual {p0, v1, v4, v3}, Lorg/checkerframework/framework/source/SourceChecker;->message(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    .end local p0    # "this":Lorg/checkerframework/framework/source/SourceChecker;
    :cond_0
    const-string v1, "printGitProperties"

    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/source/SourceChecker;->hasOption(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 496
    invoke-virtual {p0}, Lorg/checkerframework/framework/source/SourceChecker;->printGitProperties()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    :cond_1
    monitor-exit p0

    return-void

    .line 484
    :cond_2
    :try_start_1
    new-instance v1, Lorg/checkerframework/javacutil/UserError;

    const-string v4, "The Checker Framework cannot be run with JDK 13+.  You are using version %d. Please use JDK 8 or JDK 11."

    new-array v3, v3, [Ljava/lang/Object;

    .line 487
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    .line 485
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/UserError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 480
    :cond_3
    new-instance v1, Lorg/checkerframework/javacutil/UserError;

    const-string v4, "The Checker Framework must be run under at least JDK 8.  You are using version %d.  Please use JDK 8 or JDK 11."

    new-array v3, v3, [Ljava/lang/Object;

    .line 482
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-direct {v1, v4, v3}, Lorg/checkerframework/javacutil/UserError;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 470
    .end local v0    # "jreVersion":I
    .end local p1    # "env":Ljavax/annotation/processing/ProcessingEnvironment;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public initChecker()V
    .locals 2

    .line 923
    iget-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-static {v0}, Lcom/sun/source/util/Trees;->instance(Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/sun/source/util/Trees;

    move-result-object v0

    .line 924
    .local v0, "trees":Lcom/sun/source/util/Trees;
    if-eqz v0, :cond_0

    .line 925
    iput-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->trees:Lcom/sun/source/util/Trees;

    .line 927
    iget-object v1, p0, Lorg/checkerframework/framework/source/SourceChecker;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v1}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/framework/source/SourceChecker;->messager:Ljavax/annotation/processing/Messager;

    .line 928
    invoke-virtual {p0}, Lorg/checkerframework/framework/source/SourceChecker;->getMessages()Ljava/util/Properties;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/framework/source/SourceChecker;->messages:Ljava/util/Properties;

    .line 930
    invoke-virtual {p0}, Lorg/checkerframework/framework/source/SourceChecker;->createSourceVisitor()Lorg/checkerframework/framework/source/SourceVisitor;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/framework/source/SourceChecker;->visitor:Lorg/checkerframework/framework/source/SourceVisitor;

    .line 931
    return-void

    .line 924
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public varargs message(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "kind"    # Ljavax/tools/Diagnostic$Kind;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 1406
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1407
    .local v0, "ftdmsg":Ljava/lang/String;
    iget-object v1, p0, Lorg/checkerframework/framework/source/SourceChecker;->messager:Ljavax/annotation/processing/Messager;

    if-eqz v1, :cond_0

    .line 1408
    invoke-interface {v1, p1, v0}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1410
    :cond_0
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1412
    :goto_0
    return-void
.end method

.method printGitProperties()V
    .locals 4

    .line 2295
    sget-boolean v0, Lorg/checkerframework/framework/source/SourceChecker;->gitPropertiesPrinted:Z

    if-eqz v0, :cond_0

    .line 2296
    return-void

    .line 2298
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/checkerframework/framework/source/SourceChecker;->gitPropertiesPrinted:Z

    .line 2300
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "/git.properties"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2301
    .local v0, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2300
    .local v1, "reader":Ljava/io/BufferedReader;
    nop

    .line 2303
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 2304
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2306
    .end local v3    # "line":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    :try_start_3
    invoke-static {v2, v1}, Lorg/checkerframework/framework/source/SourceChecker;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v1    # "reader":Ljava/io/BufferedReader;
    if-eqz v0, :cond_2

    :try_start_4
    invoke-static {v2, v0}, Lorg/checkerframework/framework/source/SourceChecker;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2308
    .end local v0    # "in":Ljava/io/InputStream;
    :cond_2
    goto :goto_1

    .line 2300
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v2

    .end local v0    # "in":Ljava/io/InputStream;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2306
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v3

    :try_start_6
    invoke-static {v2, v1}, Lorg/checkerframework/framework/source/SourceChecker;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v0    # "in":Ljava/io/InputStream;
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2300
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "in":Ljava/io/InputStream;
    :catchall_2
    move-exception v1

    .end local v0    # "in":Ljava/io/InputStream;
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 2306
    .restart local v0    # "in":Ljava/io/InputStream;
    :catchall_3
    move-exception v2

    if-eqz v0, :cond_3

    :try_start_8
    invoke-static {v1, v0}, Lorg/checkerframework/framework/source/SourceChecker;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_3
    throw v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .end local v0    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 2307
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException while reading git.properties: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2309
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method protected printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/CompilationUnitTree;)V
    .locals 1
    .param p1, "kind"    # Ljavax/tools/Diagnostic$Kind;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "source"    # Lcom/sun/source/tree/Tree;
    .param p4, "root"    # Lcom/sun/source/tree/CompilationUnitTree;

    .line 1380
    iget-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-static {v0}, Lcom/sun/source/util/Trees;->instance(Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/sun/source/util/Trees;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sun/source/util/Trees;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/CompilationUnitTree;)V

    .line 1381
    return-void
.end method

.method protected printStats()V
    .locals 6

    .line 956
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getMemoryPoolMXBeans()Ljava/util/List;

    move-result-object v0

    .line 957
    .local v0, "memoryPools":Ljava/util/List;, "Ljava/util/List<Ljava/lang/management/MemoryPoolMXBean;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/management/MemoryPoolMXBean;

    .line 958
    .local v2, "memoryPool":Ljava/lang/management/MemoryPoolMXBean;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Memory pool "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/lang/management/MemoryPoolMXBean;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " statistics"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 959
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Pool type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/lang/management/MemoryPoolMXBean;->getType()Ljava/lang/management/MemoryType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 960
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Peak usage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/lang/management/MemoryPoolMXBean;->getPeakUsage()Ljava/lang/management/MemoryUsage;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 961
    .end local v2    # "memoryPool":Ljava/lang/management/MemoryPoolMXBean;
    goto :goto_0

    .line 962
    :cond_0
    return-void
.end method

.method protected processArg(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "arg"    # Ljava/lang/Object;

    .line 1391
    iget-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->messages:Ljava/util/Properties;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V
    .locals 6
    .param p1, "r"    # Lorg/checkerframework/framework/source/Result;
    .param p2, "src"    # Ljava/lang/Object;

    .line 1720
    invoke-virtual {p1}, Lorg/checkerframework/framework/source/Result;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1721
    return-void

    .line 1724
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/source/Result;->getMessageKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1725
    .local v0, "errKey":Ljava/lang/String;
    instance-of v1, p2, Lcom/sun/source/tree/Tree;

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Lcom/sun/source/tree/Tree;

    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/framework/source/SourceChecker;->shouldSuppressWarnings(Lcom/sun/source/tree/Tree;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1726
    return-void

    .line 1728
    :cond_1
    instance-of v1, p2, Ljavax/lang/model/element/Element;

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Ljavax/lang/model/element/Element;

    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/framework/source/SourceChecker;->shouldSuppressWarnings(Ljavax/lang/model/element/Element;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1729
    return-void

    .line 1732
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/framework/source/Result;->getDiagMessages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/source/Result$DiagMessage;

    .line 1733
    .local v2, "msg":Lorg/checkerframework/framework/source/Result$DiagMessage;
    invoke-virtual {p1}, Lorg/checkerframework/framework/source/Result;->isFailure()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1734
    nop

    .line 1735
    const-string v3, "warns"

    invoke-virtual {p0, v3}, Lorg/checkerframework/framework/source/SourceChecker;->hasOption(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1736
    sget-object v3, Ljavax/tools/Diagnostic$Kind;->MANDATORY_WARNING:Ljavax/tools/Diagnostic$Kind;

    goto :goto_1

    .line 1737
    :cond_3
    sget-object v3, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    .line 1739
    :goto_1
    invoke-virtual {v2}, Lorg/checkerframework/framework/source/Result$DiagMessage;->getMessageKey()Ljava/lang/String;

    move-result-object v4

    .line 1740
    invoke-virtual {v2}, Lorg/checkerframework/framework/source/Result$DiagMessage;->getArgs()[Ljava/lang/Object;

    move-result-object v5

    .line 1734
    invoke-direct {p0, v3, p2, v4, v5}, Lorg/checkerframework/framework/source/SourceChecker;->message(Ljavax/tools/Diagnostic$Kind;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 1741
    :cond_4
    invoke-virtual {p1}, Lorg/checkerframework/framework/source/Result;->isWarning()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1742
    sget-object v3, Ljavax/tools/Diagnostic$Kind;->MANDATORY_WARNING:Ljavax/tools/Diagnostic$Kind;

    .line 1743
    invoke-virtual {v2}, Lorg/checkerframework/framework/source/Result$DiagMessage;->getMessageKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/checkerframework/framework/source/Result$DiagMessage;->getArgs()[Ljava/lang/Object;

    move-result-object v5

    .line 1742
    invoke-direct {p0, v3, p2, v4, v5}, Lorg/checkerframework/framework/source/SourceChecker;->message(Ljavax/tools/Diagnostic$Kind;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 1745
    :cond_5
    sget-object v3, Ljavax/tools/Diagnostic$Kind;->NOTE:Ljavax/tools/Diagnostic$Kind;

    invoke-virtual {v2}, Lorg/checkerframework/framework/source/Result$DiagMessage;->getMessageKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/checkerframework/framework/source/Result$DiagMessage;->getArgs()[Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v3, p2, v4, v5}, Lorg/checkerframework/framework/source/SourceChecker;->message(Ljavax/tools/Diagnostic$Kind;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1747
    .end local v2    # "msg":Lorg/checkerframework/framework/source/Result$DiagMessage;
    :goto_2
    goto :goto_0

    .line 1748
    :cond_6
    return-void
.end method

.method protected final setLintOption(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Z

    .line 1828
    invoke-virtual {p0}, Lorg/checkerframework/framework/source/SourceChecker;->getSupportedLintOptions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1852
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1853
    .local v0, "newlints":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/checkerframework/framework/source/SourceChecker;->activeLints:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1854
    if-eqz p2, :cond_0

    .line 1855
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1857
    :cond_0
    const-string v1, "-%s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1859
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/framework/source/SourceChecker;->activeLints:Ljava/util/Set;

    .line 1860
    return-void

    .line 1829
    .end local v0    # "newlints":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    new-instance v0, Lorg/checkerframework/javacutil/UserError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal lint option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/UserError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setParentChecker(Lorg/checkerframework/framework/source/SourceChecker;)V
    .locals 0
    .param p1, "parentChecker"    # Lorg/checkerframework/framework/source/SourceChecker;

    .line 514
    iput-object p1, p0, Lorg/checkerframework/framework/source/SourceChecker;->parentChecker:Lorg/checkerframework/framework/source/SourceChecker;

    .line 515
    return-void
.end method

.method protected setProcessingEnvironment(Ljavax/annotation/processing/ProcessingEnvironment;)V
    .locals 0
    .param p1, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 509
    iput-object p1, p0, Lorg/checkerframework/framework/source/SourceChecker;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 510
    return-void
.end method

.method protected setRoot(Lcom/sun/source/tree/CompilationUnitTree;)V
    .locals 1
    .param p1, "newRoot"    # Lcom/sun/source/tree/CompilationUnitTree;

    .line 519
    iput-object p1, p0, Lorg/checkerframework/framework/source/SourceChecker;->currentRoot:Lcom/sun/source/tree/CompilationUnitTree;

    .line 520
    iget-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->visitor:Lorg/checkerframework/framework/source/SourceVisitor;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/source/SourceVisitor;->setRoot(Lcom/sun/source/tree/CompilationUnitTree;)V

    .line 521
    return-void
.end method

.method protected setSupportedLintOptions(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1921
    .local p1, "newlints":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/checkerframework/framework/source/SourceChecker;->supportedLints:Ljava/util/Set;

    .line 1922
    return-void
.end method

.method protected shouldAddShutdownHook()Z
    .locals 1

    .line 938
    const-string v0, "resourceStats"

    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/source/SourceChecker;->hasOption(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final shouldSkipDefs(Lcom/sun/source/tree/ClassTree;)Z
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/ClassTree;

    .line 2229
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2237
    .local v0, "qualifiedName":Ljava/lang/String;
    iget-object v1, p0, Lorg/checkerframework/framework/source/SourceChecker;->skipDefsPattern:Ljava/util/regex/Pattern;

    if-nez v1, :cond_0

    .line 2238
    invoke-virtual {p0}, Lorg/checkerframework/framework/source/SourceChecker;->getOptions()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/checkerframework/framework/source/SourceChecker;->getSkipDefsPattern(Ljava/util/Map;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/framework/source/SourceChecker;->skipDefsPattern:Ljava/util/regex/Pattern;

    .line 2240
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/framework/source/SourceChecker;->onlyDefsPattern:Ljava/util/regex/Pattern;

    if-nez v1, :cond_1

    .line 2241
    invoke-virtual {p0}, Lorg/checkerframework/framework/source/SourceChecker;->getOptions()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/checkerframework/framework/source/SourceChecker;->getOnlyDefsPattern(Ljava/util/Map;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/framework/source/SourceChecker;->onlyDefsPattern:Ljava/util/regex/Pattern;

    .line 2244
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/framework/source/SourceChecker;->skipDefsPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/checkerframework/framework/source/SourceChecker;->onlyDefsPattern:Ljava/util/regex/Pattern;

    .line 2245
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    .line 2244
    :goto_1
    return v1
.end method

.method public final shouldSkipDefs(Lcom/sun/source/tree/ClassTree;Lcom/sun/source/tree/MethodTree;)Z
    .locals 1
    .param p1, "cls"    # Lcom/sun/source/tree/ClassTree;
    .param p2, "meth"    # Lcom/sun/source/tree/MethodTree;

    .line 2259
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/source/SourceChecker;->shouldSkipDefs(Lcom/sun/source/tree/ClassTree;)Z

    move-result v0

    return v0
.end method

.method public shouldSkipUses(Ljava/lang/String;)Z
    .locals 1
    .param p1, "typeName"    # Ljava/lang/String;

    .line 2211
    iget-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->skipUsesPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    .line 2212
    invoke-virtual {p0}, Lorg/checkerframework/framework/source/SourceChecker;->getOptions()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/framework/source/SourceChecker;->getSkipUsesPattern(Ljava/util/Map;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->skipUsesPattern:Ljava/util/regex/Pattern;

    .line 2214
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->onlyUsesPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_1

    .line 2215
    invoke-virtual {p0}, Lorg/checkerframework/framework/source/SourceChecker;->getOptions()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/framework/source/SourceChecker;->getOnlyUsesPattern(Ljava/util/Map;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->onlyUsesPattern:Ljava/util/regex/Pattern;

    .line 2217
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->skipUsesPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->onlyUsesPattern:Ljava/util/regex/Pattern;

    .line 2218
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 2217
    :goto_1
    return v0
.end method

.method public final shouldSkipUses(Ljavax/lang/model/element/Element;)Z
    .locals 3
    .param p1, "element"    # Ljavax/lang/model/element/Element;

    .line 2178
    if-nez p1, :cond_0

    .line 2179
    const/4 v0, 0x0

    return v0

    .line 2181
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/javacutil/ElementUtils;->enclosingClass(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 2182
    .local v0, "typeElement":Ljavax/lang/model/element/TypeElement;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2183
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/source/SourceChecker;->shouldSkipUses(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public shouldSuppressWarnings(Lcom/sun/source/tree/Tree;Ljava/lang/String;)Z
    .locals 9
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "errKey"    # Ljava/lang/String;

    .line 1550
    invoke-virtual {p0}, Lorg/checkerframework/framework/source/SourceChecker;->getSuppressWarningsKeys()Ljava/util/Collection;

    move-result-object v0

    .line 1551
    .local v0, "checkerKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1552
    return v2

    .line 1558
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/framework/source/SourceChecker;->trees:Lcom/sun/source/util/Trees;

    iget-object v3, p0, Lorg/checkerframework/framework/source/SourceChecker;->currentRoot:Lcom/sun/source/tree/CompilationUnitTree;

    invoke-virtual {v1, v3, p1}, Lcom/sun/source/util/Trees;->getPath(Lcom/sun/source/tree/CompilationUnitTree;Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v1

    .line 1559
    .local v1, "path":Lcom/sun/source/util/TreePath;
    if-nez v1, :cond_1

    .line 1560
    return v2

    .line 1563
    :cond_1
    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingVariable(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/VariableTree;

    move-result-object v3

    .line 1564
    .local v3, "var":Lcom/sun/source/tree/VariableTree;
    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-static {v3}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v5

    invoke-virtual {p0, v5, p2}, Lorg/checkerframework/framework/source/SourceChecker;->shouldSuppressWarnings(Ljavax/lang/model/element/Element;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1565
    return v4

    .line 1568
    :cond_2
    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingMethod(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/MethodTree;

    move-result-object v5

    .line 1569
    .local v5, "method":Lcom/sun/source/tree/MethodTree;
    if-eqz v5, :cond_4

    .line 1570
    invoke-static {v5}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v6

    .line 1572
    .local v6, "elt":Ljavax/lang/model/element/Element;
    invoke-virtual {p0, v6, p2}, Lorg/checkerframework/framework/source/SourceChecker;->shouldSuppressWarnings(Ljavax/lang/model/element/Element;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1573
    return v4

    .line 1576
    :cond_3
    invoke-direct {p0, v6}, Lorg/checkerframework/framework/source/SourceChecker;->isAnnotatedForThisCheckerOrUpstreamChecker(Ljavax/lang/model/element/Element;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1580
    return v2

    .line 1584
    .end local v6    # "elt":Ljavax/lang/model/element/Element;
    :cond_4
    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingClass(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/ClassTree;

    move-result-object v6

    .line 1585
    .local v6, "cls":Lcom/sun/source/tree/ClassTree;
    if-eqz v6, :cond_6

    .line 1586
    invoke-static {v6}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v7

    .line 1588
    .local v7, "elt":Ljavax/lang/model/element/Element;
    invoke-virtual {p0, v7, p2}, Lorg/checkerframework/framework/source/SourceChecker;->shouldSuppressWarnings(Ljavax/lang/model/element/Element;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1589
    return v4

    .line 1592
    :cond_5
    invoke-direct {p0, v7}, Lorg/checkerframework/framework/source/SourceChecker;->isAnnotatedForThisCheckerOrUpstreamChecker(Ljavax/lang/model/element/Element;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1596
    return v2

    .line 1600
    .end local v7    # "elt":Ljavax/lang/model/element/Element;
    :cond_6
    const-string v7, "source"

    invoke-virtual {p0, v7}, Lorg/checkerframework/framework/source/SourceChecker;->useUncheckedCodeDefault(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1603
    return v4

    .line 1606
    :cond_7
    return v2
.end method

.method public shouldSuppressWarnings(Ljavax/lang/model/element/Element;Ljava/lang/String;)Z
    .locals 2
    .param p1, "elt"    # Ljavax/lang/model/element/Element;
    .param p2, "errKey"    # Ljava/lang/String;

    .line 1658
    const-string v0, "unneeded.suppression"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1665
    return v1

    .line 1668
    :cond_0
    if-nez p1, :cond_1

    .line 1669
    return v1

    .line 1672
    :cond_1
    const-class v0, Ljava/lang/SuppressWarnings;

    invoke-interface {p1, v0}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ljava/lang/SuppressWarnings;

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/framework/source/SourceChecker;->checkSuppressWarnings(Ljava/lang/SuppressWarnings;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1673
    const-string v0, "warnUnneededSuppressions"

    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/source/SourceChecker;->hasOption(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1674
    iget-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->elementsWithSuppressedWarnings:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1676
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 1679
    :cond_3
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/source/SourceChecker;->isAnnotatedForThisCheckerOrUpstreamChecker(Ljavax/lang/model/element/Element;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1682
    return v1

    .line 1685
    :cond_4
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/framework/source/SourceChecker;->shouldSuppressWarnings(Ljavax/lang/model/element/Element;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected shutdownHook()V
    .locals 1

    .line 946
    const-string v0, "resourceStats"

    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/source/SourceChecker;->hasOption(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 950
    invoke-virtual {p0}, Lorg/checkerframework/framework/source/SourceChecker;->printStats()V

    .line 952
    :cond_0
    return-void
.end method

.method public treeToFilePositionString(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/CompilationUnitTree;Ljavax/annotation/processing/ProcessingEnvironment;)Ljava/lang/String;
    .locals 7
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "currentRoot"    # Lcom/sun/source/tree/CompilationUnitTree;
    .param p3, "processingEnv"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 1427
    if-nez p1, :cond_0

    .line 1428
    const/4 v0, 0x0

    return-object v0

    .line 1431
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->trees:Lcom/sun/source/util/Trees;

    invoke-virtual {v0}, Lcom/sun/source/util/Trees;->getSourcePositions()Lcom/sun/source/util/SourcePositions;

    move-result-object v0

    .line 1432
    .local v0, "sourcePositions":Lcom/sun/source/util/SourcePositions;
    invoke-interface {v0, p2, p1}, Lcom/sun/source/util/SourcePositions;->getStartPosition(Lcom/sun/source/tree/CompilationUnitTree;Lcom/sun/source/tree/Tree;)J

    move-result-wide v1

    .line 1433
    .local v1, "start":J
    invoke-interface {v0, p2, p1}, Lcom/sun/source/util/SourcePositions;->getEndPosition(Lcom/sun/source/tree/CompilationUnitTree;Lcom/sun/source/tree/Tree;)J

    move-result-wide v3

    .line 1435
    .local v3, "end":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " )"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public typeProcess(Ljavax/lang/model/element/TypeElement;Lcom/sun/source/util/TreePath;)V
    .locals 6
    .param p1, "e"    # Ljavax/lang/model/element/TypeElement;
    .param p2, "p"    # Lcom/sun/source/util/TreePath;

    .line 983
    if-nez p1, :cond_0

    .line 984
    iget-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->messager:Ljavax/annotation/processing/Messager;

    sget-object v1, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    const-string v2, "Refusing to process empty TypeElement"

    invoke-interface {v0, v1, v2}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    .line 986
    return-void

    .line 988
    :cond_0
    if-nez p2, :cond_1

    .line 989
    iget-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->messager:Ljavax/annotation/processing/Messager;

    sget-object v1, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Refusing to process empty TreePath in TypeElement: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    .line 992
    return-void

    .line 995
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    check-cast v0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-virtual {v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->getContext()Lcom/sun/tools/javac/util/Context;

    move-result-object v0

    .line 996
    .local v0, "context":Lcom/sun/tools/javac/util/Context;
    invoke-static {v0}, Lcom/sun/tools/javac/code/Source;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Source;

    move-result-object v1

    .line 999
    .local v1, "source":Lcom/sun/tools/javac/code/Source;
    iget-boolean v2, p0, Lorg/checkerframework/framework/source/SourceChecker;->warnedAboutSourceLevel:Z

    if-nez v2, :cond_2

    const-string v2, "8"

    invoke-static {v2}, Lcom/sun/tools/javac/code/Source;->lookup(Ljava/lang/String;)Lcom/sun/tools/javac/code/Source;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Source;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gez v2, :cond_2

    .line 1000
    iget-object v2, p0, Lorg/checkerframework/framework/source/SourceChecker;->messager:Ljavax/annotation/processing/Messager;

    sget-object v3, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-source "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/sun/tools/javac/code/Source;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not support type annotations"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    .line 1003
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/checkerframework/framework/source/SourceChecker;->warnedAboutSourceLevel:Z

    .line 1006
    :cond_2
    invoke-static {v0}, Lcom/sun/tools/javac/util/Log;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Log;

    move-result-object v2

    .line 1007
    .local v2, "log":Lcom/sun/tools/javac/util/Log;
    iget v3, v2, Lcom/sun/tools/javac/util/Log;->nerrors:I

    iget v4, p0, Lorg/checkerframework/framework/source/SourceChecker;->errsOnLastExit:I

    if-le v3, v4, :cond_3

    .line 1008
    iget v3, v2, Lcom/sun/tools/javac/util/Log;->nerrors:I

    iput v3, p0, Lorg/checkerframework/framework/source/SourceChecker;->errsOnLastExit:I

    .line 1009
    invoke-virtual {p2}, Lcom/sun/source/util/TreePath;->getCompilationUnit()Lcom/sun/source/tree/CompilationUnitTree;

    move-result-object v3

    iput-object v3, p0, Lorg/checkerframework/framework/source/SourceChecker;->previousErrorCompilationUnit:Lcom/sun/source/tree/CompilationUnitTree;

    .line 1010
    return-void

    .line 1012
    :cond_3
    invoke-virtual {p2}, Lcom/sun/source/util/TreePath;->getCompilationUnit()Lcom/sun/source/tree/CompilationUnitTree;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/framework/source/SourceChecker;->previousErrorCompilationUnit:Lcom/sun/source/tree/CompilationUnitTree;

    if-ne v3, v4, :cond_4

    .line 1017
    return-void

    .line 1019
    :cond_4
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/checkerframework/framework/source/SourceChecker;->previousErrorCompilationUnit:Lcom/sun/source/tree/CompilationUnitTree;

    .line 1021
    iget-object v3, p0, Lorg/checkerframework/framework/source/SourceChecker;->visitor:Lorg/checkerframework/framework/source/SourceVisitor;

    if-nez v3, :cond_5

    .line 1026
    return-void

    .line 1028
    :cond_5
    invoke-virtual {p2}, Lcom/sun/source/util/TreePath;->getCompilationUnit()Lcom/sun/source/tree/CompilationUnitTree;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/framework/source/SourceChecker;->currentRoot:Lcom/sun/source/tree/CompilationUnitTree;

    if-eq v3, v4, :cond_6

    .line 1029
    invoke-virtual {p2}, Lcom/sun/source/util/TreePath;->getCompilationUnit()Lcom/sun/source/tree/CompilationUnitTree;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/checkerframework/framework/source/SourceChecker;->setRoot(Lcom/sun/source/tree/CompilationUnitTree;)V

    .line 1030
    const-string v3, "filenames"

    invoke-virtual {p0, v3}, Lorg/checkerframework/framework/source/SourceChecker;->hasOption(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1032
    sget-object v3, Ljavax/tools/Diagnostic$Kind;->NOTE:Ljavax/tools/Diagnostic$Kind;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4, v5}, Lorg/checkerframework/framework/source/SourceChecker;->message(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1033
    sget-object v3, Ljavax/tools/Diagnostic$Kind;->NOTE:Ljavax/tools/Diagnostic$Kind;

    .line 1036
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/checkerframework/framework/source/SourceChecker;->currentRoot:Lcom/sun/source/tree/CompilationUnitTree;

    .line 1037
    invoke-interface {v5}, Lcom/sun/source/tree/CompilationUnitTree;->getSourceFile()Ljavax/tools/JavaFileObject;

    move-result-object v5

    invoke-interface {v5}, Ljavax/tools/JavaFileObject;->getName()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 1033
    const-string v5, "%s is type-checking %s"

    invoke-virtual {p0, v3, v5, v4}, Lorg/checkerframework/framework/source/SourceChecker;->message(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1043
    :cond_6
    :try_start_0
    iget-object v3, p0, Lorg/checkerframework/framework/source/SourceChecker;->visitor:Lorg/checkerframework/framework/source/SourceVisitor;

    invoke-virtual {v3, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visit(Lcom/sun/source/util/TreePath;)V

    .line 1044
    invoke-virtual {p0}, Lorg/checkerframework/framework/source/SourceChecker;->warnUnneededSuppressions()V
    :try_end_0
    .catch Lorg/checkerframework/javacutil/UserError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/checkerframework/javacutil/BugInCF; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1049
    :catchall_0
    move-exception v3

    .line 1050
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string v4, "SourceChecker.typeProcess"

    invoke-direct {p0, v4, v3, p2}, Lorg/checkerframework/framework/source/SourceChecker;->wrapThrowableAsBugInCF(Ljava/lang/String;Ljava/lang/Throwable;Lcom/sun/source/util/TreePath;)Lorg/checkerframework/javacutil/BugInCF;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/checkerframework/framework/source/SourceChecker;->logBugInCF(Lorg/checkerframework/javacutil/BugInCF;)V

    .end local v3    # "t":Ljava/lang/Throwable;
    goto :goto_0

    .line 1047
    :catch_0
    move-exception v3

    .line 1048
    .local v3, "ce":Lorg/checkerframework/javacutil/BugInCF;
    invoke-direct {p0, v3}, Lorg/checkerframework/framework/source/SourceChecker;->logBugInCF(Lorg/checkerframework/javacutil/BugInCF;)V

    .end local v3    # "ce":Lorg/checkerframework/javacutil/BugInCF;
    goto :goto_0

    .line 1045
    :catch_1
    move-exception v3

    .line 1046
    .local v3, "ce":Lorg/checkerframework/javacutil/UserError;
    invoke-direct {p0, v3}, Lorg/checkerframework/framework/source/SourceChecker;->logUserError(Lorg/checkerframework/javacutil/UserError;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1054
    .end local v3    # "ce":Lorg/checkerframework/javacutil/UserError;
    :goto_0
    iget v3, v2, Lcom/sun/tools/javac/util/Log;->nerrors:I

    iput v3, p0, Lorg/checkerframework/framework/source/SourceChecker;->errsOnLastExit:I

    .line 1055
    nop

    .line 1056
    return-void

    .line 1054
    :catchall_1
    move-exception v3

    iget v4, v2, Lcom/sun/tools/javac/util/Log;->nerrors:I

    iput v4, p0, Lorg/checkerframework/framework/source/SourceChecker;->errsOnLastExit:I

    throw v3
.end method

.method public typeProcessingStart()V
    .locals 4

    .line 885
    :try_start_0
    invoke-super {p0}, Lorg/checkerframework/javacutil/AbstractTypeProcessor;->typeProcessingStart()V

    .line 886
    invoke-virtual {p0}, Lorg/checkerframework/framework/source/SourceChecker;->initChecker()V

    .line 887
    iget-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->messager:Ljavax/annotation/processing/Messager;

    if-nez v0, :cond_0

    .line 888
    iget-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/source/SourceChecker;->messager:Ljavax/annotation/processing/Messager;

    .line 889
    sget-object v1, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You have forgotten to call super.initChecker in your subclass of SourceChecker, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 893
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "! Please ensure your checker is properly initialized."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 889
    invoke-interface {v0, v1, v2}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    .line 896
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/framework/source/SourceChecker;->shouldAddShutdownHook()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 897
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/framework/source/SourceChecker$1;

    invoke-direct {v1, p0}, Lorg/checkerframework/framework/source/SourceChecker$1;-><init>(Lorg/checkerframework/framework/source/SourceChecker;)V

    .line 898
    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V
    :try_end_0
    .catch Lorg/checkerframework/javacutil/UserError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/checkerframework/javacutil/BugInCF; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 910
    :catchall_0
    move-exception v0

    .line 911
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "SourceChecker.typeProcessingStart"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lorg/checkerframework/framework/source/SourceChecker;->wrapThrowableAsBugInCF(Ljava/lang/String;Ljava/lang/Throwable;Lcom/sun/source/util/TreePath;)Lorg/checkerframework/javacutil/BugInCF;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/checkerframework/framework/source/SourceChecker;->logBugInCF(Lorg/checkerframework/javacutil/BugInCF;)V

    goto :goto_1

    .line 908
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 909
    .local v0, "ce":Lorg/checkerframework/javacutil/BugInCF;
    invoke-direct {p0, v0}, Lorg/checkerframework/framework/source/SourceChecker;->logBugInCF(Lorg/checkerframework/javacutil/BugInCF;)V

    .end local v0    # "ce":Lorg/checkerframework/javacutil/BugInCF;
    goto :goto_0

    .line 906
    :catch_1
    move-exception v0

    .line 907
    .local v0, "ce":Lorg/checkerframework/javacutil/UserError;
    invoke-direct {p0, v0}, Lorg/checkerframework/framework/source/SourceChecker;->logUserError(Lorg/checkerframework/javacutil/UserError;)V

    .line 912
    .end local v0    # "ce":Lorg/checkerframework/javacutil/UserError;
    :cond_1
    :goto_0
    nop

    .line 913
    :goto_1
    return-void
.end method

.method public useUncheckedCodeDefault(Ljava/lang/String;)Z
    .locals 10
    .param p1, "kindOfCode"    # Ljava/lang/String;

    .line 1616
    const/4 v0, 0x0

    .line 1617
    .local v0, "useUncheckedDefaultsForSource":Z
    const/4 v1, 0x0

    .line 1618
    .local v1, "useUncheckedDefaultsForByteCode":Z
    const-string v2, "useDefaultsForUncheckedCode"

    invoke-virtual {p0, v2}, Lorg/checkerframework/framework/source/SourceChecker;->getOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1620
    .local v2, "option":Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    new-array v4, v3, [Ljava/lang/String;

    .line 1621
    .local v4, "args":[Ljava/lang/String;
    :goto_0
    array-length v5, v4

    move v6, v3

    :goto_1
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    .line 1622
    .local v7, "arg":Ljava/lang/String;
    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_1

    move v8, v9

    goto :goto_2

    :cond_1
    move v8, v3

    .line 1623
    .local v8, "value":Z
    :goto_2
    if-eqz v8, :cond_2

    move-object v9, v7

    goto :goto_3

    :cond_2
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    :goto_3
    move-object v7, v9

    .line 1624
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1625
    return v8

    .line 1621
    .end local v7    # "arg":Ljava/lang/String;
    .end local v8    # "value":Z
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1628
    :cond_4
    const-string v5, "source"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1629
    return v3

    .line 1630
    :cond_5
    const-string v5, "bytecode"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1631
    return v3

    .line 1633
    :cond_6
    new-instance v3, Lorg/checkerframework/javacutil/UserError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SourceChecker: unexpected argument to useUncheckedCodeDefault: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/checkerframework/javacutil/UserError;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected warnUnneedSuppressions(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Element;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1087
    .local p1, "elementsSuppress":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/Element;>;"
    .local p2, "checkerKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "errorKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "all"

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1090
    const-string v3, "requirePrefixInWarningSuppressions"

    invoke-virtual {v0, v3}, Lorg/checkerframework/framework/source/SourceChecker;->hasOption(Ljava/lang/String;)Z

    move-result v3

    .line 1092
    .local v3, "requirePrefix":Z
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/framework/source/SourceChecker;->getVisitor()Lorg/checkerframework/framework/source/SourceVisitor;

    move-result-object v4

    iget-object v4, v4, Lorg/checkerframework/framework/source/SourceVisitor;->treesWithSuppressWarnings:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/Tree;

    .line 1093
    .local v5, "tree":Lcom/sun/source/tree/Tree;
    invoke-static {v5}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v6

    .line 1096
    .local v6, "elt":Ljavax/lang/model/element/Element;
    move-object/from16 v7, p1

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1097
    goto :goto_0

    .line 1099
    :cond_0
    const-class v8, Ljava/lang/SuppressWarnings;

    invoke-interface {v6, v8}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Ljava/lang/SuppressWarnings;

    .line 1101
    .local v8, "suppressAnno":Ljava/lang/SuppressWarnings;
    invoke-interface {v8}, Ljava/lang/SuppressWarnings;->value()[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v10, :cond_7

    aget-object v13, v9, v12

    .line 1102
    .local v13, "userKey":Ljava/lang/String;
    move-object v14, v13

    .line 1103
    .local v14, "fullUserKey":Ljava/lang/String;
    const-string v15, ":"

    invoke-virtual {v13, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 1104
    .local v15, "colonPos":I
    const/4 v11, -0x1

    if-ne v15, v11, :cond_3

    .line 1106
    invoke-interface {v1, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1107
    invoke-direct {v0, v5, v13}, Lorg/checkerframework/framework/source/SourceChecker;->reportUnneededSuppression(Lcom/sun/source/tree/Tree;Ljava/lang/String;)V

    .line 1109
    :cond_1
    if-eqz v3, :cond_2

    .line 1111
    move/from16 v16, v3

    goto :goto_4

    .line 1109
    :cond_2
    move/from16 v16, v3

    goto :goto_2

    .line 1115
    :cond_3
    move/from16 v16, v3

    const/4 v11, 0x0

    .end local v3    # "requirePrefix":Z
    .local v16, "requirePrefix":Z
    invoke-virtual {v13, v11, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1116
    .local v3, "userCheckerKey":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 1117
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 1119
    goto :goto_4

    .line 1121
    :cond_4
    add-int/lit8 v11, v15, 0x1

    invoke-virtual {v13, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 1123
    .end local v3    # "userCheckerKey":Ljava/lang/String;
    :goto_2
    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1127
    .local v11, "errorKey":Ljava/lang/String;
    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1128
    invoke-direct {v0, v5, v14}, Lorg/checkerframework/framework/source/SourceChecker;->reportUnneededSuppression(Lcom/sun/source/tree/Tree;Ljava/lang/String;)V

    .line 1130
    .end local v11    # "errorKey":Ljava/lang/String;
    :cond_5
    goto :goto_3

    .line 1101
    .end local v13    # "userKey":Ljava/lang/String;
    .end local v14    # "fullUserKey":Ljava/lang/String;
    .end local v15    # "colonPos":I
    :cond_6
    :goto_4
    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v16

    goto :goto_1

    .end local v16    # "requirePrefix":Z
    .local v3, "requirePrefix":Z
    :cond_7
    move/from16 v16, v3

    .line 1132
    .end local v3    # "requirePrefix":Z
    .end local v5    # "tree":Lcom/sun/source/tree/Tree;
    .end local v6    # "elt":Ljavax/lang/model/element/Element;
    .end local v8    # "suppressAnno":Ljava/lang/SuppressWarnings;
    .restart local v16    # "requirePrefix":Z
    goto/16 :goto_0

    .line 1133
    .end local v16    # "requirePrefix":Z
    .restart local v3    # "requirePrefix":Z
    :cond_8
    return-void
.end method

.method protected warnUnneededSuppressions()V
    .locals 4

    .line 1063
    const-string v0, "warnUnneededSuppressions"

    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/source/SourceChecker;->hasOption(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1064
    return-void

    .line 1067
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/checkerframework/framework/source/SourceChecker;->elementsWithSuppressedWarnings:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1068
    .local v0, "elementsSuppress":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/Element;>;"
    iget-object v1, p0, Lorg/checkerframework/framework/source/SourceChecker;->elementsWithSuppressedWarnings:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1069
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p0}, Lorg/checkerframework/framework/source/SourceChecker;->getSuppressWarningsKeys()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1070
    .local v1, "checkerKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lorg/checkerframework/framework/source/SourceChecker;->messages:Ljava/util/Properties;

    invoke-virtual {v3}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1071
    .local v2, "errorKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1, v2}, Lorg/checkerframework/framework/source/SourceChecker;->warnUnneedSuppressions(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 1072
    invoke-virtual {p0}, Lorg/checkerframework/framework/source/SourceChecker;->getVisitor()Lorg/checkerframework/framework/source/SourceVisitor;

    move-result-object v3

    iget-object v3, v3, Lorg/checkerframework/framework/source/SourceVisitor;->treesWithSuppressWarnings:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1073
    return-void
.end method
