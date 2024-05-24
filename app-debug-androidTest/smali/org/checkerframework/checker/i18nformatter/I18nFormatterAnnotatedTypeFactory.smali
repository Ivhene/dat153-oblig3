.class public Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;
.super Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;
.source "I18nFormatterAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;,
        Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterTreeAnnotator;
    }
.end annotation


# instance fields
.field protected final I18NFORMAT:Ljavax/lang/model/element/AnnotationMirror;

.field protected final I18NFORMATBOTTOM:Ljavax/lang/model/element/AnnotationMirror;

.field protected final I18NFORMATFOR:Ljavax/lang/model/element/AnnotationMirror;

.field protected final I18NINVALIDFORMAT:Ljavax/lang/model/element/AnnotationMirror;

.field protected final I18NUNKNOWNFORMAT:Ljavax/lang/model/element/AnnotationMirror;

.field public final translations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final treeUtil:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 2
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 71
    invoke-direct {p0, p1}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 48
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/i18nformatter/qual/I18nUnknownFormat;

    .line 49
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NUNKNOWNFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    .line 51
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/i18nformatter/qual/I18nFormat;

    .line 52
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    .line 54
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/i18nformatter/qual/I18nInvalidFormat;

    .line 55
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NINVALIDFORMAT:Ljavax/lang/model/element/AnnotationMirror;

    .line 57
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/i18nformatter/qual/I18nFormatBottom;

    .line 58
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NFORMATBOTTOM:Ljavax/lang/model/element/AnnotationMirror;

    .line 60
    iget-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    const-class v1, Lorg/checkerframework/checker/i18nformatter/qual/I18nFormatFor;

    .line 61
    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->I18NFORMATFOR:Ljavax/lang/model/element/AnnotationMirror;

    .line 64
    invoke-direct {p0}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->buildLookup()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->translations:Ljava/util/Map;

    .line 67
    new-instance v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;

    iget-object v1, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-direct {v0, v1}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    iput-object v0, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/i18nformatter/I18nFormatterTreeUtil;

    .line 73
    invoke-virtual {p0}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->postInit()V

    .line 74
    return-void
.end method

.method private buildLookup()Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 84
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v2, "propfiles"

    invoke-virtual {v1, v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v1

    const-string v3, ">"

    const/4 v4, 0x0

    const-string v5, ":"

    if-eqz v1, :cond_5

    .line 85
    iget-object v1, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v1, v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "names":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "namesArr":[Ljava/lang/String;
    if-nez v2, :cond_0

    .line 89
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t parse the properties files: <"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 91
    :cond_0
    array-length v6, v2

    move v7, v4

    :goto_0
    if-ge v7, v6, :cond_5

    aget-object v8, v2, v7

    .line 93
    .local v8, "name":Ljava/lang/String;
    :try_start_0
    new-instance v9, Ljava/util/Properties;

    invoke-direct {v9}, Ljava/util/Properties;-><init>()V

    .line 95
    .local v9, "prop":Ljava/util/Properties;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    .line 96
    .local v10, "cl":Ljava/lang/ClassLoader;
    if-nez v10, :cond_1

    .line 98
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    move-object v10, v11

    .line 100
    :cond_1
    invoke-virtual {v10, v8}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 102
    .local v11, "in":Ljava/io/InputStream;
    if-nez v11, :cond_2

    .line 106
    :try_start_1
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v11, v12

    .line 109
    goto :goto_1

    .line 107
    :catch_0
    move-exception v12

    .line 112
    :cond_2
    :goto_1
    if-nez v11, :cond_3

    .line 113
    :try_start_2
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Couldn\'t find the properties file: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 117
    goto :goto_3

    .line 120
    :cond_3
    invoke-virtual {v9, v11}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 122
    invoke-virtual {v9}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 123
    .local v13, "key":Ljava/lang/String;
    invoke-virtual {v9, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 124
    nop

    .end local v13    # "key":Ljava/lang/String;
    goto :goto_2

    .line 131
    .end local v9    # "prop":Ljava/util/Properties;
    .end local v10    # "cl":Ljava/lang/ClassLoader;
    .end local v11    # "in":Ljava/io/InputStream;
    :cond_4
    goto :goto_3

    .line 125
    :catch_1
    move-exception v9

    .line 128
    .local v9, "e":Ljava/lang/Exception;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception in PropertyKeyChecker.keysOfPropertyFile: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 136
    .end local v1    # "names":Ljava/lang/String;
    .end local v2    # "namesArr":[Ljava/lang/String;
    :cond_5
    :goto_4
    iget-object v1, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v2, "bundlenames"

    invoke-virtual {v1, v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 137
    iget-object v1, p0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v1, v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "bundleNames":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 140
    .restart local v2    # "namesArr":[Ljava/lang/String;
    if-nez v2, :cond_6

    .line 141
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t parse the resource bundles: <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 143
    :cond_6
    array-length v3, v2

    :goto_5
    if-ge v4, v3, :cond_a

    aget-object v5, v2, v4

    .line 144
    .local v5, "bundleName":Ljava/lang/String;
    invoke-static {v5}, Lorg/checkerframework/org/plumelib/reflection/Signatures;->isBinaryName(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 145
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Malformed resource bundle: <"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "> should be a binary name."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 149
    goto :goto_7

    .line 151
    :cond_7
    invoke-static {v5}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v6

    .line 152
    .local v6, "bundle":Ljava/util/ResourceBundle;
    if-nez v6, :cond_8

    .line 153
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t find the resource bundle: <"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "> for locale <"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 157
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 153
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 159
    goto :goto_7

    .line 162
    :cond_8
    invoke-virtual {v6}, Ljava/util/ResourceBundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 163
    .local v8, "key":Ljava/lang/String;
    invoke-virtual {v6, v8}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .end local v8    # "key":Ljava/lang/String;
    goto :goto_6

    .line 143
    .end local v5    # "bundleName":Ljava/lang/String;
    .end local v6    # "bundle":Ljava/util/ResourceBundle;
    :cond_9
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 169
    .end local v1    # "bundleNames":Ljava/lang/String;
    .end local v2    # "namesArr":[Ljava/lang/String;
    :cond_a
    :goto_8
    return-object v0
.end method


# virtual methods
.method public createQualifierHierarchy(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)Lorg/checkerframework/framework/type/QualifierHierarchy;
    .locals 1
    .param p1, "factory"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;

    .line 174
    new-instance v0, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterQualifierHierarchy;-><init>(Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)V

    return-object v0
.end method

.method public createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
    .locals 4

    .line 179
    new-instance v0, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    .line 180
    invoke-super {p0}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterTreeAnnotator;

    invoke-direct {v2, p0, p0}, Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory$I18nFormatterTreeAnnotator;-><init>(Lorg/checkerframework/checker/i18nformatter/I18nFormatterAnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;-><init>([Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;)V

    .line 179
    return-object v0
.end method
