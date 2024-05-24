.class public Lorg/checkerframework/org/plumelib/options/OptionsDoclet;
.super Ljava/lang/Object;
.source "OptionsDoclet.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LIST_HELP:Ljava/lang/String; = "<code>[+]</code> marked option can be specified multiple times"

.field private static final USAGE:Ljava/lang/String; = "Provided by Options doclet:%n-docfile <file>        Specify file into which options documentation is inserted%n-outfile <file>        Specify destination for resulting output%n-d <directory>         Destination directory for -outfile%n-i                     Edit the docfile in-place%n-format javadoc        Format output as a Javadoc comment%n-classdoc              Include \'main\' class documentation in output%n-singledash            Use single dashes for long options (see org.plumelib.options.Options)%nSee the OptionsDoclet documentation for more details.%n"

.field private static lineSep:Ljava/lang/String;


# instance fields
.field private docFile:Ljava/io/File;

.field private endDelim:Ljava/lang/String;

.field private formatJavadoc:Z

.field private inPlace:Z

.field private includeClassDoc:Z

.field private options:Lorg/checkerframework/org/plumelib/options/Options;

.field private outFile:Ljava/io/File;

.field private root:Lcom/sun/javadoc/RootDoc;

.field private startDelim:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 171
    nop

    .line 174
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->lineSep:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sun/javadoc/RootDoc;Lorg/checkerframework/org/plumelib/options/Options;)V
    .locals 1
    .param p1, "root"    # Lcom/sun/javadoc/RootDoc;
    .param p2, "options"    # Lorg/checkerframework/org/plumelib/options/Options;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    const-string v0, "<!-- start options doc (DO NOT EDIT BY HAND) -->"

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->startDelim:Ljava/lang/String;

    .line 191
    const-string v0, "<!-- end options doc -->"

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->endDelim:Ljava/lang/String;

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->docFile:Ljava/io/File;

    .line 194
    iput-object v0, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->outFile:Ljava/io/File;

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->inPlace:Z

    .line 199
    iput-boolean v0, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->formatJavadoc:Z

    .line 201
    iput-boolean v0, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->includeClassDoc:Z

    .line 213
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->root:Lcom/sun/javadoc/RootDoc;

    .line 214
    iput-object p2, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->options:Lorg/checkerframework/org/plumelib/options/Options;

    .line 215
    return-void
.end method

