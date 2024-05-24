.class public abstract Lorg/checkerframework/org/apache/commons/text/StrLookup;
.super Ljava/lang/Object;
.source "StrLookup.java"

# interfaces
.implements Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/apache/commons/text/StrLookup$SystemPropertiesStrLookup;,
        Lorg/checkerframework/org/apache/commons/text/StrLookup$ResourceBundleLookup;,
        Lorg/checkerframework/org/apache/commons/text/StrLookup$MapStrLookup;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final NONE_LOOKUP:Lorg/checkerframework/org/apache/commons/text/StrLookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/org/apache/commons/text/StrLookup<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SYSTEM_PROPERTIES_LOOKUP:Lorg/checkerframework/org/apache/commons/text/StrLookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/org/apache/commons/text/StrLookup<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StrLookup$MapStrLookup;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/text/StrLookup$MapStrLookup;-><init>(Ljava/util/Map;)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/StrLookup;->NONE_LOOKUP:Lorg/checkerframework/org/apache/commons/text/StrLookup;

    .line 52
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StrLookup$SystemPropertiesStrLookup;

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/text/StrLookup$SystemPropertiesStrLookup;-><init>(Lorg/checkerframework/org/apache/commons/text/StrLookup$1;)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/StrLookup;->SYSTEM_PROPERTIES_LOOKUP:Lorg/checkerframework/org/apache/commons/text/StrLookup;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 110
    .local p0, "this":Lorg/checkerframework/org/apache/commons/text/StrLookup;, "Lorg/checkerframework/org/apache/commons/text/StrLookup<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method public static mapLookup(Ljava/util/Map;)Lorg/checkerframework/org/apache/commons/text/StrLookup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)",
            "Lorg/checkerframework/org/apache/commons/text/StrLookup<",
            "TV;>;"
        }
    .end annotation

    .line 88
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StrLookup$MapStrLookup;

    invoke-direct {v0, p0}, Lorg/checkerframework/org/apache/commons/text/StrLookup$MapStrLookup;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static noneLookup()Lorg/checkerframework/org/apache/commons/text/StrLookup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/org/apache/commons/text/StrLookup<",
            "*>;"
        }
    .end annotation

    .line 61
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/StrLookup;->NONE_LOOKUP:Lorg/checkerframework/org/apache/commons/text/StrLookup;

    return-object v0
.end method

.method public static resourceBundleLookup(Ljava/util/ResourceBundle;)Lorg/checkerframework/org/apache/commons/text/StrLookup;
    .locals 2
    .param p0, "resourceBundle"    # Ljava/util/ResourceBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ResourceBundle;",
            ")",
            "Lorg/checkerframework/org/apache/commons/text/StrLookup<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StrLookup$ResourceBundleLookup;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/org/apache/commons/text/StrLookup$ResourceBundleLookup;-><init>(Ljava/util/ResourceBundle;Lorg/checkerframework/org/apache/commons/text/StrLookup$1;)V

    return-object v0
.end method

.method public static systemPropertiesLookup()Lorg/checkerframework/org/apache/commons/text/StrLookup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/org/apache/commons/text/StrLookup<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 74
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/StrLookup;->SYSTEM_PROPERTIES_LOOKUP:Lorg/checkerframework/org/apache/commons/text/StrLookup;

    return-object v0
.end method
