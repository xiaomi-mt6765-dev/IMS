.class public Lmediatek/telephony/MtkSignalStrength;
.super Landroid/telephony/SignalStrength;
.source "MtkSignalStrength.java"


# static fields
.field private static final blacklist DBG:Z = true

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "MtkSignalStrength"

.field public static final blacklist PROPERTY_OPERATOR_OPTR:Ljava/lang/String; = "persist.vendor.operator.optr"

.field private static blacklist mOpId:Ljava/lang/String;

.field private static blacklist mSignalStrengthExt:Lmediatek/telephony/ISignalStrengthExt;


# instance fields
.field private blacklist mMtkLevel:I

.field private blacklist mMtkLteRsrpThreshold:[I

.field private blacklist mMtkLteRssnrThreshold:[I

.field private blacklist mMtkRsrpOnly:Z

.field protected blacklist mPhoneId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 78
    const/4 v0, 0x0

    sput-object v0, Lmediatek/telephony/MtkSignalStrength;->mSignalStrengthExt:Lmediatek/telephony/ISignalStrengthExt;

    .line 83
    sput-object v0, Lmediatek/telephony/MtkSignalStrength;->mOpId:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 92
    invoke-direct {p0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLevel:I

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkRsrpOnly:Z

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRsrpThreshold:[I

    .line 87
    iput-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRssnrThreshold:[I

    .line 93
    iput p1, p0, Lmediatek/telephony/MtkSignalStrength;->mPhoneId:I

    .line 94
    return-void
.end method

.method public constructor blacklist <init>(ILandroid/telephony/SignalStrength;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "s"    # Landroid/telephony/SignalStrength;

    .line 103
    invoke-direct {p0, p2}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLevel:I

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkRsrpOnly:Z

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRsrpThreshold:[I

    .line 87
    iput-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRssnrThreshold:[I

    .line 104
    iput p1, p0, Lmediatek/telephony/MtkSignalStrength;->mPhoneId:I

    .line 105
    instance-of v0, p2, Lmediatek/telephony/MtkSignalStrength;

    if-eqz v0, :cond_0

    .line 106
    move-object v0, p2

    check-cast v0, Lmediatek/telephony/MtkSignalStrength;

    .line 107
    .local v0, "mtkSignal":Lmediatek/telephony/MtkSignalStrength;
    invoke-virtual {v0}, Lmediatek/telephony/MtkSignalStrength;->getMtkLevel()I

    move-result v1

    iput v1, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLevel:I

    .line 108
    invoke-virtual {v0}, Lmediatek/telephony/MtkSignalStrength;->isMtkRsrpOnly()Z

    move-result v1

    invoke-virtual {p0, v1}, Lmediatek/telephony/MtkSignalStrength;->setMtkRsrpOnly(Z)V

    .line 109
    invoke-virtual {v0}, Lmediatek/telephony/MtkSignalStrength;->getMtkLteRsrpThreshold()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Lmediatek/telephony/MtkSignalStrength;->setMtkLteRsrpThreshold([I)V

    .line 110
    invoke-virtual {v0}, Lmediatek/telephony/MtkSignalStrength;->getMtkLteRssnrThreshold()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Lmediatek/telephony/MtkSignalStrength;->setMtkLteRssnrThreshold([I)V

    .line 112
    .end local v0    # "mtkSignal":Lmediatek/telephony/MtkSignalStrength;
    :cond_0
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 120
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;-><init>(Landroid/os/Parcel;)V

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLevel:I

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkRsrpOnly:Z

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRsrpThreshold:[I

    .line 87
    iput-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRssnrThreshold:[I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lmediatek/telephony/MtkSignalStrength;->mPhoneId:I

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLevel:I

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkRsrpOnly:Z

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 127
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 128
    new-array v2, v1, [I

    iput-object v2, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRsrpThreshold:[I

    .line 129
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readIntArray([I)V

    goto :goto_0

    .line 131
    :cond_0
    iput-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRsrpThreshold:[I

    .line 133
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 134
    if-lez v1, :cond_1

    .line 135
    new-array v0, v1, [I

    iput-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRssnrThreshold:[I

    .line 136
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    goto :goto_1

    .line 138
    :cond_1
    iput-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRssnrThreshold:[I

    .line 140
    :goto_1
    return-void
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 163
    const-string v0, "MtkSignalStrength"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void
.end method

.method private blacklist updateMtkLteLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V
    .locals 12
    .param p1, "cc"    # Landroid/os/PersistableBundle;
    .param p2, "ss"    # Landroid/telephony/ServiceState;

    .line 257
    iget-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRsrpThreshold:[I

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkRsrpOnly:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRssnrThreshold:[I

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 261
    :cond_0
    iget-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRsrpThreshold:[I

    .line 262
    .local v0, "rsrpThresholds":[I
    iget-object v1, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRssnrThreshold:[I

    .line 263
    .local v1, "rssnrThresholds":[I
    iget-boolean v2, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkRsrpOnly:Z

    .line 265
    .local v2, "rsrpOnly":Z
    const/4 v3, 0x0

    .line 266
    .local v3, "rsrpBoost":I
    if-eqz p2, :cond_1

    .line 267
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getLteEarfcnRsrpBoost()I

    move-result v3

    .line 270
    :cond_1
    const/4 v4, 0x0

    .line 271
    .local v4, "rssiIconLevel":I
    const/4 v5, 0x0

    .line 272
    .local v5, "rsrpIconLevel":I
    const/4 v6, -0x1

    .line 274
    .local v6, "snrIconLevel":I
    iget-object v7, p0, Lmediatek/telephony/MtkSignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v7}, Landroid/telephony/CellSignalStrengthLte;->getRsrp()I

    move-result v7

    add-int/2addr v7, v3

    .line 276
    .local v7, "rsrp":I
    const/16 v8, -0x8c

    if-lt v7, v8, :cond_3

    const/16 v8, -0x2c

    if-le v7, v8, :cond_2

    goto :goto_1

    .line 279
    :cond_2
    array-length v5, v0

    .line 280
    :goto_0
    if-lez v5, :cond_4

    add-int/lit8 v8, v5, -0x1

    aget v8, v0, v8

    if-ge v7, v8, :cond_4

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 277
    :cond_3
    :goto_1
    const/4 v5, -0x1

    .line 283
    :cond_4
    const/4 v8, -0x1

    if-eqz v2, :cond_5

    .line 284
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateLevel() - rsrp = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lmediatek/telephony/MtkSignalStrength;->log(Ljava/lang/String;)V

    .line 285
    if-eq v5, v8, :cond_5

    .line 286
    iput v5, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLevel:I

    .line 287
    return-void

    .line 297
    :cond_5
    iget-object v9, p0, Lmediatek/telephony/MtkSignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v9}, Landroid/telephony/CellSignalStrengthLte;->getRssnr()I

    move-result v9

    .line 298
    .local v9, "rssnr":I
    const/16 v10, 0x12c

    if-le v9, v10, :cond_6

    .line 299
    const/4 v6, -0x1

    goto :goto_3

    .line 301
    :cond_6
    iget-object v10, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRssnrThreshold:[I

    array-length v6, v10

    .line 302
    :goto_2
    if-lez v6, :cond_7

    iget-object v10, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRssnrThreshold:[I

    add-int/lit8 v11, v6, -0x1

    aget v10, v10, v11

    if-ge v9, v10, :cond_7

    .line 303
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 306
    :cond_7
    :goto_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateLevel() - rsrp:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " snr:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " rsrpIconLevel:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " snrIconLevel:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " lteRsrpBoost:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lmediatek/telephony/MtkSignalStrength;->log(Ljava/lang/String;)V

    .line 311
    if-eq v6, v8, :cond_9

    if-eq v5, v8, :cond_9

    .line 317
    if-ge v5, v6, :cond_8

    move v8, v5

    goto :goto_4

    :cond_8
    move v8, v6

    :goto_4
    iput v8, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLevel:I

    .line 318
    return-void

    .line 321
    :cond_9
    if-eq v6, v8, :cond_a

    .line 322
    iput v6, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLevel:I

    .line 323
    return-void

    .line 326
    :cond_a
    if-eq v5, v8, :cond_b

    .line 327
    iput v5, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLevel:I

    .line 328
    return-void

    .line 331
    :cond_b
    iget-object v8, p0, Lmediatek/telephony/MtkSignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v8}, Landroid/telephony/CellSignalStrengthLte;->getRssi()I

    move-result v8

    .line 332
    .local v8, "rssi":I
    const/16 v10, -0x33

    if-le v8, v10, :cond_c

    const/4 v4, 0x0

    goto :goto_5

    .line 333
    :cond_c
    const/16 v10, -0x59

    if-lt v8, v10, :cond_d

    const/4 v4, 0x4

    goto :goto_5

    .line 334
    :cond_d
    const/16 v10, -0x61

    if-lt v8, v10, :cond_e

    const/4 v4, 0x3

    goto :goto_5

    .line 335
    :cond_e
    const/16 v10, -0x67

    if-lt v8, v10, :cond_f

    const/4 v4, 0x2

    goto :goto_5

    .line 336
    :cond_f
    const/16 v10, -0x71

    if-lt v8, v10, :cond_10

    const/4 v4, 0x1

    goto :goto_5

    .line 337
    :cond_10
    const/4 v4, 0x0

    .line 338
    :goto_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getLteLevel - rssi:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " rssiIconLevel:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lmediatek/telephony/MtkSignalStrength;->log(Ljava/lang/String;)V

    .line 340
    iput v4, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLevel:I

    .line 341
    return-void

    .line 259
    .end local v0    # "rsrpThresholds":[I
    .end local v1    # "rssnrThresholds":[I
    .end local v2    # "rsrpOnly":Z
    .end local v3    # "rsrpBoost":I
    .end local v4    # "rssiIconLevel":I
    .end local v5    # "rsrpIconLevel":I
    .end local v6    # "snrIconLevel":I
    .end local v7    # "rsrp":I
    .end local v8    # "rssi":I
    .end local v9    # "rssnr":I
    :cond_11
    :goto_6
    return-void
.end method

.method private blacklist useMtkLevel()Z
    .locals 1

    .line 182
    iget-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRsrpThreshold:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRssnrThreshold:[I

    if-eqz v0, :cond_1

    .line 184
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 185
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public whitelist test-api getLevel()I
    .locals 1

    .line 190
    invoke-direct {p0}, Lmediatek/telephony/MtkSignalStrength;->useMtkLevel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLevel:I

    return v0

    .line 191
    :cond_0
    invoke-super {p0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    return v0
.end method

.method public blacklist getLteLevel()I
    .locals 1

    .line 202
    invoke-super {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v0

    return v0
.end method

.method public blacklist getMtkLevel()I
    .locals 1

    .line 241
    iget v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLevel:I

    return v0
.end method

.method public blacklist getMtkLteRsrpThreshold()[I
    .locals 1

    .line 216
    iget-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRsrpThreshold:[I

    return-object v0
.end method

.method public blacklist getMtkLteRssnrThreshold()[I
    .locals 1

    .line 229
    iget-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRssnrThreshold:[I

    return-object v0
.end method

.method public blacklist getNrLevel()I
    .locals 1

    .line 249
    iget-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthNr;->getLevel()I

    move-result v0

    return v0
.end method

.method public blacklist isMtkRsrpOnly()Z
    .locals 1

    .line 208
    iget-boolean v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkRsrpOnly:Z

    return v0
.end method

.method public blacklist setMtkLteRsrpThreshold([I)V
    .locals 3
    .param p1, "threshold"    # [I

    .line 220
    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRsrpThreshold:[I

    goto :goto_1

    .line 222
    :cond_0
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRsrpThreshold:[I

    .line 223
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 224
    iget-object v1, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRsrpThreshold:[I

    aget v2, p1, v0

    aput v2, v1, v0

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method public blacklist setMtkLteRssnrThreshold([I)V
    .locals 3
    .param p1, "threshold"    # [I

    .line 232
    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRssnrThreshold:[I

    goto :goto_1

    .line 234
    :cond_0
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRssnrThreshold:[I

    .line 235
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 236
    iget-object v1, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRssnrThreshold:[I

    aget v2, p1, v0

    aput v2, v1, v0

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method public blacklist setMtkRsrpOnly(Z)V
    .locals 0
    .param p1, "a"    # Z

    .line 212
    iput-boolean p1, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkRsrpOnly:Z

    .line 213
    return-void
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .locals 2

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v1, ", phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmediatek/telephony/MtkSignalStrength;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    const-string v1, ", mMtkLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    const-string v1, ", mMtkRsrpOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkRsrpOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 175
    const-string v1, ", mMtkLteRsrpThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRsrpThreshold:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string v1, ", mMtkLteRssnrThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRssnrThreshold:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    return-object v0
.end method

.method public blacklist updateMtkLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p1, "cc"    # Landroid/os/PersistableBundle;
    .param p2, "ss"    # Landroid/telephony/ServiceState;

    .line 245
    invoke-direct {p0, p1, p2}, Lmediatek/telephony/MtkSignalStrength;->updateMtkLteLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    .line 246
    return-void
.end method

.method public whitelist test-api writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 147
    invoke-super {p0, p1, p2}, Landroid/telephony/SignalStrength;->writeToParcel(Landroid/os/Parcel;I)V

    .line 148
    iget v0, p0, Lmediatek/telephony/MtkSignalStrength;->mPhoneId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-boolean v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkRsrpOnly:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 151
    iget-object v0, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRsrpThreshold:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    array-length v0, v0

    .line 152
    .local v0, "size":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    if-lez v0, :cond_1

    iget-object v2, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRsrpThreshold:[I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 154
    :cond_1
    iget-object v2, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRssnrThreshold:[I

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    array-length v1, v2

    :goto_1
    move v0, v1

    .line 155
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    if-lez v0, :cond_3

    iget-object v1, p0, Lmediatek/telephony/MtkSignalStrength;->mMtkLteRssnrThreshold:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 157
    :cond_3
    return-void
.end method
