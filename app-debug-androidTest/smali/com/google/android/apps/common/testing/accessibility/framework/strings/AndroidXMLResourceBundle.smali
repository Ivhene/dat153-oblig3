.class public Lcom/google/android/apps/common/testing/accessibility/framework/strings/AndroidXMLResourceBundle;
.super Ljava/util/ResourceBundle;
.source "AndroidXMLResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/common/testing/accessibility/framework/strings/AndroidXMLResourceBundle$Control;
    }
.end annotation


# static fields
.field private static final ANDROID_STRING_NAME_ATTRIBUTE:Ljava/lang/String; = "name"

.field private static final ANDROID_STRING_TAG_NAME:Ljava/lang/String; = "string"


# instance fields
.field private final properties:Ljava/util/Properties;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/util/ResourceBundle;-><init>()V

    .line 35
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/strings/AndroidXMLResourceBundle;->properties:Ljava/util/Properties;

    .line 38
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/AndroidXMLResourceBundle;->getDocument(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 40
    .local v1, "document":Lorg/w3c/dom/Document;
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 41
    invoke-static {v1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/AndroidXMLResourceBundle;->addStringsToProperties(Lorg/w3c/dom/Document;Ljava/util/Properties;)V

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;Lcom/google/android/apps/common/testing/accessibility/framework/strings/AndroidXMLResourceBundle$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/InputStream;
    .param p2, "x1"    # Lcom/google/android/apps/common/testing/accessibility/framework/strings/AndroidXMLResourceBundle$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/AndroidXMLResourceBundle;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private static addStringsToProperties(Lorg/w3c/dom/Document;Ljava/util/Properties;)V
    .locals 5
    .param p0, "document"    # Lorg/w3c/dom/Document;
    .param p1, "properties"    # Ljava/util/Properties;

    .line 84
    const-string v0, "string"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 85
    .local v0, "stringNodes":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 86
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 88
    .local v2, "node":Lorg/w3c/dom/Node;
    if-eqz v2, :cond_0

    .line 89
    invoke-static {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/AndroidXMLResourceBundle;->getStringName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "key":Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/AndroidXMLResourceBundle;->getStringValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 92
    invoke-virtual {p1, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    .end local v2    # "node":Lorg/w3c/dom/Node;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private static getDocument(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .line 62
    const/4 v0, 0x0

    .line 64
    .local v0, "document":Lorg/w3c/dom/Document;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 65
    .local v1, "documentBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringElementContentWhitespace(Z)V

    .line 66
    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringComments(Z)V

    .line 67
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 68
    .local v2, "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 69
    .local v3, "inputSource":Lorg/xml/sax/InputSource;
    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v4
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 72
    .end local v1    # "documentBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "inputSource":Lorg/xml/sax/InputSource;
    nop

    .line 73
    return-object v0

    .line 70
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not read xml properties file"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static getStringName(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 3
    .param p0, "node"    # Lorg/w3c/dom/Node;

    .line 100
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 101
    .local v0, "attributes":Lorg/w3c/dom/NamedNodeMap;
    if-eqz v0, :cond_0

    .line 102
    const-string v1, "name"

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 103
    .local v1, "nameNode":Lorg/w3c/dom/Node;
    if-eqz v1, :cond_0

    .line 104
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 107
    .end local v1    # "nameNode":Lorg/w3c/dom/Node;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getStringValue(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 4
    .param p0, "node"    # Lorg/w3c/dom/Node;

    .line 112
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 114
    const/4 v1, 0x0

    return-object v1

    .line 116
    :cond_0
    nop

    .line 119
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 122
    const-string v2, "\\\""

    const-string v3, "\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 125
    const-string v2, "\\\'"

    const-string v3, "\'"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 116
    return-object v1
.end method


# virtual methods
.method public getKeys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/strings/AndroidXMLResourceBundle;->properties:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method protected handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/strings/AndroidXMLResourceBundle;->properties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
