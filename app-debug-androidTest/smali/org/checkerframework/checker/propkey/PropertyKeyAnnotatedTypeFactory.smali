.class public Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;
.super Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;
.source "PropertyKeyAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory$KeyLookupTreeAnnotator;
    }
.end annotation


# instance fields
.field private final lookupKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 1
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 37
    invoke-direct {p0, p1}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 38
    invoke-direct {p0}, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;->buildLookupKeys()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;->lookupKeys:Ljava/util/Set;

    .line 40
    invoke-virtual {p0}, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;->postInit()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;)Ljavax/lang/model/util/Elements;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;

    .line 32
    iget-object v0, p0, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    return-object v0
.end method

.method static synthetic access$100(Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;

    .line 32
    iget-object v0, p0, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;->lookupKeys:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Ljava/util/Set;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/Set;
    .param p1, "x1"    # Ljava/lang/String;

    .line 32
    invoke-static {p0, p1}, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;->strContains(Ljava/util/Set;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private buildLookupKeys()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 133
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v2, "propfiles"

    invoke-virtual {v1, v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v1, v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;->keysOfPropertyFiles(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 136
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v2, "bundlenames"

    invoke-virtual {v1, v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v1, v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;->keysOfResourceBundle(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 140
    :cond_1
    return-object v0
.end method

.method private keysOfPropertyFiles(Ljava/lang/String;)Ljava/util/Set;
    .locals 13
    .param p1, "names"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 144
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "namesArr":[Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 147
    iget-object v2, p0, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    sget-object v3, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t parse the properties files: <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->message(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 151
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 153
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v0, v4

    .line 155
    .local v5, "name":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    .line 157
    .local v6, "prop":Ljava/util/Properties;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 158
    .local v7, "cl":Ljava/lang/ClassLoader;
    if-nez v7, :cond_1

    .line 161
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    move-object v7, v8

    .line 163
    :cond_1
    invoke-virtual {v7, v5}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 165
    .local v8, "in":Ljava/io/InputStream;
    if-nez v8, :cond_2

    .line 170
    :try_start_1
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v8, v9

    .line 173
    goto :goto_1

    .line 171
    :catch_0
    move-exception v9

    .line 176
    :cond_2
    :goto_1
    if-nez v8, :cond_3

    .line 177
    :try_start_2
    iget-object v9, p0, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    sget-object v10, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t find the properties file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v1, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v11, v12}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->message(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    goto :goto_2

    .line 183
    :cond_3
    invoke-virtual {v6, v8}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 184
    invoke-virtual {v6}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 192
    nop

    .end local v6    # "prop":Ljava/util/Properties;
    .end local v7    # "cl":Ljava/lang/ClassLoader;
    .end local v8    # "in":Ljava/io/InputStream;
    goto :goto_2

    .line 185
    :catch_1
    move-exception v6

    .line 189
    .local v6, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    sget-object v8, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in PropertyKeyChecker.keysOfPropertyFile: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v1, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9, v10}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->message(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 195
    :cond_4
    return-object v2
.end method

.method private keysOfResourceBundle(Ljava/lang/String;)Ljava/util/Set;
    .locals 12
    .param p1, "bundleNames"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 199
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "namesArr":[Ljava/lang/String;
    const-string v1, ">"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 202
    iget-object v3, p0, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    sget-object v4, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t parse the resource bundles: <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v1, v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->message(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 207
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 209
    .local v3, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v4, v0

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v0, v5

    .line 210
    .local v6, "bundleName":Ljava/lang/String;
    invoke-static {v6}, Lorg/checkerframework/org/plumelib/reflection/Signatures;->isBinaryName(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 211
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Malformed resource bundle: <"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "> should be a binary name."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 213
    goto :goto_1

    .line 215
    :cond_1
    invoke-static {v6}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v7

    .line 216
    .local v7, "bundle":Ljava/util/ResourceBundle;
    if-nez v7, :cond_2

    .line 217
    iget-object v8, p0, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    sget-object v9, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t find the resource bundle: <"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "> for locale <"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 222
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v2, [Ljava/lang/Object;

    .line 217
    invoke-virtual {v8, v9, v10, v11}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->message(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    goto :goto_1

    .line 227
    :cond_2
    invoke-virtual {v7}, Ljava/util/ResourceBundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 209
    .end local v6    # "bundleName":Ljava/lang/String;
    .end local v7    # "bundle":Ljava/util/ResourceBundle;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 229
    :cond_3
    return-object v3
.end method

.method private static strContains(Ljava/util/Set;Ljava/lang/String;)Z
    .locals 3
    .param p1, "messageKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 106
    .local p0, "messages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, p1

    .line 109
    .local v0, "key":Ljava/lang/String;
    :goto_0
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    const/4 v1, 0x1

    return v1

    .line 113
    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 114
    .local v1, "dot":I
    if-gez v1, :cond_1

    .line 115
    const/4 v2, 0x0

    return v2

    .line 117
    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    .end local v1    # "dot":I
    goto :goto_0
.end method


# virtual methods
.method protected createBasicTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
    .locals 1

    .line 51
    invoke-super {p0}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    move-result-object v0

    return-object v0
.end method

.method public createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
    .locals 4

    .line 45
    new-instance v0, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    .line 46
    invoke-super {p0}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory$KeyLookupTreeAnnotator;

    const-class v3, Lorg/checkerframework/checker/propkey/qual/PropertyKey;

    invoke-direct {v2, p0, p0, v3}, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory$KeyLookupTreeAnnotator;-><init>(Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;Ljava/lang/Class;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;-><init>([Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;)V

    .line 45
    return-object v0
.end method

.method public getLookupKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;->lookupKeys:Ljava/util/Set;

    return-object v0
.end method
