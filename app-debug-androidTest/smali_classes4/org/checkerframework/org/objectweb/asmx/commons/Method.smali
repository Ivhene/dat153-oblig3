.class public Lorg/checkerframework/org/objectweb/asmx/commons/Method;
.super Ljava/lang/Object;
.source "Method.java"


# static fields
.field private static final DESCRIPTORS:Ljava/util/Map;


# instance fields
.field private final desc:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/Method;->DESCRIPTORS:Ljava/util/Map;

    .line 63
    const-string v1, "void"

    const-string v2, "V"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v1, "byte"

    const-string v2, "B"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v1, "char"

    const-string v2, "C"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v1, "double"

    const-string v2, "D"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v1, "float"

    const-string v2, "F"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v1, "int"

    const-string v2, "I"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v1, "long"

    const-string v2, "J"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v1, "short"

    const-string v2, "S"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v1, "boolean"

    const-string v2, "Z"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/commons/Method;->name:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lorg/checkerframework/org/objectweb/asmx/commons/Method;->desc:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Type;[Lorg/checkerframework/org/objectweb/asmx/Type;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "returnType"    # Lorg/checkerframework/org/objectweb/asmx/Type;
    .param p3, "argumentTypes"    # [Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 97
    invoke-static {p2, p3}, Lorg/checkerframework/org/objectweb/asmx/Type;->getMethodDescriptor(Lorg/checkerframework/org/objectweb/asmx/Type;[Lorg/checkerframework/org/objectweb/asmx/Type;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/Method;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public static getMethod(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/commons/Method;
    .locals 10
    .param p0, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 116
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 117
    .local v0, "space":I
    const/16 v1, 0x28

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 118
    .local v2, "start":I
    const/16 v3, 0x29

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 119
    .local v4, "end":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    if-eq v2, v5, :cond_2

    if-eq v4, v5, :cond_2

    .line 123
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 124
    .local v6, "returnType":Ljava/lang/String;
    add-int/lit8 v7, v0, 0x1

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 125
    .local v7, "methodName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 126
    .local v8, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 129
    :cond_0
    const/16 v1, 0x2c

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 130
    .local v1, "p":I
    if-ne v1, v5, :cond_1

    .line 131
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/checkerframework/org/objectweb/asmx/commons/Method;->map(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/checkerframework/org/objectweb/asmx/commons/Method;->map(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    add-int/lit8 v2, v1, 0x1

    .line 136
    :goto_0
    if-ne v1, v5, :cond_0

    .line 137
    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 138
    invoke-static {v6}, Lorg/checkerframework/org/objectweb/asmx/commons/Method;->map(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    new-instance v3, Lorg/checkerframework/org/objectweb/asmx/commons/Method;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v7, v5}, Lorg/checkerframework/org/objectweb/asmx/commons/Method;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 120
    .end local v1    # "p":I
    .end local v6    # "returnType":Ljava/lang/String;
    .end local v7    # "methodName":Ljava/lang/String;
    .end local v8    # "sb":Ljava/lang/StringBuffer;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private static map(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "type"    # Ljava/lang/String;

    .line 143
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    return-object p0

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 148
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 149
    .local v1, "index":I
    :goto_0
    const-string v2, "[]"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    if-lez v2, :cond_1

    .line 150
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "t":Ljava/lang/String;
    sget-object v3, Lorg/checkerframework/org/objectweb/asmx/commons/Method;->DESCRIPTORS:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 155
    .local v3, "desc":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 156
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 158
    :cond_2
    const/16 v4, 0x4c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 159
    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_3

    .line 160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "java/lang/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 162
    :cond_3
    const/16 v5, 0x2f

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    :goto_1
    const/16 v4, 0x3b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 166
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 210
    instance-of v0, p1, Lorg/checkerframework/org/objectweb/asmx/commons/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 211
    return v1

    .line 213
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/commons/Method;

    .line 214
    .local v0, "other":Lorg/checkerframework/org/objectweb/asmx/commons/Method;
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/commons/Method;->name:Ljava/lang/String;

    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/commons/Method;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/commons/Method;->desc:Ljava/lang/String;

    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/commons/Method;->desc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getArgumentTypes()[Lorg/checkerframework/org/objectweb/asmx/Type;
    .locals 1

    .line 202
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/Method;->desc:Ljava/lang/String;

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/Method;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/Method;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnType()Lorg/checkerframework/org/objectweb/asmx/Type;
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/Method;->desc:Ljava/lang/String;

    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getReturnType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 218
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/Method;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/commons/Method;->desc:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/commons/Method;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/commons/Method;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
