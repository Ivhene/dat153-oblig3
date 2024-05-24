.class Lcom/google/android/apps/common/testing/accessibility/framework/strings/AndroidXMLResourceBundle$Control;
.super Ljava/util/ResourceBundle$Control;
.source "AndroidXMLResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/strings/AndroidXMLResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Control"
.end annotation


# static fields
.field private static final ACCEPTED_FORMATS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final XML_FORMAT:Ljava/lang/String; = "xml"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 134
    const-string v0, "xml"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/strings/AndroidXMLResourceBundle$Control;->ACCEPTED_FORMATS:Ljava/util/List;

    .line 134
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/util/ResourceBundle$Control;-><init>()V

    return-void
.end method

.method static getBaseName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 214
    const-string v0, "%s.%s"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getFallbackLocale(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 1
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 172
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormats(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "baseName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 139
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/google/android/apps/common/testing/accessibility/framework/strings/AndroidXMLResourceBundle$Control;->ACCEPTED_FORMATS:Ljava/util/List;

    return-object v0
.end method

.method public newBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/util/ResourceBundle;
    .locals 6
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "loader"    # Ljava/lang/ClassLoader;
    .param p5, "reload"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/AndroidXMLResourceBundle$Control;->toBundleName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "xml"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/AndroidXMLResourceBundle$Control;->toResourceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "resource":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {p4, v0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 150
    .local v2, "url":Ljava/net/URL;
    if-eqz v2, :cond_1

    .line 151
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 152
    .local v3, "urlConnection":Ljava/net/URLConnection;
    if-eqz v3, :cond_1

    .line 153
    if-eqz p5, :cond_0

    .line 154
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 156
    :cond_0
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 157
    .local v4, "inputStream":Ljava/io/InputStream;
    if-eqz v4, :cond_1

    .line 158
    new-instance v5, Lcom/google/android/apps/common/testing/accessibility/framework/strings/AndroidXMLResourceBundle;

    invoke-direct {v5, v4, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/AndroidXMLResourceBundle;-><init>(Ljava/io/InputStream;Lcom/google/android/apps/common/testing/accessibility/framework/strings/AndroidXMLResourceBundle$1;)V

    move-object v1, v5

    .line 159
    .local v1, "bundle":Ljava/util/ResourceBundle;
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 160
    return-object v1

    .line 165
    .end local v1    # "bundle":Ljava/util/ResourceBundle;
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "urlConnection":Ljava/net/URLConnection;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    :cond_1
    return-object v1
.end method

.method public toBundleName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 7
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 177
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Attempted to get resource name for empty base name"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 180
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "language":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v1, "localeName":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "country":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 187
    const-string v3, "-r"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .end local v2    # "country":Ljava/lang/String;
    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 192
    .local v2, "packageNameDividerIndex":I
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, "packageName":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, "fileName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 200
    const-string v5, "assets.assets%s.%s"

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 201
    :cond_1
    const-string v5, "%s.assets%s.%s"

    filled-new-array {v3, v1, v4}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 199
    :goto_0
    return-object v5
.end method
