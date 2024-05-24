.class public final Lscenelib/annotations/field/BasicAFT;
.super Lscenelib/annotations/field/ScalarAFT;
.source "BasicAFT.java"


# static fields
.field public static final bafts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lscenelib/annotations/field/BasicAFT;",
            ">;"
        }
    .end annotation
.end field

.field static final charEscaper:Lorg/checkerframework/com/google/common/escape/Escaper;


# instance fields
.field public final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 15
    new-instance v0, Lorg/checkerframework/com/google/common/escape/CharEscaperBuilder;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/escape/CharEscaperBuilder;-><init>()V

    .line 17
    const/16 v1, 0x8

    const-string v2, "\\b"

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/com/google/common/escape/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lorg/checkerframework/com/google/common/escape/CharEscaperBuilder;

    move-result-object v0

    .line 18
    const/16 v1, 0xc

    const-string v2, "\\f"

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/com/google/common/escape/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lorg/checkerframework/com/google/common/escape/CharEscaperBuilder;

    move-result-object v0

    .line 19
    const/16 v1, 0xa

    const-string v2, "\\n"

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/com/google/common/escape/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lorg/checkerframework/com/google/common/escape/CharEscaperBuilder;

    move-result-object v0

    .line 20
    const/16 v1, 0xd

    const-string v2, "\\r"

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/com/google/common/escape/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lorg/checkerframework/com/google/common/escape/CharEscaperBuilder;

    move-result-object v0

    .line 21
    const/16 v1, 0x9

    const-string v2, "\\t"

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/com/google/common/escape/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lorg/checkerframework/com/google/common/escape/CharEscaperBuilder;

    move-result-object v0

    .line 22
    const/16 v2, 0x22

    const-string v3, "\\\""

    invoke-virtual {v0, v2, v3}, Lorg/checkerframework/com/google/common/escape/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lorg/checkerframework/com/google/common/escape/CharEscaperBuilder;

    move-result-object v0

    .line 23
    const/16 v2, 0x5c

    const-string v3, "\\\\"

    invoke-virtual {v0, v2, v3}, Lorg/checkerframework/com/google/common/escape/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lorg/checkerframework/com/google/common/escape/CharEscaperBuilder;

    move-result-object v0

    .line 24
    const/16 v2, 0x27

    const-string v3, "\\\'"

    invoke-virtual {v0, v2, v3}, Lorg/checkerframework/com/google/common/escape/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lorg/checkerframework/com/google/common/escape/CharEscaperBuilder;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/escape/CharEscaperBuilder;->toEscaper()Lorg/checkerframework/com/google/common/escape/Escaper;

    move-result-object v0

    sput-object v0, Lscenelib/annotations/field/BasicAFT;->charEscaper:Lorg/checkerframework/com/google/common/escape/Escaper;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 56
    .local v0, "tempBafts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lscenelib/annotations/field/BasicAFT;>;"
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v2, Lscenelib/annotations/field/BasicAFT;

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3}, Lscenelib/annotations/field/BasicAFT;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v2, Lscenelib/annotations/field/BasicAFT;

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3}, Lscenelib/annotations/field/BasicAFT;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v2, Lscenelib/annotations/field/BasicAFT;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3}, Lscenelib/annotations/field/BasicAFT;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v2, Lscenelib/annotations/field/BasicAFT;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3}, Lscenelib/annotations/field/BasicAFT;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v2, Lscenelib/annotations/field/BasicAFT;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3}, Lscenelib/annotations/field/BasicAFT;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v2, Lscenelib/annotations/field/BasicAFT;

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3}, Lscenelib/annotations/field/BasicAFT;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-instance v2, Lscenelib/annotations/field/BasicAFT;

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3}, Lscenelib/annotations/field/BasicAFT;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v2, Lscenelib/annotations/field/BasicAFT;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3}, Lscenelib/annotations/field/BasicAFT;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-class v1, Ljava/lang/String;

    new-instance v2, Lscenelib/annotations/field/BasicAFT;

    const-class v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Lscenelib/annotations/field/BasicAFT;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sput-object v0, Lscenelib/annotations/field/BasicAFT;->bafts:Ljava/util/Map;

    .line 68
    .end local v0    # "tempBafts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lscenelib/annotations/field/BasicAFT;>;"
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 32
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lscenelib/annotations/field/ScalarAFT;-><init>()V

    .line 33
    iput-object p1, p0, Lscenelib/annotations/field/BasicAFT;->type:Ljava/lang/Class;

    .line 34
    return-void
.end method

.method public static forType(Ljava/lang/Class;)Lscenelib/annotations/field/BasicAFT;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lscenelib/annotations/field/BasicAFT;"
        }
    .end annotation

    .line 43
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lscenelib/annotations/field/BasicAFT;->bafts:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/field/BasicAFT;

    return-object v0
.end method


# virtual methods
.method public accept(Lscenelib/annotations/field/AFTVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscenelib/annotations/field/AFTVisitor<",
            "TR;TT;>;TT;)TR;"
        }
    .end annotation

    .line 100
    .local p1, "v":Lscenelib/annotations/field/AFTVisitor;, "Lscenelib/annotations/field/AFTVisitor<TR;TT;>;"
    .local p2, "arg":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, p0, p2}, Lscenelib/annotations/field/AFTVisitor;->visitBasicAFT(Lscenelib/annotations/field/BasicAFT;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lscenelib/annotations/field/BasicAFT;->type:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lscenelib/annotations/field/BasicAFT;->charEscaper:Lorg/checkerframework/com/google/common/escape/Escaper;

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    .line 95
    invoke-virtual {v2, v3}, Lorg/checkerframework/com/google/common/escape/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    :goto_0
    return-object v0
.end method

.method public isValidValue(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lscenelib/annotations/field/BasicAFT;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_8

    :cond_0
    iget-object v0, p0, Lscenelib/annotations/field/BasicAFT;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    instance-of v0, p1, Ljava/lang/Short;

    if-nez v0, :cond_8

    :cond_1
    iget-object v0, p0, Lscenelib/annotations/field/BasicAFT;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_8

    :cond_2
    iget-object v0, p0, Lscenelib/annotations/field/BasicAFT;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_8

    :cond_3
    iget-object v0, p0, Lscenelib/annotations/field/BasicAFT;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4

    instance-of v0, p1, Ljava/lang/Float;

    if-nez v0, :cond_8

    :cond_4
    iget-object v0, p0, Lscenelib/annotations/field/BasicAFT;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_5

    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_8

    :cond_5
    iget-object v0, p0, Lscenelib/annotations/field/BasicAFT;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_6

    instance-of v0, p1, Ljava/lang/Character;

    if-nez v0, :cond_8

    :cond_6
    iget-object v0, p0, Lscenelib/annotations/field/BasicAFT;->type:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_7

    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_8

    :cond_7
    iget-object v0, p0, Lscenelib/annotations/field/BasicAFT;->type:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_9

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_9

    :cond_8
    const/4 v0, 0x1

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 85
    iget-object v0, p0, Lscenelib/annotations/field/BasicAFT;->type:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 86
    const-string v0, "String"

    return-object v0

    .line 88
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
