.class public Lnet/bytebuddy/description/enumeration/EnumerationDescription$ForLoadedEnumeration;
.super Lnet/bytebuddy/description/enumeration/EnumerationDescription$AbstractBase;
.source "EnumerationDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/enumeration/EnumerationDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForLoadedEnumeration"
.end annotation


# instance fields
.field private final value:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    .line 104
    .local p1, "value":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-direct {p0}, Lnet/bytebuddy/description/enumeration/EnumerationDescription$AbstractBase;-><init>()V

    .line 105
    iput-object p1, p0, Lnet/bytebuddy/description/enumeration/EnumerationDescription$ForLoadedEnumeration;->value:Ljava/lang/Enum;

    .line 106
    return-void
.end method

.method public static asList([Ljava/lang/Enum;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/enumeration/EnumerationDescription;",
            ">;"
        }
    .end annotation

    .line 115
    .local p0, "enumerations":[Ljava/lang/Enum;, "[Ljava/lang/Enum<*>;"
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/enumeration/EnumerationDescription;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 117
    .local v3, "enumeration":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    new-instance v4, Lnet/bytebuddy/description/enumeration/EnumerationDescription$ForLoadedEnumeration;

    invoke-direct {v4, v3}, Lnet/bytebuddy/description/enumeration/EnumerationDescription$ForLoadedEnumeration;-><init>(Ljava/lang/Enum;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    .end local v3    # "enumeration":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getEnumerationType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 133
    iget-object v0, p0, Lnet/bytebuddy/description/enumeration/EnumerationDescription$ForLoadedEnumeration;->value:Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lnet/bytebuddy/description/enumeration/EnumerationDescription$ForLoadedEnumeration;->value:Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/Class;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 141
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lnet/bytebuddy/description/enumeration/EnumerationDescription$ForLoadedEnumeration;->value:Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/description/enumeration/EnumerationDescription$ForLoadedEnumeration;->value:Ljava/lang/Enum;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/description/enumeration/EnumerationDescription$ForLoadedEnumeration;->value:Ljava/lang/Enum;

    .line 143
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    .line 141
    :goto_0
    return-object v0
.end method
