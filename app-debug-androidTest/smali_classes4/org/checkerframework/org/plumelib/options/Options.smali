.class public Lorg/checkerframework/org/plumelib/options/Options;
.super Ljava/lang/Object;
.source "Options.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/plumelib/options/Options$ParseResult;,
        Lorg/checkerframework/org/plumelib/options/Options$ArgException;,
        Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;,
        Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    }
.end annotation


# static fields
.field private static final LIST_HELP:Ljava/lang/String; = "[+] marked option can be specified multiple times"

.field private static lineSeparator:Ljava/lang/String;

.field public static spaceSeparatedLists:Z


# instance fields
.field private debugEnabled:Z

.field private final groupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private hasGroups:Z

.field private hasListOption:Z

.field private mainClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final nameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private optionsString:Ljava/lang/String;

.field private parseAfterArg:Z

.field public usageSynopsis:Ljava/lang/String;

.field public useDashes:Z

.field public useSingleDash:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 277
    const/4 v0, 0x0

    sput-boolean v0, Lorg/checkerframework/org/plumelib/options/Options;->spaceSeparatedLists:Z

    .line 337
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/plumelib/options/Options;->lineSeparator:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 24
    .param p1, "usageSynopsis"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 655
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 254
    const/4 v9, 0x0

    iput-boolean v9, v7, Lorg/checkerframework/org/plumelib/options/Options;->useSingleDash:Z

    .line 263
    const/4 v10, 0x1

    iput-boolean v10, v7, Lorg/checkerframework/org/plumelib/options/Options;->parseAfterArg:Z

    .line 285
    const/4 v11, 0x0

    iput-object v11, v7, Lorg/checkerframework/org/plumelib/options/Options;->usageSynopsis:Ljava/lang/String;

    .line 293
    iput-boolean v10, v7, Lorg/checkerframework/org/plumelib/options/Options;->useDashes:Z

    .line 298
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    iput-object v0, v7, Lorg/checkerframework/org/plumelib/options/Options;->mainClass:Ljava/lang/Class;

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lorg/checkerframework/org/plumelib/options/Options;->options:Ljava/util/List;

    .line 304
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, v7, Lorg/checkerframework/org/plumelib/options/Options;->nameMap:Ljava/util/Map;

    .line 307
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, v7, Lorg/checkerframework/org/plumelib/options/Options;->groupMap:Ljava/util/Map;

    .line 322
    iput-boolean v9, v7, Lorg/checkerframework/org/plumelib/options/Options;->debugEnabled:Z

    .line 334
    const-string v0, ""

    iput-object v0, v7, Lorg/checkerframework/org/plumelib/options/Options;->optionsString:Ljava/lang/String;

    .line 1092
    iput-boolean v9, v7, Lorg/checkerframework/org/plumelib/options/Options;->hasListOption:Z

    .line 657
    array-length v0, v8

    if-eqz v0, :cond_1f

    .line 661
    move-object/from16 v12, p1

    iput-object v12, v7, Lorg/checkerframework/org/plumelib/options/Options;->usageSynopsis:Ljava/lang/String;

    .line 663
    iput-boolean v9, v7, Lorg/checkerframework/org/plumelib/options/Options;->hasGroups:Z

    .line 666
    const/4 v0, 0x0

    .line 669
    .local v0, "seenFirstOpt":Z
    array-length v13, v8

    move v14, v9

    :goto_0
    if-ge v14, v13, :cond_16

    aget-object v15, v8, v14

    .line 670
    .local v15, "obj":Ljava/lang/Object;
    instance-of v5, v15, Ljava/lang/Class;

    .line 673
    .local v5, "isClass":Z
    const/4 v1, 0x0

    .line 678
    .local v1, "currentGroup":Ljava/lang/String;
    if-eqz v5, :cond_0

    move-object v2, v15

    check-cast v2, Ljava/lang/Class;

    goto :goto_1

    :cond_0
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :goto_1
    move-object v4, v2

    .line 679
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, v7, Lorg/checkerframework/org/plumelib/options/Options;->mainClass:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_1

    .line 680
    iput-object v4, v7, Lorg/checkerframework/org/plumelib/options/Options;->mainClass:Ljava/lang/Class;

    .line 682
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 684
    .local v3, "fields":[Ljava/lang/reflect/Field;
    array-length v2, v3

    move/from16 v16, v0

    move-object/from16 v17, v1

    move v1, v9

    .end local v0    # "seenFirstOpt":Z
    .end local v1    # "currentGroup":Ljava/lang/String;
    .local v16, "seenFirstOpt":Z
    .local v17, "currentGroup":Ljava/lang/String;
    :goto_2
    if-ge v1, v2, :cond_15

    aget-object v6, v3, v1

    .line 688
    .local v6, "f":Ljava/lang/reflect/Field;
    move-object v0, v15

    .line 689
    .local v0, "objNonraw":Ljava/lang/Object;
    :try_start_0
    iget-boolean v11, v7, Lorg/checkerframework/org/plumelib/options/Options;->debugEnabled:Z

    if-eqz v11, :cond_2

    .line 690
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "Considering field %s of object %s%n"

    filled-new-array {v6, v0}, [Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v11, v9, v10}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 696
    .end local v0    # "objNonraw":Ljava/lang/Object;
    :cond_2
    goto :goto_3

    .line 692
    :catchall_0
    move-exception v0

    .line 693
    .local v0, "t":Ljava/lang/Throwable;
    iget-boolean v9, v7, Lorg/checkerframework/org/plumelib/options/Options;->debugEnabled:Z

    if-eqz v9, :cond_3

    .line 694
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    filled-new-array {v6, v10}, [Ljava/lang/Object;

    move-result-object v10

    const-string v11, "Considering field %s of object of type %s%n"

    invoke-virtual {v9, v11, v10}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 698
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_3
    :goto_3
    :try_start_1
    iget-boolean v0, v7, Lorg/checkerframework/org/plumelib/options/Options;->debugEnabled:Z

    if-eqz v0, :cond_4

    .line 699
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "  with annotations %s%n"

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    .line 700
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/16 v18, 0x0

    aput-object v10, v11, v18

    .line 699
    invoke-virtual {v0, v9, v11}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_1
    .catch Ljava/lang/ArrayStoreException; {:try_start_1 .. :try_end_1} :catch_0

    .line 712
    :cond_4
    move/from16 v18, v1

    const/4 v11, 0x0

    goto :goto_4

    .line 702
    :catch_0
    move-exception v0

    .line 703
    .local v0, "e":Ljava/lang/ArrayStoreException;
    invoke-virtual {v0}, Ljava/lang/ArrayStoreException;->getMessage()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_14

    .line 705
    invoke-virtual {v0}, Ljava/lang/ArrayStoreException;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 704
    const-string v10, "sun.reflect.annotation.TypeNotPresentExceptionProxy"

    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 706
    iget-boolean v9, v7, Lorg/checkerframework/org/plumelib/options/Options;->debugEnabled:Z

    if-eqz v9, :cond_5

    .line 707
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v10, "  with TypeNotPresentExceptionProxy while getting annotations%n"

    move/from16 v18, v1

    const/4 v11, 0x0

    new-array v1, v11, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_4

    .line 706
    :cond_5
    move/from16 v18, v1

    const/4 v11, 0x0

    .line 713
    .end local v0    # "e":Ljava/lang/ArrayStoreException;
    :goto_4
    const-class v0, Lorg/checkerframework/org/plumelib/options/Option;

    invoke-static {v6, v0}, Lorg/checkerframework/org/plumelib/options/Options;->safeGetAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/plumelib/options/Option;

    .line 714
    .local v0, "option":Lorg/checkerframework/org/plumelib/options/Option;
    if-nez v0, :cond_6

    .line 715
    move/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move/from16 v23, v5

    const/4 v3, 0x1

    goto/16 :goto_b

    .line 718
    :cond_6
    const-class v1, Lorg/checkerframework/org/plumelib/options/Unpublicized;

    invoke-static {v6, v1}, Lorg/checkerframework/org/plumelib/options/Options;->safeGetAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_5

    :cond_7
    move v1, v11

    :goto_5
    move-object v9, v6

    .end local v6    # "f":Ljava/lang/reflect/Field;
    .local v9, "f":Ljava/lang/reflect/Field;
    move v6, v1

    .line 720
    .local v6, "unpublicized":Z
    if-eqz v5, :cond_9

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_6

    .line 721
    :cond_8
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "non-static option "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, " in class "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 726
    :cond_9
    :goto_6
    new-instance v10, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;

    if-eqz v5, :cond_a

    const/16 v19, 0x0

    goto :goto_7

    :cond_a
    move-object/from16 v19, v15

    :goto_7
    move-object v1, v10

    move/from16 v20, v2

    move-object/from16 v2, p0

    move-object/from16 v21, v3

    .end local v3    # "fields":[Ljava/lang/reflect/Field;
    .local v21, "fields":[Ljava/lang/reflect/Field;
    move-object v3, v9

    move-object/from16 v22, v4

    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v22, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v4, v0

    move/from16 v23, v5

    .end local v5    # "isClass":Z
    .local v23, "isClass":Z
    move-object/from16 v5, v19

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;-><init>(Lorg/checkerframework/org/plumelib/options/Options;Ljava/lang/reflect/Field;Lorg/checkerframework/org/plumelib/options/Option;Ljava/lang/Object;Z)V

    .line 727
    .local v1, "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    iget-object v2, v7, Lorg/checkerframework/org/plumelib/options/Options;->options:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 729
    const-class v2, Lorg/checkerframework/org/plumelib/options/OptionGroup;

    invoke-static {v9, v2}, Lorg/checkerframework/org/plumelib/options/Options;->safeGetAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/plumelib/options/OptionGroup;

    .line 731
    .local v2, "optionGroup":Lorg/checkerframework/org/plumelib/options/OptionGroup;
    if-nez v16, :cond_c

    .line 732
    const/16 v16, 0x1

    .line 735
    if-eqz v2, :cond_b

    .line 736
    const/4 v3, 0x1

    iput-boolean v3, v7, Lorg/checkerframework/org/plumelib/options/Options;->hasGroups:Z

    goto :goto_8

    .line 735
    :cond_b
    const/4 v3, 0x1

    goto/16 :goto_b

    .line 731
    :cond_c
    const/4 v3, 0x1

    .line 742
    :goto_8
    iget-boolean v4, v7, Lorg/checkerframework/org/plumelib/options/Options;->hasGroups:Z

    if-nez v4, :cond_e

    .line 743
    if-nez v2, :cond_d

    goto/16 :goto_b

    .line 749
    :cond_d
    new-instance v3, Ljava/lang/Error;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "missing @OptionGroup annotation on the first @Option-annotated field of class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v7, Lorg/checkerframework/org/plumelib/options/Options;->mainClass:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 763
    :cond_e
    if-nez v17, :cond_10

    if-eqz v2, :cond_f

    goto :goto_9

    .line 765
    :cond_f
    new-instance v3, Ljava/lang/Error;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "missing @OptionGroup annotation in field "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " of class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 766
    :cond_10
    :goto_9
    if-eqz v2, :cond_12

    .line 767
    invoke-interface {v2}, Lorg/checkerframework/org/plumelib/options/OptionGroup;->value()Ljava/lang/String;

    move-result-object v4

    .line 768
    .local v4, "name":Ljava/lang/String;
    iget-object v5, v7, Lorg/checkerframework/org/plumelib/options/Options;->groupMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 771
    new-instance v5, Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;

    invoke-direct {v5, v2}, Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;-><init>(Lorg/checkerframework/org/plumelib/options/OptionGroup;)V

    .line 772
    .local v5, "gi":Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;
    iget-object v10, v7, Lorg/checkerframework/org/plumelib/options/Options;->groupMap:Ljava/util/Map;

    invoke-interface {v10, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    move-object/from16 v17, v4

    goto :goto_a

    .line 769
    .end local v5    # "gi":Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;
    :cond_11
    new-instance v3, Ljava/lang/Error;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "option group "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " declared twice"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 766
    .end local v4    # "name":Ljava/lang/String;
    :cond_12
    move-object/from16 v4, v17

    .line 775
    .end local v17    # "currentGroup":Ljava/lang/String;
    .local v4, "currentGroup":Ljava/lang/String;
    :goto_a
    iget-object v5, v7, Lorg/checkerframework/org/plumelib/options/Options;->groupMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;

    .line 776
    .local v5, "ogi":Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;
    iget-object v10, v5, Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;->optionList:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v4

    .line 684
    .end local v0    # "option":Lorg/checkerframework/org/plumelib/options/Option;
    .end local v1    # "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    .end local v2    # "optionGroup":Lorg/checkerframework/org/plumelib/options/OptionGroup;
    .end local v4    # "currentGroup":Ljava/lang/String;
    .end local v5    # "ogi":Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;
    .end local v6    # "unpublicized":Z
    .end local v9    # "f":Ljava/lang/reflect/Field;
    .restart local v17    # "currentGroup":Ljava/lang/String;
    :goto_b
    add-int/lit8 v1, v18, 0x1

    move v10, v3

    move v9, v11

    move/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    move/from16 v5, v23

    const/4 v11, 0x0

    goto/16 :goto_2

    .line 704
    .end local v21    # "fields":[Ljava/lang/reflect/Field;
    .end local v22    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v23    # "isClass":Z
    .local v0, "e":Ljava/lang/ArrayStoreException;
    .restart local v3    # "fields":[Ljava/lang/reflect/Field;
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v5, "isClass":Z
    .local v6, "f":Ljava/lang/reflect/Field;
    :cond_13
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move/from16 v23, v5

    move-object v9, v6

    .end local v3    # "fields":[Ljava/lang/reflect/Field;
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "isClass":Z
    .end local v6    # "f":Ljava/lang/reflect/Field;
    .restart local v9    # "f":Ljava/lang/reflect/Field;
    .restart local v21    # "fields":[Ljava/lang/reflect/Field;
    .restart local v22    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v23    # "isClass":Z
    goto :goto_c

    .line 703
    .end local v9    # "f":Ljava/lang/reflect/Field;
    .end local v21    # "fields":[Ljava/lang/reflect/Field;
    .end local v22    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v23    # "isClass":Z
    .restart local v3    # "fields":[Ljava/lang/reflect/Field;
    .restart local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "isClass":Z
    .restart local v6    # "f":Ljava/lang/reflect/Field;
    :cond_14
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move/from16 v23, v5

    move-object v9, v6

    .line 710
    .end local v3    # "fields":[Ljava/lang/reflect/Field;
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "isClass":Z
    .end local v6    # "f":Ljava/lang/reflect/Field;
    .restart local v9    # "f":Ljava/lang/reflect/Field;
    .restart local v21    # "fields":[Ljava/lang/reflect/Field;
    .restart local v22    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v23    # "isClass":Z
    :goto_c
    throw v0

    .line 684
    .end local v0    # "e":Ljava/lang/ArrayStoreException;
    .end local v9    # "f":Ljava/lang/reflect/Field;
    .end local v21    # "fields":[Ljava/lang/reflect/Field;
    .end local v22    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v23    # "isClass":Z
    .restart local v3    # "fields":[Ljava/lang/reflect/Field;
    .restart local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "isClass":Z
    :cond_15
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move/from16 v23, v5

    move v11, v9

    move v3, v10

    .line 669
    .end local v3    # "fields":[Ljava/lang/reflect/Field;
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "isClass":Z
    .end local v15    # "obj":Ljava/lang/Object;
    .end local v17    # "currentGroup":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    move/from16 v0, v16

    const/4 v11, 0x0

    goto/16 :goto_0

    .line 780
    .end local v16    # "seenFirstOpt":Z
    .local v0, "seenFirstOpt":Z
    :cond_16
    move v11, v9

    iget-boolean v1, v7, Lorg/checkerframework/org/plumelib/options/Options;->useSingleDash:Z

    const-string v2, "-"

    if-eqz v1, :cond_17

    move-object v1, v2

    goto :goto_d

    :cond_17
    const-string v1, "--"

    .line 783
    .local v1, "prefix":Ljava/lang/String;
    :goto_d
    iget-object v3, v7, Lorg/checkerframework/org/plumelib/options/Options;->options:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;

    .line 784
    .local v4, "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    iget-object v5, v4, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->shortName:Ljava/lang/String;

    const-string v6, " appears twice"

    if-eqz v5, :cond_19

    .line 785
    iget-object v5, v7, Lorg/checkerframework/org/plumelib/options/Options;->nameMap:Ljava/util/Map;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 788
    iget-object v5, v7, Lorg/checkerframework/org/plumelib/options/Options;->nameMap:Ljava/util/Map;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 786
    :cond_18
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "short name "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 790
    :cond_19
    :goto_f
    iget-object v5, v7, Lorg/checkerframework/org/plumelib/options/Options;->nameMap:Ljava/util/Map;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->longName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 793
    iget-object v5, v7, Lorg/checkerframework/org/plumelib/options/Options;->nameMap:Ljava/util/Map;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->longName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    iget-boolean v5, v7, Lorg/checkerframework/org/plumelib/options/Options;->useDashes:Z

    if-eqz v5, :cond_1a

    iget-object v5, v4, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->longName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 795
    iget-object v5, v7, Lorg/checkerframework/org/plumelib/options/Options;->nameMap:Ljava/util/Map;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->longName:Ljava/lang/String;

    const/16 v13, 0x2d

    const/16 v14, 0x5f

    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    :cond_1a
    iget-object v5, v4, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->aliases:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_1c

    .line 798
    iget-object v5, v4, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->aliases:[Ljava/lang/String;

    array-length v9, v5

    move v10, v11

    :goto_10
    if-ge v10, v9, :cond_1c

    aget-object v13, v5, v10

    .line 799
    .local v13, "alias":Ljava/lang/String;
    iget-object v14, v7, Lorg/checkerframework/org/plumelib/options/Options;->nameMap:Ljava/util/Map;

    invoke-interface {v14, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1b

    .line 802
    iget-object v14, v7, Lorg/checkerframework/org/plumelib/options/Options;->nameMap:Ljava/util/Map;

    invoke-interface {v14, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    .end local v13    # "alias":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    .line 800
    .restart local v13    # "alias":Ljava/lang/String;
    :cond_1b
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "alias "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 805
    .end local v4    # "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    .end local v13    # "alias":Ljava/lang/String;
    :cond_1c
    goto/16 :goto_e

    .line 791
    .restart local v4    # "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    :cond_1d
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "long name "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 806
    .end local v4    # "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    :cond_1e
    return-void

    .line 658
    .end local v0    # "seenFirstOpt":Z
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_1f
    move-object/from16 v12, p1

    new-instance v0, Ljava/lang/Error;

    const-string v1, "Must pass at least one object to Options constructor"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    .line 643
    const-string v0, ""

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/org/plumelib/options/Options;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 644
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Lorg/checkerframework/org/plumelib/options/Options$ParseResult;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 245
    invoke-static {p0}, Lorg/checkerframework/org/plumelib/options/Options;->parseOption(Ljava/lang/String;)Lorg/checkerframework/org/plumelib/options/Options$ParseResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Class;

    .line 245
    invoke-static {p0}, Lorg/checkerframework/org/plumelib/options/Options;->typeShortName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formatOptions(Ljava/util/List;IZ)Ljava/lang/String;
    .locals 7
    .param p2, "maxLength"    # I
    .param p3, "showUnpublicized"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;",
            ">;IZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1197
    .local p1, "optList":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;>;"
    new-instance v0, Ljava/util/StringJoiner;

    sget-object v1, Lorg/checkerframework/org/plumelib/options/Options;->lineSeparator:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 1198
    .local v0, "buf":Ljava/util/StringJoiner;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;

    .line 1199
    .local v2, "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    iget-boolean v3, v2, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->unpublicized:Z

    if-eqz v3, :cond_0

    if-nez p3, :cond_0

    .line 1200
    goto :goto_0

    .line 1202
    :cond_0
    const-string v3, ""

    .line 1203
    .local v3, "defaultStr":Ljava/lang/String;
    iget-object v4, v2, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->defaultStr:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1204
    iget-object v4, v2, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->defaultStr:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, " [default %s]"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1208
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  %-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "s - %s%s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1209
    invoke-virtual {v2}, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->synopsis()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->description:Ljava/lang/String;

    filled-new-array {v5, v6, v3}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1210
    .local v4, "use":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1212
    iget-object v5, v2, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->list:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 1213
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/checkerframework/org/plumelib/options/Options;->hasListOption:Z

    .line 1215
    .end local v2    # "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    .end local v3    # "defaultStr":Ljava/lang/String;
    .end local v4    # "use":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 1216
    :cond_3
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getEnumValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    .locals 7
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1458
    .local p1, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    .line 1459
    .local v0, "constants":[Ljava/lang/Enum;, "[TT;"
    if-eqz v0, :cond_2

    .line 1462
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1463
    .local v3, "constant":Ljava/lang/Enum;, "TT;"
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2d

    const/16 v6, 0x5f

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1464
    return-object v3

    .line 1462
    .end local v3    # "constant":Ljava/lang/Enum;, "TT;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1468
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No enum constant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1469
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1460
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not an enum type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getRefArg(Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "oi"    # Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    .param p2, "argName"    # Ljava/lang/String;
    .param p3, "argValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/plumelib/options/Options$ArgException;
        }
    .end annotation

    .line 1424
    :try_start_0
    iget-object v0, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->constructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    .line 1425
    iget-object v0, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->constructor:Ljava/lang/reflect/Constructor;

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "val":Ljava/lang/Object;
    goto :goto_0

    .line 1426
    .end local v0    # "val":Ljava/lang/Object;
    :cond_0
    iget-object v0, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->baseType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1428
    iget-object v0, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->baseType:Ljava/lang/Class;

    invoke-direct {p0, v0, p3}, Lorg/checkerframework/org/plumelib/options/Options;->getEnumValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    .line 1429
    .local v0, "tmpVal":Ljava/lang/Object;
    nop

    .line 1430
    .local v0, "val":Ljava/lang/Object;
    goto :goto_0

    .line 1431
    .end local v0    # "val":Ljava/lang/Object;
    :cond_1
    iget-object v0, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->factory:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    .line 1434
    iget-object v0, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->factoryArg2:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1435
    iget-object v0, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->factory:Ljava/lang/reflect/Method;

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .restart local v0    # "val":Ljava/lang/Object;
    goto :goto_0

    .line 1437
    .end local v0    # "val":Ljava/lang/Object;
    :cond_2
    iget-object v0, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->factory:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    iget-object v3, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->factoryArg2:Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1442
    .restart local v0    # "val":Ljava/lang/Object;
    :goto_0
    nop

    .line 1444
    return-object v0

    .line 1432
    .end local v0    # "val":Ljava/lang/Object;
    :cond_3
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No constructor or factory for argument "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .end local p1    # "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    .end local p2    # "argName":Ljava/lang/String;
    .end local p3    # "argValue":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1440
    .restart local p1    # "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    .restart local p2    # "argName":Ljava/lang/String;
    .restart local p3    # "argValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1441
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/checkerframework/org/plumelib/options/Options$ArgException;

    const-string v2, "Invalid argument (%s) for argument %s"

    filled-new-array {p3, p2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/org/plumelib/options/Options$ArgException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method private maxOptionLength(Ljava/util/List;Z)I
    .locals 4
    .param p2, "showUnpublicized"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;",
            ">;Z)I"
        }
    .end annotation

    .line 1228
    .local p1, "optList":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;>;"
    const/4 v0, 0x0

    .line 1229
    .local v0, "maxLength":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;

    .line 1230
    .local v2, "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    iget-boolean v3, v2, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->unpublicized:Z

    if-eqz v3, :cond_0

    if-nez p2, :cond_0

    .line 1231
    goto :goto_0

    .line 1233
    :cond_0
    invoke-virtual {v2}, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->synopsis()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 1234
    .local v3, "len":I
    if-le v3, v0, :cond_1

    .line 1235
    move v0, v3

    .line 1237
    .end local v2    # "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    .end local v3    # "len":I
    :cond_1
    goto :goto_0

    .line 1238
    :cond_2
    return v0
.end method

.method private static parseOption(Ljava/lang/String;)Lorg/checkerframework/org/plumelib/options/Options$ParseResult;
    .locals 5
    .param p0, "val"    # Ljava/lang/String;

    .line 1630
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1631
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    const/4 v0, 0x2

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1637
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1638
    .local v0, "shortName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "description":Ljava/lang/String;
    goto :goto_0

    .line 1632
    .end local v0    # "shortName":Ljava/lang/String;
    .end local v2    # "description":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed @Option argument \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\".  An argument that starts with \'-\' should contain a short name, a space, and a description."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1640
    :cond_1
    const/4 v0, 0x0

    .line 1641
    .restart local v0    # "shortName":Ljava/lang/String;
    move-object v2, p0

    .line 1645
    .restart local v2    # "description":Ljava/lang/String;
    :goto_0
    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1646
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, ">.*"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1647
    .local v1, "typeName":Ljava/lang/String;
    const-string v3, "<.*> "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1649
    .end local v1    # "typeName":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    .line 1653
    .restart local v1    # "typeName":Ljava/lang/String;
    :goto_1
    new-instance v3, Lorg/checkerframework/org/plumelib/options/Options$ParseResult;

    invoke-direct {v3, v0, v1, v2}, Lorg/checkerframework/org/plumelib/options/Options$ParseResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method static printClassPath()V
    .locals 7

    .line 842
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    check-cast v0, Ljava/net/URLClassLoader;

    .line 843
    .local v0, "sysLoader":Ljava/net/URLClassLoader;
    if-nez v0, :cond_0

    .line 844
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "No system class loader. (Maybe means bootstrap class loader is being used?)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 847
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Classpath:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 848
    invoke-virtual {v0}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 849
    .local v4, "url":Ljava/net/URL;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 848
    .end local v4    # "url":Ljava/net/URL;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 852
    :cond_1
    :goto_1
    return-void
.end method

.method private static safeGetAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 4
    .param p0, "f"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 823
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    .local v0, "cast":Ljava/lang/annotation/Annotation;, "TT;"
    nop

    .line 835
    .local v0, "annotation":Ljava/lang/annotation/Annotation;, "TT;"
    goto :goto_0

    .line 825
    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;, "TT;"
    :catch_0
    move-exception v0

    .line 829
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 831
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, p0, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 829
    const-string v3, "Exception in call to f.getAnnotation(%s)%n  for f=%s%n  %s%nClasspath =%n"

    invoke-virtual {v1, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 833
    invoke-static {}, Lorg/checkerframework/org/plumelib/options/Options;->printClassPath()V

    .line 834
    const/4 v1, 0x0

    move-object v0, v1

    .line 837
    .local v0, "annotation":Ljava/lang/annotation/Annotation;, "TT;"
    :goto_0
    return-object v0
.end method

.method private setArg(Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "oi"    # Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    .param p2, "argName"    # Ljava/lang/String;
    .param p3, "argValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/plumelib/options/Options$ArgException;
        }
    .end annotation

    .line 1273
    const-string v0, "true"

    iget-object v1, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->field:Ljava/lang/reflect/Field;

    .line 1274
    .local v1, "f":Ljava/lang/reflect/Field;
    iget-object v2, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->baseType:Ljava/lang/Class;

    .line 1277
    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Lorg/checkerframework/org/plumelib/options/Options;->optionsString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, " "

    if-lez v3, :cond_0

    .line 1278
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/checkerframework/org/plumelib/options/Options;->optionsString:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/checkerframework/org/plumelib/options/Options;->optionsString:Ljava/lang/String;

    .line 1280
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/checkerframework/org/plumelib/options/Options;->optionsString:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/checkerframework/org/plumelib/options/Options;->optionsString:Ljava/lang/String;

    .line 1281
    if-eqz p3, :cond_4

    .line 1282
    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1283
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/checkerframework/org/plumelib/options/Options;->optionsString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/checkerframework/org/plumelib/options/Options;->optionsString:Ljava/lang/String;

    goto :goto_0

    .line 1284
    :cond_1
    const-string v3, "\'"

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1285
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/checkerframework/org/plumelib/options/Options;->optionsString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/checkerframework/org/plumelib/options/Options;->optionsString:Ljava/lang/String;

    goto :goto_0

    .line 1286
    :cond_2
    const-string v3, "\""

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1287
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/checkerframework/org/plumelib/options/Options;->optionsString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/checkerframework/org/plumelib/options/Options;->optionsString:Ljava/lang/String;

    goto :goto_0

    .line 1289
    :cond_3
    new-instance v0, Lorg/checkerframework/org/plumelib/options/Options$ArgException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t quote for internal debugging: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/checkerframework/org/plumelib/options/Options$ArgException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1293
    :cond_4
    :goto_0
    if-nez p3, :cond_7

    .line 1294
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_6

    const-class v3, Ljava/lang/Boolean;

    if-eq v2, v3, :cond_5

    goto :goto_1

    .line 1297
    :cond_5
    new-instance v0, Lorg/checkerframework/org/plumelib/options/Options$ArgException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Value required for option "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/checkerframework/org/plumelib/options/Options$ArgException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1295
    :cond_6
    :goto_1
    const-string p3, "true"

    .line 1302
    :cond_7
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_16

    .line 1303
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_d

    .line 1305
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 1306
    .local v3, "argValueLowercase":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Lorg/checkerframework/org/plumelib/options/Options$ArgException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    const-string v5, "false"

    if-nez v4, :cond_b

    :try_start_1
    const-string v4, "t"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_3

    .line 1308
    :cond_8
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "f"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_2

    .line 1311
    :cond_9
    new-instance v0, Lorg/checkerframework/org/plumelib/options/Options$ArgException;

    const-string v4, "Value \"%s\" for argument %s is not a boolean"

    filled-new-array {p3, p2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lorg/checkerframework/org/plumelib/options/Options$ArgException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p1    # "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    .end local p2    # "argName":Ljava/lang/String;
    .end local p3    # "argValue":Ljava/lang/String;
    throw v0

    .line 1309
    .restart local v1    # "f":Ljava/lang/reflect/Field;
    .restart local v2    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p1    # "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    .restart local p2    # "argName":Ljava/lang/String;
    .restart local p3    # "argValue":Ljava/lang/String;
    :cond_a
    :goto_2
    const/4 v4, 0x0

    .local v4, "val":Z
    goto :goto_4

    .line 1307
    .end local v4    # "val":Z
    :cond_b
    :goto_3
    const/4 v4, 0x1

    .line 1314
    .restart local v4    # "val":Z
    :goto_4
    if-eqz v4, :cond_c

    goto :goto_5

    :cond_c
    move-object v0, v5

    :goto_5
    move-object p3, v0

    .line 1316
    iget-object v0, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 1317
    .end local v3    # "argValueLowercase":Ljava/lang/String;
    .end local v4    # "val":Z
    goto/16 :goto_7

    :cond_d
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;
    :try_end_1
    .catch Lorg/checkerframework/org/plumelib/options/Options$ArgException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    if-ne v2, v0, :cond_e

    .line 1320
    :try_start_2
    invoke-static {p3}, Ljava/lang/Byte;->decode(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/checkerframework/org/plumelib/options/Options$ArgException; {:try_start_2 .. :try_end_2} :catch_7

    .line 1323
    .local v0, "val":B
    nop

    .line 1324
    :try_start_3
    iget-object v3, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v3, v0}, Ljava/lang/reflect/Field;->setByte(Ljava/lang/Object;B)V

    .line 1325
    .end local v0    # "val":B
    goto/16 :goto_7

    .line 1321
    :catch_0
    move-exception v0

    .line 1322
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/checkerframework/org/plumelib/options/Options$ArgException;

    const-string v4, "Value \"%s\" for argument %s is not a byte"

    filled-new-array {p3, p2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/checkerframework/org/plumelib/options/Options$ArgException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p1    # "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    .end local p2    # "argName":Ljava/lang/String;
    .end local p3    # "argValue":Ljava/lang/String;
    throw v3

    .line 1325
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "f":Ljava/lang/reflect/Field;
    .restart local v2    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p1    # "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    .restart local p2    # "argName":Ljava/lang/String;
    .restart local p3    # "argValue":Ljava/lang/String;
    :cond_e
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v2, v0, :cond_10

    .line 1326
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_f

    .line 1330
    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1331
    .local v0, "val":C
    iget-object v3, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v3, v0}, Ljava/lang/reflect/Field;->setChar(Ljava/lang/Object;C)V

    .line 1332
    .end local v0    # "val":C
    goto/16 :goto_7

    .line 1327
    :cond_f
    new-instance v0, Lorg/checkerframework/org/plumelib/options/Options$ArgException;

    const-string v3, "Value \"%s\" for argument %s is not a single character"

    filled-new-array {p3, p2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/checkerframework/org/plumelib/options/Options$ArgException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p1    # "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    .end local p2    # "argName":Ljava/lang/String;
    .end local p3    # "argValue":Ljava/lang/String;
    throw v0

    .line 1332
    .restart local v1    # "f":Ljava/lang/reflect/Field;
    .restart local v2    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p1    # "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    .restart local p2    # "argName":Ljava/lang/String;
    .restart local p3    # "argValue":Ljava/lang/String;
    :cond_10
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;
    :try_end_3
    .catch Lorg/checkerframework/org/plumelib/options/Options$ArgException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    if-ne v2, v0, :cond_11

    .line 1335
    :try_start_4
    invoke-static {p3}, Ljava/lang/Short;->decode(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/checkerframework/org/plumelib/options/Options$ArgException; {:try_start_4 .. :try_end_4} :catch_7

    .line 1339
    .local v0, "val":S
    nop

    .line 1340
    :try_start_5
    iget-object v3, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v3, v0}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V

    .line 1341
    .end local v0    # "val":S
    goto/16 :goto_7

    .line 1336
    :catch_1
    move-exception v0

    .line 1337
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/checkerframework/org/plumelib/options/Options$ArgException;

    const-string v4, "Value \"%s\" for argument %s is not a short integer"

    filled-new-array {p3, p2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/checkerframework/org/plumelib/options/Options$ArgException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p1    # "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    .end local p2    # "argName":Ljava/lang/String;
    .end local p3    # "argValue":Ljava/lang/String;
    throw v3

    .line 1341
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "f":Ljava/lang/reflect/Field;
    .restart local v2    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p1    # "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    .restart local p2    # "argName":Ljava/lang/String;
    .restart local p3    # "argValue":Ljava/lang/String;
    :cond_11
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    :try_end_5
    .catch Lorg/checkerframework/org/plumelib/options/Options$ArgException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    if-ne v2, v0, :cond_12

    .line 1344
    :try_start_6
    invoke-static {p3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/checkerframework/org/plumelib/options/Options$ArgException; {:try_start_6 .. :try_end_6} :catch_7

    .line 1348
    .local v0, "val":I
    nop

    .line 1349
    :try_start_7
    iget-object v3, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v3, v0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 1350
    .end local v0    # "val":I
    goto/16 :goto_7

    .line 1345
    :catch_2
    move-exception v0

    .line 1346
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/checkerframework/org/plumelib/options/Options$ArgException;

    const-string v4, "Value \"%s\" for argument %s is not an integer"

    filled-new-array {p3, p2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/checkerframework/org/plumelib/options/Options$ArgException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p1    # "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    .end local p2    # "argName":Ljava/lang/String;
    .end local p3    # "argValue":Ljava/lang/String;
    throw v3

    .line 1350
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "f":Ljava/lang/reflect/Field;
    .restart local v2    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p1    # "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    .restart local p2    # "argName":Ljava/lang/String;
    .restart local p3    # "argValue":Ljava/lang/String;
    :cond_12
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_7
    .catch Lorg/checkerframework/org/plumelib/options/Options$ArgException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    if-ne v2, v0, :cond_13

    .line 1353
    :try_start_8
    invoke-static {p3}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/checkerframework/org/plumelib/options/Options$ArgException; {:try_start_8 .. :try_end_8} :catch_7

    .line 1357
    .local v3, "val":J
    nop

    .line 1358
    :try_start_9
    iget-object v0, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v0, v3, v4}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    .line 1359
    .end local v3    # "val":J
    goto/16 :goto_7

    .line 1354
    :catch_3
    move-exception v0

    .line 1355
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v3, Lorg/checkerframework/org/plumelib/options/Options$ArgException;

    const-string v4, "Value \"%s\" for argument %s is not a long integer"

    filled-new-array {p3, p2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/checkerframework/org/plumelib/options/Options$ArgException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p1    # "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    .end local p2    # "argName":Ljava/lang/String;
    .end local p3    # "argValue":Ljava/lang/String;
    throw v3

    .line 1359
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "f":Ljava/lang/reflect/Field;
    .restart local v2    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p1    # "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    .restart local p2    # "argName":Ljava/lang/String;
    .restart local p3    # "argValue":Ljava/lang/String;
    :cond_13
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;
    :try_end_9
    .catch Lorg/checkerframework/org/plumelib/options/Options$ArgException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    if-ne v2, v0, :cond_14

    .line 1362
    :try_start_a
    invoke-static {p3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catch Lorg/checkerframework/org/plumelib/options/Options$ArgException; {:try_start_a .. :try_end_a} :catch_7

    .line 1366
    .local v0, "val":Ljava/lang/Float;
    nop

    .line 1367
    :try_start_b
    iget-object v3, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    .line 1368
    .end local v0    # "val":Ljava/lang/Float;
    goto/16 :goto_7

    .line 1363
    :catch_4
    move-exception v0

    .line 1364
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/checkerframework/org/plumelib/options/Options$ArgException;

    const-string v4, "Value \"%s\" for argument %s is not a float"

    filled-new-array {p3, p2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/checkerframework/org/plumelib/options/Options$ArgException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p1    # "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    .end local p2    # "argName":Ljava/lang/String;
    .end local p3    # "argValue":Ljava/lang/String;
    throw v3

    .line 1368
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "f":Ljava/lang/reflect/Field;
    .restart local v2    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p1    # "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    .restart local p2    # "argName":Ljava/lang/String;
    .restart local p3    # "argValue":Ljava/lang/String;
    :cond_14
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;
    :try_end_b
    .catch Lorg/checkerframework/org/plumelib/options/Options$ArgException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    if-ne v2, v0, :cond_15

    .line 1371
    :try_start_c
    invoke-static {p3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catch Lorg/checkerframework/org/plumelib/options/Options$ArgException; {:try_start_c .. :try_end_c} :catch_7

    .line 1375
    .local v0, "val":Ljava/lang/Double;
    nop

    .line 1376
    :try_start_d
    iget-object v3, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    .line 1377
    .end local v0    # "val":Ljava/lang/Double;
    goto :goto_7

    .line 1372
    :catch_5
    move-exception v0

    .line 1373
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/checkerframework/org/plumelib/options/Options$ArgException;

    const-string v4, "Value \"%s\" for argument %s is not a double"

    filled-new-array {p3, p2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/checkerframework/org/plumelib/options/Options$ArgException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p1    # "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    .end local p2    # "argName":Ljava/lang/String;
    .end local p3    # "argValue":Ljava/lang/String;
    throw v3

    .line 1378
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "f":Ljava/lang/reflect/Field;
    .restart local v2    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p1    # "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    .restart local p2    # "argName":Ljava/lang/String;
    .restart local p3    # "argValue":Ljava/lang/String;
    :cond_15
    new-instance v0, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p1    # "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    .end local p2    # "argName":Ljava/lang/String;
    .end local p3    # "argValue":Ljava/lang/String;
    throw v0

    .line 1385
    .restart local v1    # "f":Ljava/lang/reflect/Field;
    .restart local v2    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p1    # "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    .restart local p2    # "argName":Ljava/lang/String;
    .restart local p3    # "argValue":Ljava/lang/String;
    :cond_16
    iget-object v0, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->list:Ljava/util/List;

    if-eqz v0, :cond_19

    .line 1386
    sget-boolean v0, Lorg/checkerframework/org/plumelib/options/Options;->spaceSeparatedLists:Z

    if-eqz v0, :cond_18

    .line 1387
    const-string v0, "  *"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1388
    .local v0, "aarr":[Ljava/lang/String;
    array-length v3, v0

    :goto_6
    if-ge v4, v3, :cond_17

    aget-object v5, v0, v4

    .line 1389
    .local v5, "aval":Ljava/lang/String;
    invoke-direct {p0, p1, p2, v5}, Lorg/checkerframework/org/plumelib/options/Options;->getRefArg(Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 1390
    .local v6, "val":Ljava/lang/Object;
    iget-object v7, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->list:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1388
    nop

    .end local v5    # "aval":Ljava/lang/String;
    .end local v6    # "val":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1392
    .end local v0    # "aarr":[Ljava/lang/String;
    :cond_17
    goto :goto_7

    .line 1393
    :cond_18
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/org/plumelib/options/Options;->getRefArg(Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1394
    .local v0, "val":Ljava/lang/Object;
    iget-object v3, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->list:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1395
    nop

    .end local v0    # "val":Ljava/lang/Object;
    goto :goto_7

    .line 1397
    :cond_19
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/org/plumelib/options/Options;->getRefArg(Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1398
    .restart local v0    # "val":Ljava/lang/Object;
    iget-object v3, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catch Lorg/checkerframework/org/plumelib/options/Options$ArgException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .line 1405
    .end local v0    # "val":Ljava/lang/Object;
    :goto_7
    nop

    .line 1406
    return-void

    .line 1403
    :catch_6
    move-exception v0

    .line 1404
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/Error;

    const-string v4, "Unexpected error "

    invoke-direct {v3, v4, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1401
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v0

    .line 1402
    .local v0, "ae":Lorg/checkerframework/org/plumelib/options/Options$ArgException;
    throw v0
.end method

.method private static sortedKeySet(Ljava/util/Map;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Collection<",
            "TK;>;"
        }
    .end annotation

    .line 1689
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1690
    .local v0, "theKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TK;>;"
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1691
    return-object v0
.end method

.method public static tokenize(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "args"    # Ljava/lang/String;

    .line 988
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 989
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 990
    .local v0, "argList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, ""

    .line 991
    .local v1, "arg":Ljava/lang/String;
    const/4 v2, 0x0

    .line 992
    .local v2, "activeQuote":C
    const/4 v3, 0x0

    .local v3, "ii":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 993
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 994
    .local v4, "ch":C
    const/16 v5, 0x27

    if-eq v4, v5, :cond_3

    const/16 v5, 0x22

    if-ne v4, v5, :cond_0

    goto :goto_2

    .line 1001
    :cond_0
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1003
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1004
    const-string v1, ""

    .line 1005
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1006
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1008
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 1011
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 1014
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 995
    :cond_3
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 996
    add-int/lit8 v3, v3, 0x1

    .line 997
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v4, :cond_4

    .line 998
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "ii":I
    .local v6, "ii":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v3, v6

    goto :goto_3

    .line 1000
    .end local v6    # "ii":I
    .restart local v3    # "ii":I
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 992
    .end local v4    # "ch":C
    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1017
    .end local v3    # "ii":I
    :cond_6
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1018
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1021
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 1022
    .local v3, "argsArray":[Ljava/lang/String;
    return-object v3
.end method

.method private static typeShortName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1482
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1483
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1484
    :cond_0
    const-class v0, Ljava/io/File;

    if-eq p0, v0, :cond_4

    const-class v0, Ljava/nio/file/Path;

    if-ne p0, v0, :cond_1

    goto :goto_0

    .line 1486
    :cond_1
    const-class v0, Ljava/util/regex/Pattern;

    if-ne p0, v0, :cond_2

    .line 1487
    const-string v0, "regex"

    return-object v0

    .line 1488
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1489
    const-string v0, "enum"

    return-object v0

    .line 1491
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1485
    :cond_4
    :goto_0
    const-string v0, "filename"

    return-object v0
.end method


# virtual methods
.method public enableDebugLogging(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 330
    iput-boolean p1, p0, Lorg/checkerframework/org/plumelib/options/Options;->debugEnabled:Z

    .line 331
    return-void
.end method

.method getOptionGroups()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;",
            ">;"
        }
    .end annotation

    .line 1259
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/options/Options;->groupMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;",
            ">;"
        }
    .end annotation

    .line 1255
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/options/Options;->options:Ljava/util/List;

    return-object v0
.end method

.method public getOptionsString()Ljava/lang/String;
    .locals 1

    .line 1504
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/options/Options;->optionsString:Ljava/lang/String;

    return-object v0
.end method

.method getUseSingleDash()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1251
    iget-boolean v0, p0, Lorg/checkerframework/org/plumelib/options/Options;->useSingleDash:Z

    return v0
.end method

.method hasGroups()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1246
    iget-boolean v0, p0, Lorg/checkerframework/org/plumelib/options/Options;->hasGroups:Z

    return v0
.end method

.method public parse(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;

    .line 1041
    const/4 v0, 0x0

    .line 1044
    .local v0, "nonOptions":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/plumelib/options/Options;->parse([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/checkerframework/org/plumelib/options/Options$ArgException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1053
    goto :goto_0

    .line 1045
    :catch_0
    move-exception v1

    .line 1046
    .local v1, "ae":Lorg/checkerframework/org/plumelib/options/Options$ArgException;
    invoke-virtual {v1}, Lorg/checkerframework/org/plumelib/options/Options$ArgException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1047
    .local v2, "exceptionMessage":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1048
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1050
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1051
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 1054
    .end local v1    # "ae":Lorg/checkerframework/org/plumelib/options/Options$ArgException;
    .end local v2    # "exceptionMessage":Ljava/lang/String;
    :goto_0
    return-object v0
.end method

.method public parse(Z[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "showUsageOnError"    # Z
    .param p2, "args"    # [Ljava/lang/String;

    .line 1072
    const/4 v0, 0x0

    .line 1075
    .local v0, "nonOptions":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/plumelib/options/Options;->parse([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/checkerframework/org/plumelib/options/Options$ArgException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1084
    goto :goto_0

    .line 1076
    :catch_0
    move-exception v1

    .line 1077
    .local v1, "ae":Lorg/checkerframework/org/plumelib/options/Options$ArgException;
    invoke-virtual {v1}, Lorg/checkerframework/org/plumelib/options/Options$ArgException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1078
    .local v2, "exceptionMessage":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1079
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1081
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/options/Options;->printUsage()V

    .line 1082
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 1085
    .end local v1    # "ae":Lorg/checkerframework/org/plumelib/options/Options$ArgException;
    .end local v2    # "exceptionMessage":Ljava/lang/String;
    :goto_0
    return-object v0
.end method

.method public parse([Ljava/lang/String;)[Ljava/lang/String;
    .locals 13
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/plumelib/options/Options$ArgException;
        }
    .end annotation

    .line 889
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 892
    .local v0, "nonOptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 895
    .local v1, "ignoreOptions":Z
    const-string v2, ""

    .line 897
    .local v2, "tail":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "ii":I
    :cond_0
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_c

    .line 900
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 901
    move-object v4, v2

    .line 902
    .local v4, "arg":Ljava/lang/String;
    const-string v2, ""

    goto :goto_1

    .line 904
    .end local v4    # "arg":Ljava/lang/String;
    :cond_1
    aget-object v4, p1, v3

    .line 907
    .restart local v4    # "arg":Ljava/lang/String;
    :goto_1
    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 908
    const/4 v1, 0x1

    goto/16 :goto_4

    .line 909
    :cond_2
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_3
    if-nez v1, :cond_a

    .line 915
    const-string v5, ",-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 916
    .local v6, "splitPos":I
    if-nez v6, :cond_4

    .line 918
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 919
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 921
    :cond_4
    const/4 v5, 0x0

    if-lez v6, :cond_5

    .line 922
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 923
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 926
    :cond_5
    const/16 v7, 0x3d

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 927
    .local v7, "eqPos":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_6

    .line 928
    move-object v5, v4

    .line 929
    .local v5, "argName":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "argValue":Ljava/lang/String;
    goto :goto_2

    .line 931
    .end local v5    # "argName":Ljava/lang/String;
    .end local v8    # "argValue":Ljava/lang/String;
    :cond_6
    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 932
    .restart local v5    # "argName":Ljava/lang/String;
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 934
    .restart local v8    # "argValue":Ljava/lang/String;
    :goto_2
    iget-object v9, p0, Lorg/checkerframework/org/plumelib/options/Options;->nameMap:Ljava/util/Map;

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;

    .line 935
    .local v9, "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    if-eqz v9, :cond_9

    .line 947
    invoke-virtual {v9}, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->argumentRequired()Z

    move-result v10

    if-eqz v10, :cond_8

    if-nez v8, :cond_8

    .line 948
    add-int/lit8 v3, v3, 0x1

    .line 949
    array-length v10, p1

    if-ge v3, v10, :cond_7

    .line 952
    aget-object v8, p1, v3

    goto :goto_3

    .line 950
    :cond_7
    new-instance v10, Lorg/checkerframework/org/plumelib/options/Options$ArgException;

    const-string v11, "option %s requires an argument"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/checkerframework/org/plumelib/options/Options$ArgException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v10

    .line 956
    :cond_8
    :goto_3
    invoke-direct {p0, v9, v5, v8}, Lorg/checkerframework/org/plumelib/options/Options;->setArg(Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    .end local v5    # "argName":Ljava/lang/String;
    .end local v6    # "splitPos":I
    .end local v7    # "eqPos":I
    .end local v8    # "argValue":Ljava/lang/String;
    .end local v9    # "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    goto :goto_4

    .line 936
    .restart local v5    # "argName":Ljava/lang/String;
    .restart local v6    # "splitPos":I
    .restart local v7    # "eqPos":I
    .restart local v8    # "argValue":Ljava/lang/String;
    .restart local v9    # "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    :cond_9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 937
    .local v10, "msg":Ljava/lang/StringBuilder;
    const-string v11, "unknown option name \'%s\' in arg \'%s\'"

    filled-new-array {v5, v4}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    new-instance v11, Lorg/checkerframework/org/plumelib/options/Options$ArgException;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/checkerframework/org/plumelib/options/Options$ArgException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 958
    .end local v5    # "argName":Ljava/lang/String;
    .end local v6    # "splitPos":I
    .end local v7    # "eqPos":I
    .end local v8    # "argValue":Ljava/lang/String;
    .end local v9    # "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    .end local v10    # "msg":Ljava/lang/StringBuilder;
    :cond_a
    iget-boolean v5, p0, Lorg/checkerframework/org/plumelib/options/Options;->parseAfterArg:Z

    if-nez v5, :cond_b

    .line 959
    const/4 v1, 0x1

    .line 961
    :cond_b
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 965
    :goto_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 966
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 969
    .end local v3    # "ii":I
    .end local v4    # "arg":Ljava/lang/String;
    :cond_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 970
    .local v3, "result":[Ljava/lang/String;
    return-object v3
.end method

.method public printUsage()V
    .locals 1

    .line 1114
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/plumelib/options/Options;->printUsage(Ljava/io/PrintStream;)V

    .line 1115
    return-void
.end method

.method public printUsage(Ljava/io/PrintStream;)V
    .locals 3
    .param p1, "ps"    # Ljava/io/PrintStream;

    .line 1101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/org/plumelib/options/Options;->hasListOption:Z

    .line 1102
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/options/Options;->usageSynopsis:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1103
    const-string v2, "Usage: %s%n"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1105
    :cond_0
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/plumelib/options/Options;->usage([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1106
    iget-boolean v0, p0, Lorg/checkerframework/org/plumelib/options/Options;->hasListOption:Z

    if-eqz v0, :cond_1

    .line 1107
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 1108
    const-string v0, "[+] marked option can be specified multiple times"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1110
    :cond_1
    return-void
.end method

.method public setParseAfterArg(Z)V
    .locals 0
    .param p1, "val"    # Z

    .line 863
    iput-boolean p1, p0, Lorg/checkerframework/org/plumelib/options/Options;->parseAfterArg:Z

    .line 864
    return-void
.end method

.method public setUseSingleDash(Z)V
    .locals 0
    .param p1, "val"    # Z

    .line 877
    iput-boolean p1, p0, Lorg/checkerframework/org/plumelib/options/Options;->useSingleDash:Z

    .line 878
    return-void
.end method

.method public settings()Ljava/lang/String;
    .locals 1

    .line 1517
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/plumelib/options/Options;->settings(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public settings(Z)Ljava/lang/String;
    .locals 8
    .param p1, "showUnpublicized"    # Z

    .line 1531
    new-instance v0, Ljava/util/StringJoiner;

    sget-object v1, Lorg/checkerframework/org/plumelib/options/Options;->lineSeparator:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 1534
    .local v0, "out":Ljava/util/StringJoiner;
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/options/Options;->options:Ljava/util/List;

    invoke-direct {p0, v1, p1}, Lorg/checkerframework/org/plumelib/options/Options;->maxOptionLength(Ljava/util/List;Z)I

    move-result v1

    .line 1537
    .local v1, "maxLength":I
    iget-object v2, p0, Lorg/checkerframework/org/plumelib/options/Options;->options:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;

    .line 1539
    .local v3, "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "s = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->longName:Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1541
    .local v4, "use":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->field:Ljava/lang/reflect/Field;

    iget-object v7, v3, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 1544
    nop

    .line 1545
    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1546
    .end local v3    # "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    .end local v4    # "use":Ljava/lang/String;
    goto :goto_0

    .line 1542
    .restart local v3    # "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    .restart local v4    # "use":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1543
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/Error;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected exception reading field "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 1548
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    .end local v4    # "use":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1564
    new-instance v0, Ljava/util/StringJoiner;

    sget-object v1, Lorg/checkerframework/org/plumelib/options/Options;->lineSeparator:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 1566
    .local v0, "out":Ljava/util/StringJoiner;
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/options/Options;->options:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;

    .line 1567
    .local v2, "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    invoke-virtual {v2}, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1568
    .end local v2    # "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    goto :goto_0

    .line 1570
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public varargs usage(Z[Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "showUnpublicized"    # Z
    .param p2, "groupNames"    # [Ljava/lang/String;

    .line 1141
    iget-boolean v0, p0, Lorg/checkerframework/org/plumelib/options/Options;->hasGroups:Z

    if-nez v0, :cond_1

    .line 1142
    array-length v0, p2

    if-gtz v0, :cond_0

    .line 1146
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/options/Options;->options:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/org/plumelib/options/Options;->maxOptionLength(Ljava/util/List;Z)I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lorg/checkerframework/org/plumelib/options/Options;->formatOptions(Ljava/util/List;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1143
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This instance of Options does not have any option groups defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1149
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1150
    .local v0, "groups":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;>;"
    array-length v1, p2

    if-lez v1, :cond_5

    .line 1151
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_8

    aget-object v3, p2, v2

    .line 1152
    .local v3, "groupName":Ljava/lang/String;
    iget-object v4, p0, Lorg/checkerframework/org/plumelib/options/Options;->groupMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1155
    iget-object v4, p0, Lorg/checkerframework/org/plumelib/options/Options;->groupMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;

    .line 1156
    .local v4, "gi":Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;
    if-nez p1, :cond_3

    invoke-virtual {v4}, Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;->anyPublicized()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 1157
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "group does not contain any publicized options: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1160
    :cond_3
    :goto_1
    iget-object v5, p0, Lorg/checkerframework/org/plumelib/options/Options;->groupMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1151
    .end local v3    # "groupName":Ljava/lang/String;
    .end local v4    # "gi":Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1153
    .restart local v3    # "groupName":Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid option group: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1164
    .end local v3    # "groupName":Ljava/lang/String;
    :cond_5
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/options/Options;->groupMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;

    .line 1165
    .local v2, "gi":Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;
    iget-boolean v3, v2, Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;->unpublicized:Z

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;->anyPublicized()Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    if-nez p1, :cond_7

    .line 1166
    goto :goto_2

    .line 1168
    :cond_7
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1169
    .end local v2    # "gi":Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;
    goto :goto_2

    .line 1172
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1173
    .local v1, "lengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;

    .line 1174
    .local v3, "gi":Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;
    iget-object v4, v3, Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;->optionList:Ljava/util/List;

    invoke-direct {p0, v4, p1}, Lorg/checkerframework/org/plumelib/options/Options;->maxOptionLength(Ljava/util/List;Z)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1175
    .end local v3    # "gi":Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;
    goto :goto_3

    .line 1176
    :cond_9
    invoke-static {v1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1178
    .local v2, "maxLength":I
    new-instance v3, Ljava/util/StringJoiner;

    sget-object v4, Lorg/checkerframework/org/plumelib/options/Options;->lineSeparator:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 1179
    .local v3, "buf":Ljava/util/StringJoiner;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;

    .line 1180
    .local v5, "gi":Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;
    iget-object v6, v5, Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;->name:Ljava/lang/String;

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "%n%s:"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1181
    iget-object v6, v5, Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;->optionList:Ljava/util/List;

    invoke-direct {p0, v6, v2, p1}, Lorg/checkerframework/org/plumelib/options/Options;->formatOptions(Ljava/util/List;IZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1182
    .end local v5    # "gi":Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;
    goto :goto_4

    .line 1184
    :cond_a
    invoke-virtual {v3}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public varargs usage([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "groupNames"    # [Ljava/lang/String;

    .line 1127
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/checkerframework/org/plumelib/options/Options;->usage(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
