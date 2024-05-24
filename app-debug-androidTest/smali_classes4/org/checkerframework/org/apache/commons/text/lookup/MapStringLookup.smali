.class final Lorg/checkerframework/org/apache/commons/text/lookup/MapStringLookup;
.super Ljava/lang/Object;
.source "MapStringLookup.java"

# interfaces
.implements Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;"
    }
.end annotation


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)V"
        }
    .end annotation

    .line 55
    .local p0, "this":Lorg/checkerframework/org/apache/commons/text/lookup/MapStringLookup;, "Lorg/checkerframework/org/apache/commons/text/lookup/MapStringLookup<TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/lookup/MapStringLookup;->map:Ljava/util/Map;

    .line 57
    return-void
.end method

.method static on(Ljava/util/Map;)Lorg/checkerframework/org/apache/commons/text/lookup/MapStringLookup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;)",
            "Lorg/checkerframework/org/apache/commons/text/lookup/MapStringLookup<",
            "TT;>;"
        }
    .end annotation

    .line 41
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/lookup/MapStringLookup;

    invoke-direct {v0, p0}, Lorg/checkerframework/org/apache/commons/text/lookup/MapStringLookup;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .line 65
    .local p0, "this":Lorg/checkerframework/org/apache/commons/text/lookup/MapStringLookup;, "Lorg/checkerframework/org/apache/commons/text/lookup/MapStringLookup<TV;>;"
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/lookup/MapStringLookup;->map:Ljava/util/Map;

    return-object v0
.end method

.method public lookup(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 80
    .local p0, "this":Lorg/checkerframework/org/apache/commons/text/lookup/MapStringLookup;, "Lorg/checkerframework/org/apache/commons/text/lookup/MapStringLookup<TV;>;"
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/lookup/MapStringLookup;->map:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 81
    return-object v1

    .line 85
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .local v0, "obj":Ljava/lang/Object;, "TV;"
    nop

    .line 90
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1

    .line 86
    .end local v0    # "obj":Ljava/lang/Object;, "TV;"
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/NullPointerException;
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 95
    .local p0, "this":Lorg/checkerframework/org/apache/commons/text/lookup/MapStringLookup;, "Lorg/checkerframework/org/apache/commons/text/lookup/MapStringLookup<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [map="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/lookup/MapStringLookup;->map:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