.method public static javadocToHtml(Lcom/sun/javadoc/Doc;)Ljava/lang/String;
    .locals 12
    .param p0, "doc"    # Lcom/sun/javadoc/Doc;

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 861
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Lcom/sun/javadoc/Doc;->inlineTags()[Lcom/sun/javadoc/Tag;

    move-result-object v1

    .line 862
    .local v1, "tags":[Lcom/sun/javadoc/Tag;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string v5, "</code>"

    const-string v6, "<code>"

    if-ge v4, v2, :cond_2

    aget-object v7, v1, v4

    .line 863
    .local v7, "tag":Lcom/sun/javadoc/Tag;
    invoke-interface {v7}, Lcom/sun/javadoc/Tag;->kind()Ljava/lang/String;

    move-result-object v8

    .line 864
    .local v8, "kind":Ljava/lang/String;
    invoke-interface {v7}, Lcom/sun/javadoc/Tag;->text()Ljava/lang/String;

    move-result-object v9

    .line 865
    .local v9, "text":Ljava/lang/String;
    instance-of v10, v7, Lcom/sun/javadoc/SeeTag;

    if-eqz v10, :cond_0

    .line 866
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v10, 0x23

    const/16 v11, 0x2e

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 868
    :cond_0
    const-string v10, "@code"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 869
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v9}, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils;->escapeHtml4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 871
    :cond_1
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    .end local v7    # "tag":Lcom/sun/javadoc/Tag;
    .end local v8    # "kind":Ljava/lang/String;
    .end local v9    # "text":Ljava/lang/String;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 875
    :cond_2
    invoke-interface {p0}, Lcom/sun/javadoc/Doc;->seeTags()[Lcom/sun/javadoc/SeeTag;

    move-result-object v2

    .line 876
    .local v2, "seetags":[Lcom/sun/javadoc/SeeTag;
    array-length v4, v2

    if-lez v4, :cond_4

    .line 877
    const-string v4, " See: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    new-instance v4, Ljava/util/StringJoiner;

    const-string v7, ", "

    invoke-direct {v4, v7}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 880
    .local v4, "bb":Ljava/util/StringJoiner;
    array-length v7, v2

    :goto_2
    if-ge v3, v7, :cond_3

    aget-object v8, v2, v3

    .line 881
    .local v8, "tag":Lcom/sun/javadoc/SeeTag;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v8}, Lcom/sun/javadoc/SeeTag;->text()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 880
    .end local v8    # "tag":Lcom/sun/javadoc/SeeTag;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 883
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 885
    .end local v4    # "bb":Ljava/util/StringJoiner;
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static needsInstantiation(Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 459
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 460
    .local v4, "f":Ljava/lang/reflect/Field;
    const-class v5, Lorg/checkerframework/org/plumelib/options/Option;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 461
    const/4 v0, 0x1

    return v0

    .line 459
    .end local v4    # "f":Ljava/lang/reflect/Field;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 464
    :cond_1
    return v2
.end method

.method private newDocFileText()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "docFile"
        }
    .end annotation

    .line 520
    new-instance v0, Ljava/util/StringJoiner;

    sget-object v1, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->lineSep:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 521
    .local v0, "b":Ljava/util/StringJoiner;
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->docFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object v1

    .line 523
    .local v1, "doc":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 524
    .local v2, "replacing":Z
    const/4 v3, 0x0

    .line 525
    .local v3, "replacedOnce":Z
    const/4 v4, 0x0

    .line 527
    .local v4, "prefix":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "docline":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 528
    if-eqz v2, :cond_1

    .line 529
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->endDelim:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 530
    const/4 v2, 0x0

    .line 536
    :cond_1
    invoke-virtual {v0, v6}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 538
    if-nez v3, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->startDelim:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 539
    iget-boolean v5, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->formatJavadoc:Z

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    .line 540
    const/16 v5, 0x2a

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 541
    .local v5, "starIndex":I
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 542
    const/16 v8, 0x64

    invoke-virtual {p0, v5, v8}, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->optionsToJavadoc(II)Ljava/lang/String;

    move-result-object v8

    .line 543
    .local v8, "jdoc":Ljava/lang/String;
    invoke-virtual {v0, v8}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 544
    const-string v9, "</ul>"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 545
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 547
    .end local v5    # "starIndex":I
    .end local v8    # "jdoc":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 548
    :cond_3
    invoke-virtual {p0, v7}, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->optionsToHtml(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 550
    :goto_1
    const/4 v3, 0x1

    .line 551
    const/4 v2, 0x1

    goto :goto_0

    .line 555
    :cond_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 556
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static optionLength(Ljava/lang/String;)I
    .locals 4
    .param p0, "option"    # Ljava/lang/String;

    .line 300
    const-string v0, "-help"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 301
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Provided by Options doclet:%n-docfile <file>        Specify file into which options documentation is inserted%n-outfile <file>        Specify destination for resulting output%n-d <directory>         Destination directory for -outfile%n-i                     Edit the docfile in-place%n-format javadoc        Format output as a Javadoc comment%n-classdoc              Include \'main\' class documentation in output%n-singledash            Use single dashes for long options (see org.plumelib.options.Options)%nSee the OptionsDoclet documentation for more details.%n"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 302
    return v1

    .line 304
    :cond_0
    const-string v0, "-i"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "-classdoc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "-singledash"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 307
    :cond_1
    const-string v0, "-docfile"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 308
    const-string v0, "-outfile"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 309
    const-string v0, "-format"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 310
    const-string v0, "-d"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 313
    :cond_2
    return v2

    .line 311
    :cond_3
    :goto_0
    const/4 v0, 0x2

    return v0

    .line 305
    :cond_4
    :goto_1
    return v1
.end method

.method private optionListToHtml(Ljava/util/List;III)Ljava/lang/String;
    .locals 7
    .param p2, "padding"    # I
    .param p3, "firstLinePadding"    # I
    .param p4, "refillWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;",
            ">;III)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 717
    .local p1, "optList":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;>;"
    new-instance v0, Ljava/util/StringJoiner;

    sget-object v1, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->lineSep:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 718
    .local v0, "b":Ljava/util/StringJoiner;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;

    .line 719
    .local v2, "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    iget-boolean v3, v2, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->unpublicized:Z

    if-eqz v3, :cond_0

    .line 720
    goto :goto_0

    .line 722
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 723
    .local v3, "bb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v2, p2}, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->optionToHtml(Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;I)Ljava/lang/String;

    move-result-object v4

    .line 724
    .local v4, "optHtml":Ljava/lang/String;
    const-string v5, " "

    invoke-static {v5, p2}, Lorg/checkerframework/org/apache/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<li id=\"option:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->longName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    if-gtz p4, :cond_1

    .line 728
    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_1

    .line 730
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, p2, p3, p4}, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->refill(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 732
    .end local v2    # "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    .end local v3    # "bb":Ljava/lang/StringBuilder;
    .end local v4    # "optHtml":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 733
    :cond_2
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private processEnumJavadoc(Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;)V
    .locals 10
    .param p1, "oi"    # Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;

    .line 597
    iget-object v0, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->baseType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    .line 598
    .local v0, "constants":[Ljava/lang/Enum;, "[Ljava/lang/Enum<*>;"
    if-nez v0, :cond_0

    .line 599
    return-void

    .line 602
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->enumJdoc:Ljava/util/Map;

    .line 604
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "@AssumeAssertion(nullness): bug in flow?"

    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    .line 605
    .local v5, "constant":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    iget-object v6, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->enumJdoc:Ljava/util/Map;

    if-eqz v6, :cond_1

    .line 606
    iget-object v4, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->enumJdoc:Ljava/util/Map;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    .end local v5    # "constant":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 605
    .restart local v5    # "constant":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 609
    .end local v5    # "constant":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :cond_2
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->root:Lcom/sun/javadoc/RootDoc;

    iget-object v3, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->baseType:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/sun/javadoc/RootDoc;->classNamed(Ljava/lang/String;)Lcom/sun/javadoc/ClassDoc;

    move-result-object v1

    .line 610
    .local v1, "enumDoc":Lcom/sun/javadoc/ClassDoc;
    if-nez v1, :cond_3

    .line 611
    return-void

    .line 614
    :cond_3
    iget-object v3, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->enumJdoc:Ljava/util/Map;

    if-eqz v3, :cond_8

    .line 615
    iget-object v3, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->enumJdoc:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 616
    .local v4, "name":Ljava/lang/String;
    invoke-interface {v1}, Lcom/sun/javadoc/ClassDoc;->fields()[Lcom/sun/javadoc/FieldDoc;

    move-result-object v5

    array-length v6, v5

    move v7, v2

    :goto_2
    if-ge v7, v6, :cond_6

    aget-object v8, v5, v7

    .line 617
    .local v8, "fd":Lcom/sun/javadoc/FieldDoc;
    invoke-interface {v8}, Lcom/sun/javadoc/FieldDoc;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 618
    iget-boolean v5, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->formatJavadoc:Z

    if-eqz v5, :cond_4

    .line 619
    iget-object v5, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->enumJdoc:Ljava/util/Map;

    invoke-interface {v8}, Lcom/sun/javadoc/FieldDoc;->commentText()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 621
    :cond_4
    iget-object v5, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->enumJdoc:Ljava/util/Map;

    invoke-static {v8}, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->javadocToHtml(Lcom/sun/javadoc/Doc;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    goto :goto_3

    .line 616
    .end local v8    # "fd":Lcom/sun/javadoc/FieldDoc;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 626
    .end local v4    # "name":Ljava/lang/String;
    :cond_6
    :goto_3
    goto :goto_1

    .line 627
    :cond_7
    return-void

    .line 614
    :cond_8
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method private refill(Ljava/lang/String;III)Ljava/lang/String;
    .locals 16
    .param p1, "in"    # Ljava/lang/String;
    .param p2, "padding"    # I
    .param p3, "firstLinePadding"    # I
    .param p4, "refillWidth"    # I

    .line 747
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p4

    if-gtz v2, :cond_0

    .line 748
    return-object v0

    .line 752
    :cond_0
    const/4 v3, 0x0

    .line 753
    .local v3, "suffix":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->lineSep:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<ul>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->lineSep:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 754
    .local v4, "ulPos":I
    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 757
    sget-object v7, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->lineSep:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 758
    .local v7, "suffixTemp":Ljava/lang/String;
    move-object v3, v7

    .line 759
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 762
    .end local v7    # "suffixTemp":Ljava/lang/String;
    .end local p1    # "in":Ljava/lang/String;
    .local v0, "in":Ljava/lang/String;
    :cond_1
    const-string v7, "[ \n\r]+"

    const-string v8, " "

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 765
    .local v7, "compressedSpaces":Ljava/lang/String;
    const-string v9, "<code> "

    const-string v10, "<code>"

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 766
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 767
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 769
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v10, p3

    invoke-static {v8, v10}, Lorg/checkerframework/org/apache/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 770
    .local v9, "oneLine":Ljava/lang/String;
    new-instance v11, Ljava/util/StringJoiner;

    sget-object v12, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->lineSep:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 771
    .local v11, "multiLine":Ljava/util/StringJoiner;
    :goto_0
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-le v12, v2, :cond_5

    .line 772
    const/16 v12, 0x20

    invoke-virtual {v9, v12, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v12

    .line 773
    .local v12, "breakLoc":I
    if-ne v12, v6, :cond_3

    .line 774
    goto :goto_1

    .line 776
    :cond_3
    invoke-virtual {v9, v5, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 777
    .local v13, "firstPart":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 778
    goto :goto_1

    .line 780
    :cond_4
    invoke-virtual {v11, v13}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 781
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8, v1}, Lorg/checkerframework/org/apache/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v12, 0x1

    invoke-virtual {v9, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 782
    .end local v12    # "breakLoc":I
    .end local v13    # "firstPart":Ljava/lang/String;
    goto :goto_0

    .line 783
    :cond_5
    :goto_1
    invoke-virtual {v11, v9}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 784
    if-eqz v3, :cond_6

    .line 785
    new-instance v5, Ljava/util/Scanner;

    invoke-direct {v5, v3}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 786
    .local v5, "s":Ljava/util/Scanner;
    :goto_2
    invoke-virtual {v5}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 787
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8, v1}, Lorg/checkerframework/org/apache/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_2

    .line 790
    .end local v5    # "s":Ljava/util/Scanner;
    :cond_6
    invoke-virtual {v11}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static start(Lcom/sun/javadoc/RootDoc;)Z
    .locals 9
    .param p0, "root"    # Lcom/sun/javadoc/RootDoc;

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v0, "objs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p0}, Lcom/sun/javadoc/RootDoc;->specifiedClasses()[Lcom/sun/javadoc/ClassDoc;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_2

    aget-object v6, v1, v4

    .line 233
    .local v6, "doc":Lcom/sun/javadoc/ClassDoc;
    invoke-interface {v6}, Lcom/sun/javadoc/ClassDoc;->containingClass()Lcom/sun/javadoc/ClassDoc;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 234
    goto :goto_1

    .line 240
    :cond_0
    :try_start_0
    invoke-interface {v6}, Lcom/sun/javadoc/ClassDoc;->qualifiedName()Ljava/lang/String;

    move-result-object v7

    .line 241
    .local v7, "className":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-static {v7, v5, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v7, v8

    .line 246
    .local v7, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 248
    invoke-static {v7}, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->needsInstantiation(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 250
    :try_start_1
    new-array v8, v3, [Ljava/lang/Class;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    .line 251
    .local v8, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v8, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 252
    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v8, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 256
    nop

    .end local v8    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_1

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 255
    return v3

    .line 258
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    .end local v6    # "doc":Lcom/sun/javadoc/ClassDoc;
    .end local v7    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 242
    .restart local v6    # "doc":Lcom/sun/javadoc/ClassDoc;
    :catch_1
    move-exception v1

    .line 243
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 244
    invoke-static {}, Lorg/checkerframework/org/plumelib/options/Options;->printClassPath()V

    .line 245
    return v3

    .line 262
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .end local v6    # "doc":Lcom/sun/javadoc/ClassDoc;
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 263
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Error: no classes found"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 264
    return v3

    .line 267
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 268
    .local v1, "objarray":[Ljava/lang/Object;
    new-instance v2, Lorg/checkerframework/org/plumelib/options/Options;

    invoke-direct {v2, v1}, Lorg/checkerframework/org/plumelib/options/Options;-><init>([Ljava/lang/Object;)V

    .line 269
    .local v2, "options":Lorg/checkerframework/org/plumelib/options/Options;
    invoke-virtual {v2}, Lorg/checkerframework/org/plumelib/options/Options;->getOptions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v5, :cond_4

    .line 270
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Error: no @Option-annotated fields found"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 271
    return v3

    .line 274
    :cond_4
    new-instance v4, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;

    invoke-direct {v4, p0, v2}, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;-><init>(Lcom/sun/javadoc/RootDoc;Lorg/checkerframework/org/plumelib/options/Options;)V

    .line 275
    .local v4, "o":Lorg/checkerframework/org/plumelib/options/OptionsDoclet;
    invoke-interface {p0}, Lcom/sun/javadoc/RootDoc;->options()[[Ljava/lang/String;

    move-result-object v6

    .line 276
    .local v6, "rootOptions":[[Ljava/lang/String;
    invoke-virtual {v4, v6}, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->setOptions([[Ljava/lang/String;)V

    .line 277
    invoke-virtual {v4}, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->processJavadoc()V

    .line 279
    :try_start_2
    invoke-virtual {v4}, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->write()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 283
    nop

    .line 285
    return v5

    .line 280
    :catch_2
    move-exception v5

    .line 281
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 282
    return v3
.end method

.method public static validOptions([[Ljava/lang/String;Lcom/sun/javadoc/DocErrorReporter;)Z
    .locals 17
    .param p0, "options"    # [[Ljava/lang/String;
    .param p1, "reporter"    # Lcom/sun/javadoc/DocErrorReporter;

    .line 332
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 333
    .local v2, "hasDocFile":Z
    const/4 v3, 0x0

    .line 334
    .local v3, "hasOutFile":Z
    const/4 v4, 0x0

    .line 335
    .local v4, "hasDestDir":Z
    const/4 v5, 0x0

    .line 336
    .local v5, "hasFormat":Z
    const/4 v6, 0x0

    .line 337
    .local v6, "inPlace":Z
    const/4 v7, 0x0

    .line 338
    .local v7, "docFile":Ljava/lang/String;
    const/4 v8, 0x0

    .line 339
    .local v8, "outFile":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "oi":I
    :goto_0
    array-length v10, v0

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-ge v9, v10, :cond_10

    .line 340
    aget-object v10, v0, v9

    .line 341
    .local v10, "os":[Ljava/lang/String;
    aget-object v13, v10, v12

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 342
    .local v13, "opt":Ljava/lang/String;
    const-string v14, "-docfile"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const/4 v15, 0x2

    if-eqz v14, :cond_3

    .line 343
    if-eqz v2, :cond_0

    .line 344
    const-string v11, "-docfile option specified twice"

    invoke-interface {v1, v11}, Lcom/sun/javadoc/DocErrorReporter;->printError(Ljava/lang/String;)V

    .line 345
    return v12

    .line 347
    :cond_0
    array-length v14, v10

    if-ne v14, v15, :cond_2

    .line 348
    aget-object v7, v10, v11

    .line 349
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 350
    .local v14, "f":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_1

    .line 351
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "-docfile file not found: "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v11}, Lcom/sun/javadoc/DocErrorReporter;->printError(Ljava/lang/String;)V

    .line 352
    return v12

    .line 354
    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .line 347
    .end local v14    # "f":Ljava/io/File;
    :cond_2
    new-instance v11, Ljava/lang/AssertionError;

    const-string v12, "@AssumeAssertion(value): dependent: optionLength(\"docfile\")==2"

    invoke-direct {v11, v12}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v11

    .line 356
    :cond_3
    :goto_1
    const-string v14, "-outfile"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const-string v11, "-i and -outfile can not be used at the same time"

    if-eqz v14, :cond_7

    .line 357
    if-eqz v3, :cond_4

    .line 358
    const-string v11, "-outfile option specified twice"

    invoke-interface {v1, v11}, Lcom/sun/javadoc/DocErrorReporter;->printError(Ljava/lang/String;)V

    .line 359
    return v12

    .line 361
    :cond_4
    if-eqz v6, :cond_5

    .line 362
    invoke-interface {v1, v11}, Lcom/sun/javadoc/DocErrorReporter;->printError(Ljava/lang/String;)V

    .line 363
    return v12

    .line 365
    :cond_5
    array-length v14, v10

    if-ne v14, v15, :cond_6

    .line 366
    const/4 v14, 0x1

    aget-object v8, v10, v14

    .line 367
    const/4 v3, 0x1

    goto :goto_2

    .line 365
    :cond_6
    new-instance v11, Ljava/lang/AssertionError;

    const-string v12, "@AssumeAssertion(value): dependent: optionLength(\"outfile\")==2"

    invoke-direct {v11, v12}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v11

    .line 369
    :cond_7
    :goto_2
    const-string v14, "-i"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 370
    if-eqz v3, :cond_8

    .line 371
    invoke-interface {v1, v11}, Lcom/sun/javadoc/DocErrorReporter;->printError(Ljava/lang/String;)V

    .line 372
    return v12

    .line 374
    :cond_8
    const/4 v6, 0x1

    .line 376
    :cond_9
    const-string v11, "-format"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 377
    if-eqz v5, :cond_a

    .line 378
    const-string v11, "-format option specified twice"

    invoke-interface {v1, v11}, Lcom/sun/javadoc/DocErrorReporter;->printError(Ljava/lang/String;)V

    .line 379
    return v12

    .line 381
    :cond_a
    array-length v11, v10

    if-ne v11, v15, :cond_c

    .line 382
    const/4 v11, 0x1

    aget-object v11, v10, v11

    .line 383
    .local v11, "format":Ljava/lang/String;
    const-string v14, "javadoc"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    const-string v14, "html"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    .line 384
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "unrecognized output format: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v1, v14}, Lcom/sun/javadoc/DocErrorReporter;->printError(Ljava/lang/String;)V

    .line 385
    return v12

    .line 387
    :cond_b
    const/4 v5, 0x1

    goto :goto_3

    .line 381
    .end local v11    # "format":Ljava/lang/String;
    :cond_c
    new-instance v11, Ljava/lang/AssertionError;

    const-string v12, "@AssumeAssertion(value): dependent: optionLength(\"format\")==2"

    invoke-direct {v11, v12}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v11

    .line 389
    :cond_d
    :goto_3
    const-string v11, "-d"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 390
    if-eqz v4, :cond_e

    .line 391
    const-string v11, "-d specified twice"

    invoke-interface {v1, v11}, Lcom/sun/javadoc/DocErrorReporter;->printError(Ljava/lang/String;)V

    .line 392
    return v12

    .line 394
    :cond_e
    const/4 v4, 0x1

    .line 339
    .end local v10    # "os":[Ljava/lang/String;
    .end local v13    # "opt":Ljava/lang/String;
    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 397
    .end local v9    # "oi":I
    :cond_10
    if-eqz v7, :cond_11

    if-eqz v8, :cond_11

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 398
    const-string v9, "docfile must be different from outfile"

    invoke-interface {v1, v9}, Lcom/sun/javadoc/DocErrorReporter;->printError(Ljava/lang/String;)V

    .line 399
    return v12

    .line 401
    :cond_11
    if-eqz v6, :cond_12

    if-nez v7, :cond_12

    .line 402
    const-string v9, "-i supplied but -docfile was not"

    invoke-interface {v1, v9}, Lcom/sun/javadoc/DocErrorReporter;->printError(Ljava/lang/String;)V

    .line 403
    return v12

    .line 405
    :cond_12
    const/4 v9, 0x1

    return v9
.end method


# virtual methods
.method public getFormatJavadoc()Z
    .locals 1

    .line 898
    iget-boolean v0, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->formatJavadoc:Z

    return v0
.end method

.method public getUseSingleDash()Z
    .locals 1

    .line 923
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->options:Lorg/checkerframework/org/plumelib/options/Options;

    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/options/Options;->getUseSingleDash()Z

    move-result v0

    return v0
.end method

.method public optionToHtml(Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;I)Ljava/lang/String;
    .locals 10
    .param p1, "oi"    # Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    .param p2, "padding"    # I

    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 803
    .local v0, "b":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 804
    .local v1, "f":Ljava/util/Formatter;
    iget-object v2, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->shortName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 805
    iget-object v2, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->shortName:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "<b>-%s</b> "

    invoke-virtual {v1, v3, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 807
    :cond_0
    iget-object v2, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->aliases:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 808
    .local v6, "a":Ljava/lang/String;
    const-string v7, "<b>%s</b> "

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 807
    .end local v6    # "a":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 810
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->getUseSingleDash()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "-"

    goto :goto_1

    :cond_2
    const-string v2, "--"

    .line 811
    .local v2, "prefix":Ljava/lang/String;
    :goto_1
    iget-object v3, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->longName:Ljava/lang/String;

    iget-object v5, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->typeName:Ljava/lang/String;

    filled-new-array {v2, v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "<b>%s%s=</b><i>%s</i>"

    invoke-virtual {v1, v5, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 812
    iget-object v3, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->list:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 813
    const-string v3, " <code>[+]</code>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    :cond_3
    const-string v3, ".%n "

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 816
    const-string v3, " "

    invoke-static {v3, p2}, Lorg/checkerframework/org/apache/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%s"

    invoke-virtual {v1, v6, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 818
    iget-object v5, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->jdoc:Ljava/lang/String;

    if-nez v5, :cond_4

    const-string v5, ""

    goto :goto_2

    :cond_4
    iget-object v5, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->jdoc:Ljava/lang/String;

    .line 819
    .local v5, "jdoc":Ljava/lang/String;
    :goto_2
    iget-boolean v7, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->noDocDefault:Z

    if-nez v7, :cond_7

    iget-object v7, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->defaultStr:Ljava/lang/String;

    if-nez v7, :cond_5

    goto :goto_3

    .line 822
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "default "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->defaultStr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 825
    .local v6, "defaultStr":Ljava/lang/String;
    const-string v7, ""

    .line 826
    .local v7, "suffix":Ljava/lang/String;
    const-string v8, "</p>"

    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 827
    const-string v7, "</p>"

    .line 828
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v5, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 830
    :cond_6
    invoke-static {v6}, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils;->escapeHtml4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v5, v4, v7}, [Ljava/lang/Object;

    move-result-object v4

    const-string v8, "%s [%s]%s"

    invoke-virtual {v1, v8, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_4

    .line 820
    .end local v6    # "defaultStr":Ljava/lang/String;
    .end local v7    # "suffix":Ljava/lang/String;
    :cond_7
    :goto_3
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v6, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 832
    :goto_4
    iget-object v4, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->baseType:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 833
    sget-object v4, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->lineSep:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "<ul>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->lineSep:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    iget-object v4, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->enumJdoc:Ljava/util/Map;

    if-eqz v4, :cond_a

    .line 836
    iget-object v4, p1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->enumJdoc:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 837
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "  <li><b>"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</b>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_8

    .line 839
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    :cond_8
    sget-object v7, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->lineSep:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_5

    .line 844
    :cond_9
    const-string v3, "</ul>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->lineSep:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 834
    :cond_a
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "@AssumeAssertion(nullness): dependent: non-null if oi.baseType is an enum"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 846
    :cond_b
    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public optionsToHtml(I)Ljava/lang/String;
    .locals 9
    .param p1, "refillWidth"    # I

    .line 636
    new-instance v0, Ljava/util/StringJoiner;

    sget-object v1, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->lineSep:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 638
    .local v0, "b":Ljava/util/StringJoiner;
    iget-boolean v1, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->includeClassDoc:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->root:Lcom/sun/javadoc/RootDoc;

    invoke-interface {v1}, Lcom/sun/javadoc/RootDoc;->classes()[Lcom/sun/javadoc/ClassDoc;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 639
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->root:Lcom/sun/javadoc/RootDoc;

    invoke-interface {v1}, Lcom/sun/javadoc/RootDoc;->classes()[Lcom/sun/javadoc/ClassDoc;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->javadocToHtml(Lcom/sun/javadoc/Doc;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 640
    const-string v1, "<p>Command line options:</p>"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 643
    :cond_0
    const-string v1, "<ul>"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 644
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->options:Lorg/checkerframework/org/plumelib/options/Options;

    invoke-virtual {v1}, Lorg/checkerframework/org/plumelib/options/Options;->hasGroups()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x6

    if-nez v1, :cond_1

    .line 645
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->options:Lorg/checkerframework/org/plumelib/options/Options;

    invoke-virtual {v1}, Lorg/checkerframework/org/plumelib/options/Options;->getOptions()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, v3, v2, p1}, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->optionListToHtml(Ljava/util/List;III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_1

    .line 647
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->options:Lorg/checkerframework/org/plumelib/options/Options;

    invoke-virtual {v1}, Lorg/checkerframework/org/plumelib/options/Options;->getOptionGroups()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;

    .line 649
    .local v4, "gi":Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;
    invoke-virtual {v4}, Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;->anyPublicized()Z

    move-result v5

    if-nez v5, :cond_2

    .line 650
    goto :goto_0

    .line 653
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  <li id=\"optiongroup:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;->name:Ljava/lang/String;

    .line 655
    const-string v7, " "

    const-string v8, "-"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 658
    .local v5, "ogroupHeader":Ljava/lang/String;
    invoke-direct {p0, v5, v3, v2, p1}, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->refill(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 659
    const-string v6, "      <ul>"

    invoke-virtual {v0, v6}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 660
    iget-object v6, v4, Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;->optionList:Ljava/util/List;

    const/16 v7, 0xc

    const/16 v8, 0x8

    invoke-direct {p0, v6, v7, v8, p1}, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->optionListToHtml(Ljava/util/List;III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 661
    const-string v6, "      </ul>"

    invoke-virtual {v0, v6}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 663
    .end local v4    # "gi":Lorg/checkerframework/org/plumelib/options/Options$OptionGroupInfo;
    .end local v5    # "ogroupHeader":Ljava/lang/String;
    goto :goto_0

    .line 665
    :cond_3
    :goto_1
    const-string v1, "</ul>"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 667
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->options:Lorg/checkerframework/org/plumelib/options/Options;

    invoke-virtual {v1}, Lorg/checkerframework/org/plumelib/options/Options;->getOptions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;

    .line 668
    .local v2, "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    iget-object v3, v2, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->list:Ljava/util/List;

    if-eqz v3, :cond_4

    iget-boolean v3, v2, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->unpublicized:Z

    if-nez v3, :cond_4

    .line 669
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 670
    const-string v1, "<code>[+]</code> marked option can be specified multiple times"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 671
    goto :goto_3

    .line 673
    .end local v2    # "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    :cond_4
    goto :goto_2

    .line 675
    :cond_5
    :goto_3
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public optionsToJavadoc(II)Ljava/lang/String;
    .locals 6
    .param p1, "padding"    # I
    .param p2, "refillWidth"    # I

    .line 686
    new-instance v0, Ljava/util/StringJoiner;

    sget-object v1, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->lineSep:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 687
    .local v0, "b":Ljava/util/StringJoiner;
    new-instance v1, Ljava/util/Scanner;

    sub-int v2, p2, p1

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->optionsToHtml(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 689
    .local v1, "s":Ljava/util/Scanner;
    :goto_0
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 690
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    .line 691
    .local v2, "line":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 692
    .local v3, "bb":Ljava/lang/StringBuilder;
    const-string v4, " "

    invoke-static {v4, p1}, Lorg/checkerframework/org/apache/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 694
    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 696
    :cond_0
    const-string v4, "* "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 699
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "bb":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 701
    :cond_1
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public output()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 501
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->docFile:Ljava/io/File;

    if-nez v0, :cond_1

    .line 502
    iget-boolean v0, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->formatJavadoc:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 503
    const/16 v0, 0x63

    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->optionsToJavadoc(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 505
    :cond_0
    invoke-virtual {p0, v1}, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->optionsToHtml(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 509
    :cond_1
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->newDocFileText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public processJavadoc()V
    .locals 9

    .line 563
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->options:Lorg/checkerframework/org/plumelib/options/Options;

    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/options/Options;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;

    .line 564
    .local v1, "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    iget-object v2, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->root:Lcom/sun/javadoc/RootDoc;

    invoke-virtual {v1}, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sun/javadoc/RootDoc;->classNamed(Ljava/lang/String;)Lcom/sun/javadoc/ClassDoc;

    move-result-object v2

    .line 565
    .local v2, "optDoc":Lcom/sun/javadoc/ClassDoc;
    if-eqz v2, :cond_3

    .line 566
    iget-object v3, v1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->longName:Ljava/lang/String;

    const/16 v4, 0x2d

    const/16 v5, 0x5f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 567
    .local v3, "nameWithUnderscores":Ljava/lang/String;
    invoke-interface {v2}, Lcom/sun/javadoc/ClassDoc;->fields()[Lcom/sun/javadoc/FieldDoc;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    .line 568
    .local v7, "fd":Lcom/sun/javadoc/FieldDoc;
    invoke-interface {v7}, Lcom/sun/javadoc/FieldDoc;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 571
    invoke-interface {v7}, Lcom/sun/javadoc/FieldDoc;->getRawCommentText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 574
    iget-object v4, v1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->description:Ljava/lang/String;

    invoke-static {v4}, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils;->escapeHtml4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->jdoc:Ljava/lang/String;

    goto :goto_2

    .line 575
    :cond_0
    iget-boolean v4, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->formatJavadoc:Z

    if-eqz v4, :cond_1

    .line 576
    invoke-interface {v7}, Lcom/sun/javadoc/FieldDoc;->commentText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->jdoc:Ljava/lang/String;

    goto :goto_2

    .line 578
    :cond_1
    invoke-static {v7}, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->javadocToHtml(Lcom/sun/javadoc/Doc;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->jdoc:Ljava/lang/String;

    .line 580
    goto :goto_2

    .line 567
    .end local v7    # "fd":Lcom/sun/javadoc/FieldDoc;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 584
    .end local v3    # "nameWithUnderscores":Ljava/lang/String;
    :cond_3
    :goto_2
    iget-object v3, v1, Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;->baseType:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 585
    invoke-direct {p0, v1}, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->processEnumJavadoc(Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;)V

    .line 587
    .end local v1    # "oi":Lorg/checkerframework/org/plumelib/options/Options$OptionInfo;
    .end local v2    # "optDoc":Lcom/sun/javadoc/ClassDoc;
    :cond_4
    goto :goto_0

    .line 588
    :cond_5
    return-void
.end method

.method public setFormatJavadoc(Z)V
    .locals 3
    .param p1, "val"    # Z

    .line 907
    const-string v0, "* "

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->formatJavadoc:Z

    if-nez v1, :cond_0

    .line 908
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->startDelim:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->startDelim:Ljava/lang/String;

    .line 909
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->endDelim:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->endDelim:Ljava/lang/String;

    goto :goto_0

    .line 910
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v1, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->formatJavadoc:Z

    if-eqz v1, :cond_1

    .line 911
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->startDelim:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/checkerframework/org/apache/commons/lang3/StringUtils;->removeStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->startDelim:Ljava/lang/String;

    .line 912
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->endDelim:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/checkerframework/org/apache/commons/lang3/StringUtils;->removeStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->endDelim:Ljava/lang/String;

    .line 914
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->formatJavadoc:Z

    .line 915
    return-void
.end method

.method public setOptions([[Ljava/lang/String;)V
    .locals 8
    .param p1, "options"    # [[Ljava/lang/String;

    .line 416
    const/4 v0, 0x0

    .line 417
    .local v0, "outFilename":Ljava/lang/String;
    const/4 v1, 0x0

    .line 418
    .local v1, "destDir":Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "oi":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_b

    .line 419
    aget-object v3, p1, v2

    .line 420
    .local v3, "os":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 421
    .local v4, "opt":Ljava/lang/String;
    const-string v5, "-docfile"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    .line 422
    array-length v5, v3

    if-ne v5, v6, :cond_0

    .line 423
    new-instance v5, Ljava/io/File;

    aget-object v6, v3, v7

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->docFile:Ljava/io/File;

    goto/16 :goto_1

    .line 422
    :cond_0
    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "@AssumeAssertion(value): dependent: optionLength(\"docfile\")==2"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 424
    :cond_1
    const-string v5, "-d"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 425
    array-length v5, v3

    if-ne v5, v6, :cond_2

    .line 426
    new-instance v5, Ljava/io/File;

    aget-object v6, v3, v7

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    goto :goto_1

    .line 425
    :cond_2
    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "@AssumeAssertion(value): dependent: optionLength(\"d\")==2"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 427
    :cond_3
    const-string v5, "-outfile"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 428
    array-length v5, v3

    if-ne v5, v6, :cond_4

    .line 429
    aget-object v0, v3, v7

    goto :goto_1

    .line 428
    :cond_4
    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "@AssumeAssertion(value): dependent: optionLength(\"outfile\")==2"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 430
    :cond_5
    const-string v5, "-i"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 431
    iput-boolean v7, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->inPlace:Z

    goto :goto_1

    .line 432
    :cond_6
    const-string v5, "-format"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 433
    array-length v5, v3

    if-ne v5, v6, :cond_7

    .line 434
    aget-object v5, v3, v7

    const-string v6, "javadoc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 435
    invoke-virtual {p0, v7}, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->setFormatJavadoc(Z)V

    goto :goto_1

    .line 433
    :cond_7
    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "@AssumeAssertion(value): dependent: optionLength(\"format\")==2"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 437
    :cond_8
    const-string v5, "-classdoc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 438
    iput-boolean v7, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->includeClassDoc:Z

    goto :goto_1

    .line 439
    :cond_9
    const-string v5, "-singledash"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 440
    invoke-virtual {p0, v7}, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->setUseSingleDash(Z)V

    .line 418
    .end local v3    # "os":[Ljava/lang/String;
    .end local v4    # "opt":Ljava/lang/String;
    :cond_a
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 443
    .end local v2    # "oi":I
    :cond_b
    if-eqz v0, :cond_d

    .line 444
    if-eqz v1, :cond_c

    .line 445
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->outFile:Ljava/io/File;

    goto :goto_2

    .line 447
    :cond_c
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->outFile:Ljava/io/File;

    .line 450
    :cond_d
    :goto_2
    return-void
.end method

.method public setUseSingleDash(Z)V
    .locals 2
    .param p1, "val"    # Z

    .line 932
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->options:Lorg/checkerframework/org/plumelib/options/Options;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/plumelib/options/Options;->setUseSingleDash(Z)V

    .line 933
    return-void
.end method

.method public write()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 476
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->output()Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, "output":Ljava/lang/String;
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->outFile:Ljava/io/File;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 479
    new-instance v1, Ljava/io/PrintWriter;

    iget-object v3, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->outFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v3, v4, v2}, Ljava/nio/file/Files;->newBufferedWriter(Ljava/nio/file/Path;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/io/BufferedWriter;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .local v1, "out":Ljava/io/PrintWriter;
    goto :goto_0

    .line 480
    .end local v1    # "out":Ljava/io/PrintWriter;
    :cond_0
    iget-boolean v1, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->inPlace:Z

    if-eqz v1, :cond_2

    .line 481
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->docFile:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 483
    new-instance v1, Ljava/io/PrintWriter;

    iget-object v3, p0, Lorg/checkerframework/org/plumelib/options/OptionsDoclet;->docFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v3, v4, v2}, Ljava/nio/file/Files;->newBufferedWriter(Ljava/nio/file/Path;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/io/BufferedWriter;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .restart local v1    # "out":Ljava/io/PrintWriter;
    goto :goto_0

    .line 481
    .end local v1    # "out":Ljava/io/PrintWriter;
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "@AssumeAssertion(nullness): dependent: docFile is non-null if inPlace is true"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 485
    :cond_2
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 488
    .restart local v1    # "out":Ljava/io/PrintWriter;
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 489
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 490
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 491
    return-void
.end method
