.class public final Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;
.super Ljava/lang/Object;
.source "StringManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager$ResourceBundleProvider;
    }
.end annotation


# static fields
.field private static final STRINGS_FILE_NAME:Ljava/lang/String; = "strings"

.field private static final STRINGS_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.common.testing.accessibility.framework"

.field private static resourceBundleProvider:Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager$ResourceBundleProvider;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method private static getResourceBundle(Ljava/util/Locale;)Ljava/util/ResourceBundle;
    .locals 5
    .param p0, "locale"    # Ljava/util/Locale;

    .line 46
    const-class v0, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;

    const-string v1, "strings"

    sget-object v2, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->resourceBundleProvider:Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager$ResourceBundleProvider;

    if-eqz v2, :cond_0

    .line 47
    invoke-interface {v2, p0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager$ResourceBundleProvider;->getResourceBundle(Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0

    .line 54
    :cond_0
    :try_start_0
    const-string v2, "com.google.android.apps.common.testing.accessibility.framework"

    .line 55
    invoke-static {v2, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/AndroidXMLResourceBundle$Control;->getBaseName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ClassLoader;

    new-instance v4, Lcom/google/android/apps/common/testing/accessibility/framework/strings/AndroidXMLResourceBundle$Control;

    invoke-direct {v4}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/AndroidXMLResourceBundle$Control;-><init>()V

    .line 54
    invoke-static {v2, p0, v3, v4}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 59
    :catch_0
    move-exception v2

    .line 63
    .local v2, "e":Ljava/util/MissingResourceException;
    nop

    .line 64
    const-string v3, ""

    invoke-static {v3, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/AndroidXMLResourceBundle$Control;->getBaseName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    new-instance v3, Lcom/google/android/apps/common/testing/accessibility/framework/strings/AndroidXMLResourceBundle$Control;

    invoke-direct {v3}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/AndroidXMLResourceBundle$Control;-><init>()V

    .line 63
    invoke-static {v1, p0, v0, v3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "name"    # Ljava/lang/String;

    .line 42
    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->getResourceBundle(Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setResourceBundleProvider(Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager$ResourceBundleProvider;)V
    .locals 0
    .param p0, "provider"    # Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager$ResourceBundleProvider;

    .line 32
    sput-object p0, Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager;->resourceBundleProvider:Lcom/google/android/apps/common/testing/accessibility/framework/strings/StringManager$ResourceBundleProvider;

    .line 33
    return-void
.end method
